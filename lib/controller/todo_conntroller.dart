import '../utils/common_dependencies.dart';

class ToDoController extends GetxController {
  final todoList = <dynamic>[].obs;

  @override
  void onInit() {
    List<dynamic> getFromStorage = storage.read<List<dynamic>>('todo') ?? [];
    todoList(getFromStorage);
    super.onInit();
  }

  void addNewTask(String task) {
    todoList.insert(
      0,
      {
        'task': task,
        'done': false,
      },
    );
    todoList.refresh();
    storage.write('todo', todoList);
  }

  void updateTask(int index, bool val) {
    todoList[index]['done'] = val;
    todoList.refresh();
    storage.write('todo', todoList);
  }

  void deleteTask(int index) {
    todoList.removeAt(index);
    todoList.refresh();
    storage.write('todo', todoList);
  }
}
