import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';

class CommonOtpField extends StatefulWidget {
  final int length;
  final void Function(String otp)? onCompleted;

  const CommonOtpField({
    super.key,
    this.length = 6,
    this.onCompleted,
  });

  @override
  State<CommonOtpField> createState() => _CommonOtpFieldState();
}

class _CommonOtpFieldState extends State<CommonOtpField> {
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    controllers =
        List.generate(widget.length, (_) => TextEditingController());
    focusNodes = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in controllers) {
      c.dispose();
    }
    for (final f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _onChanged(int index, String value) {
    if (value.isNotEmpty && index < widget.length - 1) {
      focusNodes[index + 1].requestFocus();
    }

    final otp = controllers.map((e) => e.text).join();
 if (!otp.contains('') &&
    controllers.every((c) => c.text.isNotEmpty) &&
    widget.onCompleted != null) {
  widget.onCompleted!(otp);
}

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.length, (index) {
        final isFilled = controllers[index].text.isNotEmpty;

        return Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1.2,
              color: isFilled
                  ? ColorManager.textPrimary
                  : ColorManager.whiteColor,
            ),
          ),
          child: TextField(
            controller: controllers[index],
            focusNode: focusNodes[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            style:  TextStyle(
              color: ColorManager.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            decoration: const InputDecoration(
              counterText: '',
              border: InputBorder.none,
            ),
            onChanged: (value) => _onChanged(index, value),
          ),
        );
      }),
    );
  }
}
