import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  final String title;

  const NotFound({
    Key? key,
    this.title = 'No data available',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
