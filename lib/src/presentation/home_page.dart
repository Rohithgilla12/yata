import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:yatp/src/actions/index.dart';
import 'package:yatp/src/containers/todos_container.dart';
import 'package:yatp/src/containers/user_container.dart';
import 'package:yatp/src/models/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static GlobalKey previewContainer = GlobalKey();
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      StoreProvider.of<AppState>(context).dispatch(const ListenForTodos.start());
    });
  }

  @override
  void dispose() {
    super.dispose();
    StoreProvider.of<AppState>(context).dispatch(const ListenForTodos.done());
  }

  Future<void> _onResult(AppAction action) async {
    if (action is CreateTodoSuccessful) {
      controller.clear();
      final RenderRepaintBoundary boundary = previewContainer.currentContext.findRenderObject();
      final ui.Image image = await boundary.toImage(pixelRatio: 2);

      final ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      StoreProvider.of<AppState>(context).dispatch(SetWallpaper(byteData));
    }
    if (action is CompleteTodoSuccessful) {
      final RenderRepaintBoundary boundary = previewContainer.currentContext.findRenderObject();
      final ui.Image image = await boundary.toImage(pixelRatio: 2);

      final ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      StoreProvider.of<AppState>(context).dispatch(SetWallpaper(byteData));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: UserContainer(
        builder: (BuildContext context, AppUser user) {
          return TodosContainer(
            builder: (BuildContext context, List<Todo> todos) {
              return Container(
                height: MediaQuery.of(context).size.height,
                child: RepaintBoundary(
                  key: previewContainer,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: ListView.builder(
                            itemCount: todos.length,
                            padding: const EdgeInsets.all(16.0),
                            itemBuilder: (BuildContext context, int index) {
                              final Todo todo = todos[index];
                              if (todo.status) {
                                return const SizedBox.shrink();
                              }
                              return ListTile(
                                leading: IconButton(
                                  onPressed: () {
                                    StoreProvider.of<AppState>(context).dispatch(CompleteTodo.start(
                                      todo: todo,
                                      result: _onResult,
                                    ));
                                  },
                                  icon: const Icon(Icons.check_box_outline_blank),
                                ),
                                title: Text(
                                  todo.text,
                                  style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
                                ),
                              );
                            },
                          ),
                        ),
                        TextField(
                          controller: controller,
                          textCapitalization: TextCapitalization.sentences,
                          maxLines: 1,
                          decoration: const InputDecoration(
                            filled: true,
                            hintText: 'Type your todo',
                          ),
                          onSubmitted: (String value) {
                            if (controller.text.isNotEmpty) {
                              StoreProvider.of<AppState>(context).dispatch(
                                CreateTodo.start(
                                  text: controller.text,
                                  result: _onResult,
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
