import 'package:flutter/material.dart';
import 'package:app_links/app_links.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i9t App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AppLinks _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;

  String _latestUri = 'No URI received';
  String _error = '';
  bool _isLoading = false;

  final String backendUrl = "http://10.0.2.2:8000/auth/google/login";
  //final String backendUrl = "http://localhost:8000/auth/google/login";
  @override
  void initState() {
    super.initState();
    _handleIncomingLinks();
    _getInitialLink();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  // ============================
  // GOOGLE LOGIN FUNCTION
  // ============================
  Future<void> _loginWithGoogle() async {
    try {
      setState(() {
        _isLoading = true;
        _error = '';
      });

      final response = await http.get(Uri.parse(backendUrl));

      if (response.statusCode != 200) {
        throw Exception("Failed to get auth URL");
      }

      final data = jsonDecode(response.body);
      final authUrl = data['auth_url'];

      final Uri uri = Uri.parse(authUrl);

      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        throw Exception("Could not launch browser");
      }
    } catch (e) {
      setState(() {
        _error = "Login error: $e";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // ============================
  // DEEP LINK HANDLING
  // ============================
  Future<void> _handleIncomingLinks() async {
    _linkSubscription = _appLinks.uriLinkStream.listen(
      (Uri uri) {
        if (mounted) {
          setState(() {
            _latestUri = uri.toString();
          });

          _processUri(uri);
        }
      },
      onError: (err) {
        if (mounted) {
          setState(() {
            _error = 'Error handling link: $err';
          });
        }
      },
    );
  }

  Future<void> _getInitialLink() async {
    try {
      final Uri? initialUri = await _appLinks.getInitialLink();
      if (initialUri != null && mounted) {
        setState(() {
          _latestUri = initialUri.toString();
        });

        _processUri(initialUri);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = 'Error getting initial link: $e';
        });
      }
    }
  }

  void _processUri(Uri uri) {
    // Example: myapp://auth?token=xyz
    if (uri.queryParameters.containsKey('token')) {
      final token = uri.queryParameters['token'];
      print("Received JWT Token: $token");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Google Sign-In Successful")),
      );
    }

    // Existing demo routes
    if (uri.pathSegments.isNotEmpty) {
      final section = uri.pathSegments.first;

      if (section == 'profile') {
        final profileId = uri.pathSegments.length > 1
            ? uri.pathSegments[1]
            : '';
        print("Navigate to profile: $profileId");
      } else if (section == 'product') {
        final productId = uri.pathSegments.length > 1
            ? uri.pathSegments[1]
            : '';
        print("Navigate to product: $productId");
      }
    }
  }

  // ============================
  // UI
  // ============================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('i9t App - Deep Linking Demo')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Deep Linking Demo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              // ================= GOOGLE BUTTON =================
              SizedBox(
                width: 280,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _loginWithGoogle,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //Image.asset('assets/google.png', height: 22),
                            const SizedBox(width: 10),
                            const FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                              size: 20,
                            ),
                          ],
                        ),
                ),
              ),

              const SizedBox(height: 40),

              const Text('Latest URI:', style: TextStyle(fontSize: 18)),

              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(_latestUri, style: const TextStyle(fontSize: 16)),
              ),

              if (_error.isNotEmpty) ...[
                const SizedBox(height: 20),
                Text(
                  _error,
                  style: const TextStyle(fontSize: 14, color: Colors.red),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
