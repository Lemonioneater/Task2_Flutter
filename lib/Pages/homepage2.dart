import 'package:flutter/material.dart';
import  'package:task2_ahmedfaisal/Data/todoclass.dart';

int x = 0;
class Home2 extends StatefulWidget {
  final List<todoData> toDoo;
  final int IND;
  const Home2({super.key, required this.toDoo, required this.IND});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(child: Row(
        children: [
          Expanded(
            flex: 1, // 20%
            child: Container(color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 8, // 60%
            child: Container(color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Task ID : ${widget.toDoo[widget.IND+x].id}',
                      style:const TextStyle (fontSize: 24, fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('User ID : ${widget.toDoo[widget.IND+x].user_id}',
                      style:const TextStyle (fontSize: 24, fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text( 'Task: ${widget.toDoo[widget.IND+x].todo}',
                      style:const TextStyle (fontSize: 24, fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ),
                  widget.toDoo[widget.IND+x].completed
                      ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Status: Completed",
                      style:TextStyle (fontSize: 24, fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                      : const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Status: uncompleted",
                      style: TextStyle (fontSize: 24, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orangeAccent,
                          child: const Icon(Icons.remove,
                            color: Colors.white70,),
                          onPressed: () {
                            if (x + widget.IND > 0) {
                              x = x-1 ;
                            }
                            setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.orangeAccent,
                          child: const Icon(Icons.add,
                            color: Colors.white70,),
                          onPressed: () {
                            if (x + widget.IND < 29) {
                              x = x+1 ;
                            }
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 1, // 20%
            child: Container(color: Colors.blue,
            ),
            ),
        ],
      )
      ),
    );
  }
}

