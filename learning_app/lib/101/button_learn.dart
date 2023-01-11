import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Save",
            //  style: Theme.of(context).textTheme.subtitle1,
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.green;
            }
            return Colors.white;
          })),
        ),

        ElevatedButton(
          onPressed: () {},
          child: const Text("data"),
        ),
        const ElevatedButton(
          onPressed: null,
          child: Text("elevated button"),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded)),
        FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
        OutlinedButton(onPressed: () {}, child: const Text("dat")),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const RoundedRectangleBorder()),
            onPressed: () {},
            child: const Text("dat2")),
        //const Text("data"),
        InkWell(onTap: () {}, child: const Text("data3")),
        Container(
          height: 100,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),

        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
            ),
            onPressed: () {},
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Place bid",
                  style: Theme.of(context).textTheme.headline5,
                )))
      ]),
    );
  }
}

// Borders:
// CİrcleBorder(), RoundedRectangleBorder()