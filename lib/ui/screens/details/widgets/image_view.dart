import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String imgLink;
  const ImageView({Key? key, required this.imgLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.zero,
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
            width: 1000,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.network(imgLink, fit: BoxFit.contain,),
          );
  }
}
