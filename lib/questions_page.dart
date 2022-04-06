import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({Key? key}) : super(key: key);

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Alguma pergunta?"),
        centerTitle: true,
        elevation: 0,
      ),
      body: MainEvents(),
    );
  }
}

class MainEvents extends StatelessWidget {
  const MainEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _EventsListView(context);
  }
}

Widget _EventsListView(BuildContext context) {
  // backing data
  final mainEvents = [
    "Workshop 1",
    "Workshop 2",
    "Workshop 3",
    "Workshop 4",
    "Workshop 5"
  ];

  TextEditingController questionController = TextEditingController();
  String question = '';

  return Row(
      children: 
      [ListView.separated(
        itemCount: mainEvents.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mainEvents[index]),
            trailing: 
                SizedBox(
                  width: 40,
                  child: TextField(
                    controller: questionController,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Faça sua pergunta."
                  ),
                ),
               )
              );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    ],
  
  );
}
