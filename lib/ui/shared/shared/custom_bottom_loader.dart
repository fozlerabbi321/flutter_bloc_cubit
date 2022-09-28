import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class CustomBottomLoader extends StatelessWidget {

  const CustomBottomLoader(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Dialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: SizedBox(
          height: 24.0,
          width: 24.0,
          child: Center(
              child: CircularProgressIndicator(
                  strokeWidth: 1.5,
                  valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor))),
        ),
      ),
    );
  }
}