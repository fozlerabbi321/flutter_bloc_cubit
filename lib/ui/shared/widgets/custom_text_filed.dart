import 'package:flutter/material.dart';
import 'package:flutter_task/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatelessWidget {
  final TextEditingController filedController;

  const CustomTextFiled({
    Key? key,
    required this.filedController,
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
          onChanged: (value) {},
          decoration: InputDecoration(
            hintText: "কাঙ্ক্ষিত পণ্যটি খুঁজুন",
            hintStyle: GoogleFonts.balooDa2(
              color: kSecondaryTextColor,
                height: 1.0,
            ),

            fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: 10),
              // hintStyle: kDescriptionText.copyWith(color: kWhiteColor),
              alignLabelWithHint: false,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
             // alignLabelWithHint: false,
            suffixIcon: const Icon(Icons.search, color: kSecondaryTextColor,)
          ),
        ),
      ),
    );
  }
}
