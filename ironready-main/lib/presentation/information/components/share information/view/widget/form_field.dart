import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iron_ready/core/resource/constansts/color_manger.dart';
import 'package:iron_ready/core/resource/style_manager.dart';


class CommonFormField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CommonFormField({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
  });

  @override
  State<CommonFormField> createState() => _CommonFormFieldState();
}

class _CommonFormFieldState extends State<CommonFormField> {
  bool _isFocused = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 110.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.black.withOpacity(0.25),
        border: Border.all(
          color: _isFocused
              ? ColorManager.textPrimary
              : Colors.white54,
          width: 1.5,
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          validator: widget.validator,

          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,

          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),
          cursorColor: ColorManager.textPrimary,

          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText ,
            hintStyle: getRegular400Style14(
              color: Colors.white54,
              fontSize: 14.sp,
            ),

            isDense: true,
            contentPadding: EdgeInsets.zero, 
          ),
        ),
      ),
    );
  }
}

