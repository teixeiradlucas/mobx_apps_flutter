import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_apps/controller/title_controller.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    required this.titleController,
    super.key,
  });

  final TitleController titleController;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Expanded(
          child: ListView.separated(
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(titleController.observeList[index].title),
                //onTap: null,
              );
            },
            separatorBuilder: (_, __) {
              return const Divider();
            },
            itemCount: titleController.observeList.length,
          ),
        );
      },
    );
  }
}
