import 'dart:html';

import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 50),
          ),
          Container(
            //  height: 50,
              constraints: const BoxConstraints(
                  maxWidth: 200, minWidth: 100, minHeight: 50, maxHeight: 150),
              child:  Text('aa' * 125, maxLines: 2,),
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(10),
              decoration: ProjectUtility.boxDecoration

              // BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //     //color: Colors.red,
              //     gradient:
              //         const LinearGradient(colors: [Colors.red, Colors.orange]),
              //     boxShadow: const [
              //       BoxShadow(
              //           color: Colors.green,
              //           offset: Offset(0.1, 1),
              //           blurRadius: 12)
              //     ],
              //     border: Border.all(width: 10, color: Colors.white12)),
              )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      //color: Colors.red,
      gradient: const LinearGradient(colors: [Colors.red, Colors.orange]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
      ],
      border: Border.all(width: 10, color: Colors.white12));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            //color: Colors.red,
            gradient: const LinearGradient(colors: [Colors.red, Colors.orange]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
