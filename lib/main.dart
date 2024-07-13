import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<Map<String, String >> tasks = [
    {"task": "Breakfast", "time": "10:00"},
    {"task": "Exercise", "time": "11:00"},
    {"task": "Read a book", "time": "12:00"},
    {"task": " shopping", "time": "1:00"},
    {"task": "Call mom", "time": "2:00"},
    {"task": "Play with soka", "time": "4:00"},
    {"task": "Clean room","time": "6:00"},
    {"task": "Work on project","time": "8:00"},
    {"task": "Go for a walk", "time": "10:00"},
    {"task": "sleep time", "time": "12:00"},
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( backgroundColor: Colors.blue[200],
        appBar: AppBar(backgroundColor: Colors.blue[200],
          title: Text(
            "Todo List",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (BuildContext context, int i) {
            return ListTile(
              title: Text("${tasks[i]["task"]}", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26, color: Colors.white) ,),
              subtitle: Text("${tasks[i]["time"]}",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white) ,),
              leading: CircleAvatar(backgroundColor: Colors.white,
                child: Text("${i + 1}"),
              ),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Delete",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                        content:
                            Text("Are you sure you want to delete this item?",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              print("Cancel");
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print("OK");
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "OK",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete),
                iconSize: 35,
                color: Colors.blue[400],
              ),
            );
          },
        ),
      ),
    );
  }
}
