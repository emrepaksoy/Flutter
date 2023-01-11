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
      // body: const Center(child: Text("Hello Flutter")),
      body: Stack(
        children: const [Background(), Center(child: Text("Hello Flutter"))],
      ),
      // body: Container(
      //   decoration: ProjectContainerDecoration(),
      //   child: Column(
      //     children: const [Center(child: Text("Hello Flutter"))],
      //   ),
      // ),

      //backgroundColor: Colors.amber,

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
        
        margin: const EdgeInsets.all(10),
        height: 100,
        decoration: ProjectContainerDecoration(),
        child: 
         Container(
         
          child:const BottomBar()),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      
          gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
    );
  }
}


class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      
      selectedFontSize: 15,
      unselectedFontSize: 10,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'button 1'),
        BottomNavigationBarItem(icon: Icon(Icons.usb), label: 'button 2'),
        
      ],
      unselectedItemColor: Colors.blueAccent,
      selectedItemColor: Colors.greenAccent,
      showSelectedLabels: true,

    );
  }
}
