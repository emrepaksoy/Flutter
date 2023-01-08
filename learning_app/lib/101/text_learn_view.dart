import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
    TextLearnView({super.key, this.userName});
  final String name = 'Emre Paksoy';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomColor)
              // style icin en dogru yontem theme üzerinden degerleri vermek
              ),
          Text("Hello $name ${name.length}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyle.textStyle),

          Text(userName ?? ''), // nullable olan değerler bu sekilde kullanılmalıdır.
          Text(keys.welcome)
         
        ],
      ),
    ));
  }
}

class ProjectStyle{
  static TextStyle textStyle = const TextStyle(
    decoration: TextDecoration.underline,
                  wordSpacing: 1,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: Colors.amber
  );
}

class ProjectColors{
  static Color welcomColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Hello Flutter World";
}