import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';
import 'package:yatp/src/models/index.dart';

class TodoApi {
  TodoApi({
    @required FirebaseFirestore store,
  })  : assert(store != null),
        _store = store;

  final FirebaseFirestore _store;

  Future<void> createTodo({
    @required String text,
    @required String uid,
  }) async {
    final DocumentReference ref = _store.collection('todos').doc();
    final Todo todo = Todo((TodoBuilder b) {
      b
        ..id = ref.id
        ..uid = uid
        ..createdAt = DateTime.now()
        ..status = false
        ..text = text;
    });
    await ref.set(todo.json);
  }

  Future<void> completeTodo(Todo todo) async {
    todo = todo.rebuild((TodoBuilder b) => b.status = !b.status);
    await _store.doc('todos/${todo.id}').set(todo.json);
  }

  Stream<List<Todo>> listenForTodos(String uid) {
    return _store //
        .collection('todos')
        .where('uid', isEqualTo: uid)
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.docs //
            .map((DocumentSnapshot document) => Todo.fromJson(document.data()))
            .toList()
              ..sort());
  }
}
