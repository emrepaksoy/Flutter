import 'package:flutter/material.dart';
import 'package:learning_app/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scaffold Learning',
        ),
        centerTitle: true,
      ),
      body: const Center(child: Text("Hello Flutter")),
      backgroundColor: Colors.amber,
      extendBody: true,
      //floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      //bottomSheet: const Text('data'),
      bottomNavigationBar: Container(
        height: 200,
        decoration:ProjectContainerDecoration(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: 'button 1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_outlined), label: 'button 2')
          ],
        ),
      ),
    );
  }
}
