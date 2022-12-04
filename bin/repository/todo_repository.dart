import 'package:dio/dio.dart';
import '../models/todo_model.dart';

main() {
  final repository = TodoRepository();
  print(repository);
}

class TodoRepository {
  late Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  TodoRepository([Dio? client]) : dio = client ?? Dio();


  Future<List<Todo>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => Todo.fromJson(json)).toList();
  }
}
