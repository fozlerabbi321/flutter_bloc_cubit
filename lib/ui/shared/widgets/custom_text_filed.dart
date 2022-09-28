import 'package:flutter/material.dart';
import 'package:flutter_task/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatelessWidget {
  final TextEditingController? filedController;
  final String? hintText;
  final Function? onConfirm;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputAction? actionType;
  final bool absorbing;
  const CustomTextFiled({
    Key? key,
    this.filedController,
    this.hintText,
    this.suffixIcon,
    this.onConfirm,
    this.prefixIcon,
    this.actionType,
    this.absorbing = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: AbsorbPointer(
          absorbing: absorbing,
          child: TextFormField(
            autofocus: false,
            textAlign: TextAlign.left,
            cursorHeight: 20,
            style: GoogleFonts.balooDa2(
              fontSize: 16,
              color: kBlackColor,
                height: 1.0,
            ),
            controller: filedController,
            textInputAction: actionType,
            onFieldSubmitted: onConfirm as void Function(String)?,
            decoration: InputDecoration(
              errorStyle: const TextStyle(fontSize: 11, height: 0.3),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              prefixStyle: const TextStyle(
                fontSize: 16,
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintText: hintText,
              hintStyle: GoogleFonts.balooDa2(
                color: kSecondaryTextColor,
                height: 1.0,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              // hintStyle: kDescriptionText.copyWith(color: kWhiteColor),
              alignLabelWithHint: false,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }
}
