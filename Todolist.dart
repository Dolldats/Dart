import 'dart:io';

void main() {
  List<String> todolist = [];

  while (true) {
    print("Pick Your Choice");
    print("1. View all task");
    print("2. Add new task");
    print("3. Delete task");
    print("4. Exit");

    var option = stdin.readLineSync();

    switch (option) {
      case '1':
        viewTask(todolist);
        break;
      case '2':
        addTask(todolist);
        break;
      case '3':
        deleteTask(todolist);
        break;
      case '4':
        exit(0);
      default:
        print("invalid input");
    }
  }
}

void viewTask(List<String> todolist) {
  if (todolist.isEmpty) {
    print("No Tasks Found");
  } else {
    print("Your Tasks : ");

    for (int i = 0; i < todolist.length; i++) {
      print("${i + 1}. ${todolist[i]}");
    }
  }
}

void addTask(List<String> todolist) {
  print("Enter your task : ");
  var task = stdin.readLineSync();

  if (task != null && task.isNotEmpty) {
    todolist.add(task);
    print("Task Added!!!");
  } else {
    print("Task Cannot be empty");
  }
}

void deleteTask(List<String> todolist) {
  if (todolist.isEmpty) {
    print("No tasks to be deleted");
  }

  print("Enter  ");
  var input = stdin.readLineSync();

  int? taskNumber = int.parse(input ?? " ");

  if (taskNumber == null || taskNumber <= 0 || taskNumber > todolist.length) {
    print("Invalid task number. ");
  } else {
    todolist.removeAt(taskNumber - 1);
    print("Task deleted successfully! ");
  }
}
