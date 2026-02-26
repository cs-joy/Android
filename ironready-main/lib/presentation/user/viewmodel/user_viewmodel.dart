
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../data/models/user_model.dart';
import '../../../../data/repositories/user_repository.dart';
import '../../../../data/sources/remote/user_api_service.dart';
import '../../../core/network/api_clients.dart';


final userViewModelProvider =
    StateNotifierProvider<UserViewModel, AsyncValue<List<UserModel>>>(
  (ref) => UserViewModel(
    repository: UserRepository(
      remoteSource: UserApiService(apiClient: ApiClient()),
    ),
  ),
);

class UserViewModel extends StateNotifier<AsyncValue<List<UserModel>>> {
  final UserRepository repository;

  UserViewModel({required this.repository}) : super(const AsyncValue.loading()) {
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      final users = await repository.getUsers();
      state = AsyncValue.data(users);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

