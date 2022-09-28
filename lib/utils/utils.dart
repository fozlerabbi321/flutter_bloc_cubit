import 'package:html/parser.dart';

class Utils{
  String htmlToString(String htmlString) {
    final document = parse(htmlString);
    final String string = parse(document.body!.text).documentElement!.text;
    return string;
  }
}