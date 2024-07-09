import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];

  // reference the box
  final _box = Hive.box('mybox');

  // run this method if this is the first time the user is opening the app
  void createInitialData() {
    todoList = [
      ['Make Tutorials', false],
      ['Do Exercise', false],
    ];
  }

  //Load Data from the database
  void loadData() {
    todoList = _box.get("TODOLIST");
  }


  // update the data in the database
  void updateDataBase() {
    _box.put("TODOLIST", todoList);
  }
}
