import 'package:client/core/utils/constants/colors/color_constans.dart';
import 'package:client/core/utils/extensions/common_extension.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.labelText,
    this.isPassword = false,
    this.controller,
    this.errorText,
    this.onChanged,
    this.isSearch = false,
  });

  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final String? hintText;
  final String? labelText;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? errorText;
  final Function(String?)? onChanged;
  final bool? isSearch;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: widget.isPassword! ? !obscureText : obscureText,
      controller: widget.controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        errorText: widget.errorText,
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: widget.isPassword!
            ? GestureDetector(
                onTap: () {
                  if (widget.isPassword!) {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  }
                },
                child: !obscureText
                    ? Icon(
                        Icons.remove_red_eye,
                        color: ColorConstant.instance.grey,
                      )
                    : const Icon(Icons.visibility_off))
            : null,
        prefixIcon: widget.prefixIcon,
        contentPadding: EdgeInsets.symmetric(
            horizontal: context.dynamicWidth(0), vertical: 0),
      ),
    );
  }
}
