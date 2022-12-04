import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import '../bin/repository/todo_repository.dart';


void main() {
  final repository = TodoRepository();

  test('deve trazer uma lista de Todo', () async {
    final list = await repository.fetchTodos();
    print(list[0].title);
    expect(list[1].title, "quis ut nam facilis et officia qui");
  });
}
