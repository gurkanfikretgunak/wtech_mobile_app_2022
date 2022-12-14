import 'package:client/core/constants/color_constans.dart';
import 'package:client/core/extensions/extension.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.labelText,
    this.isPassword = false,
  });

  final IconData? suffixIcon;
  final IconData? prefixIcon;

  final String? hintText;
  final String? labelText;
  final bool? isPassword;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword! ? !obscureText : obscureText,
      decoration: InputDecoration(
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
        prefixIcon: Icon(widget.prefixIcon),
        contentPadding: EdgeInsets.symmetric(horizontal: context.dynamicWidth(0), vertical: 0),
      ),
    );
  }
}
