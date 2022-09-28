import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class CustomLoader extends StatelessWidget {

  const CustomLoader(
      {Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Dialog(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: SizedBox(
          height: 50.0,
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