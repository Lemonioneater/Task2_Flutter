import 'package:flutter/material.dart';
import 'package:task2_ahmedfaisal/Data/todoclass.dart';
import 'package:task2_ahmedfaisal/Widgets//displayers.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<List<todoData>> getinfo() async {
    final response =
    await http.get(Uri.parse('https://dummyjson.com/todos'));
    List<todoData> TodosList = [];

    if (response.statusCode == 200) {
      var jsonResponse =
      convert.jsonDecode(response.body) as Map<String, dynamic>;
      for (var item in jsonResponse['todos']) {
        TodosList.add(todoData.fromJson(item));
      }
    }
    return TodosList;
  }

  List<todoData> TODOS = [
  ];

@override
void initState() {
  Future.delayed(Duration.zero, () async {
    var data = await getinfo();
    setState(() {
      TODOS = data;
    });
  });
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xffF76E89),
        appBar : AppBar(
          title: Text('Tasks'),
          centerTitle: true,
          backgroundColor: Colors.red[700],
          ),
        body : SafeArea(
        child:
          GridView.builder(
            itemCount: TODOS.length,
            itemBuilder: (BuildContext context, int index) {
              return Lister(toDo: TODOS[index],ListtoDo: TODOS,);
            },
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (1/1.22)
            ),
          ),
        ),
    );
  }

}



