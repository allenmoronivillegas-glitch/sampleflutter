import 'package:flutter/material.dart';

class Activity1 extends StatefulWidget {
  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
  // const Activity1({super.key});

  var textmenustyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold ,
      color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Activity 1 Page"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          const Text("Dashboard",
          style: TextStyle(fontSize: 30, color: Colors.black),),
          Row(
            children: [
              Container(
                height: 20,
                width: 50,
                color: Colors.green,
                child: const Center(child: Text("Menu 1", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold ,
                    color: Colors.black)),
              )),
              Container(
                height: 20,
                width: 50,
                color: Colors.blue,
                child: const Center(child: Text("Menu 2", style: TextStyle(color: Colors.black)),
              )),
              Container(
                height: 20,
                width: 50,
                color: Colors.yellow,
                child: const Center(child: Text("Menu 3", style: TextStyle(color: Colors.black))),
              ),
             ],
           ),
          Container(
    color: Colors.grey[300],
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text("Post 1", style: TextStyle(fontSize: 20)),

    const Text(
    "Lorem ipsum sit amet, consectatur adipiscing elit"
    "sed do eiusod empor incisdnt ut labore et delore masna alitque"
    "Ut enim minim venim, guis nosntrsud exerxitation ullamxco laboris"),
    ],
    ),
    ),
          Container(
    color: Colors.cyan[300],
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text("Post 1", style: TextStyle(fontSize: 20)),

    const Text(
    "Lorem ipsum sit amet, consectatur adipiscing elit"
    "sed do eiusod empor incisdnt ut labore et delore masna alitque"
    "Ut enim minim venim, guis nosntrsud exerxitation ullamxco laboris"),
    ],
    ),
    ),
          Container(
    color: Colors.grey[300],
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text("Post 1", style: TextStyle(fontSize: 20)),

    const Text(
    "Lorem ipsum sit amet, consectatur adipiscing elit"
    "sed do eiusod empor incisdnt ut labore et delore masna alitque"
    "Ut enim minim venim, guis nosntrsud exerxitation ullamxco laboris"),
    ],
    ),
    ),
    ]
      )
    );}
}
