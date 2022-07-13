import 'package:doos/constant/constant.dart';
import 'package:doos/constant/custom_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/text_formatter.dart';

class CustomInPutField extends StatefulWidget {
  final TextEditingController? fieldController;
  final String? fieldName;
  final TextCapitalization? textCapitalization;
  final String? hint;
  final TextInputType? fieldInputType;
  final bool? enabled;
  final Color? bgColor;
  final int? maxLines;
  final int? maxLength;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String?>? onChange;
  final ValueChanged<String?>? onSave;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final double? contentpadding;
  final Color? cursorcolor;
  final TextStyle? hintStyle;
  final double? cursorHeight;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatter;
  final bool autofocus;

  const CustomInPutField({
    Key? key,
    this.fieldName,
    this.textCapitalization,
    this.bgColor,
    this.fieldInputType,
    this.fieldController,
    this.enabled,
    this.maxLines,
    this.maxLength,
    this.validator,
    this.onTap,
    this.onSave,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText,
    this.contentpadding,
    this.onChange,
    this.cursorcolor,
    this.hintStyle,
    this.cursorHeight,
    this.errorText,
    this.inputFormatter,
    required this.autofocus,
  }) : super(key: key);

  @override
  _CustomInPutFieldState createState() => _CustomInPutFieldState();
}

class _CustomInPutFieldState extends State<CustomInPutField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      height: AppConstants.displayHeight(context) / 12,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
          autofocus: widget.autofocus,
          inputFormatters: widget.inputFormatter,
          style: TextStyle(fontSize: 16),
          cursorColor: widget.cursorcolor,
          cursorHeight: widget.cursorHeight,
          controller: widget.fieldController,
          keyboardType: widget.fieldInputType ?? TextInputType.text,
          textInputAction: TextInputAction.next,
          textCapitalization:
              widget.textCapitalization ?? TextCapitalization.none,
          enabled: widget.enabled ?? true,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          validator: widget.validator ?? null,
          obscureText: widget.obscureText ?? false,
          onTap: widget.onTap ?? null,
          onChanged: widget.onChange ?? null,
          onSaved: widget.onSave ?? null,
          decoration: InputDecoration(
            errorText: widget.errorText,
            hintStyle: widget.hintStyle,
            border: InputBorder.none,
            hintText: widget.hint ?? "",
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            isDense: true,
          )),
      // padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: CustomAppTheme.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: CustomAppTheme.grey.withOpacity(0.2),
              offset: Offset(0, 6),
              blurRadius: 9,
              spreadRadius: 3),
        ],
      ),
    );
  }
}
