import 'package:flutter/material.dart';
import  'package:task2_ahmedfaisal/Data/todoclass.dart';
import 'package:task2_ahmedfaisal/Pages/homepage2.dart';




class Lister extends StatelessWidget {
  final todoData toDo;
  final List<todoData> ListtoDo;
  const Lister({super.key, required this.toDo, required this.ListtoDo });


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff35F48F),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 3, color: Colors.black,
        ),
        boxShadow: const [BoxShadow(
          blurRadius: 15,
          color: Colors.white,
          spreadRadius: 1,
        ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text( 'User id: ',
                  style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 25, height: 25,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(child: Text(toDo.user_id.toString())),
              ),
              const Expanded(
                child: SizedBox(
                ),
              ),
              Container(
                width: 25,
                height: 25,
                child: FloatingActionButton(
                    backgroundColor: Colors.orangeAccent,
                    child: const Icon(Icons.add,
                      color: Colors.white70,),
                    onPressed: () {
                      x = 0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Home2(toDoo: ListtoDo,IND: toDo.id-1,)),
                      );
                    }
                ),
              ),
              const SizedBox(
                  width : 10
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text( 'Todo : ${toDo.todo}',
              style: const TextStyle( fontSize: 15, fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(child: SizedBox()),
          toDo.completed
              ? const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Status: Completed",),
          )
              : const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Status: uncompleted",),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(''
                      'https://nypost.com/wp-content/uploads/sites/2/2017/04/170404-happy-workers-feature.jpg?quality=75&strip=all'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(''
                      'https://t4.ftcdn.net/jpg/03/10/70/79/360_F_310707936_iickgWF7S3Gd3EXm6pyFCKA7gYSzI5Tr.jpg'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(''
                      'https://media.istockphoto.com/id/175174559/photo/happy-man-wishing-good-luck-isolated.jpg?s=1024x1024&w=is&k=20&c=Bdh-fY2YB0RUV7uWaBtE5-gWd256ILuNbfalGNttF0E='),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}