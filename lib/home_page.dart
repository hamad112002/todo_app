import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController taskNameController = TextEditingController();

  TextEditingController updateController = TextEditingController();

  List<String> myList = [];

  addValue() {
    setState(() {
      if (taskNameController.text.isNotEmpty) {
        myList.add(taskNameController.text);
        taskNameController.clear();
      }
    });
  }

  removeValue(index) {
    setState(() {
      myList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todo App", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff71CEBD),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff71CEBD),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(
                        myList[index],
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: Wrap(
                        children: [
                          IconButton(
                            onPressed: () {
                              removeValue(index);
                            },
                            icon: Icon(Icons.delete, color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              updateController.text = myList[index];
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Update Task"),
                                    content: TextField(
                                      controller: updateController,
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            myList[index] = updateController.text;
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: Text("Update"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.edit, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // The text field and add button at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskNameController,
                    decoration: InputDecoration(
                      labelText: "Task here",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xff71CEBD))
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xff71CEBD))
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // borderSide: BorderSide(color: Color(0xFF4A90E2))
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: addValue,
                  child: Icon(Icons.add, color: Colors.white),
                  backgroundColor: Color(0xff71CEBD),
                  // foregroundColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
