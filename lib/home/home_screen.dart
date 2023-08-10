import 'package:flutter/material.dart';
import 'package:mobx_apps/app_counter/screens/counter_screen.dart';
import 'package:mobx_apps/app_formulario_reativo/screens/formulario_screen.dart';
import 'package:mobx_apps/app_list_name/screens/list_screen.dart';
import 'package:mobx_apps/app_login/screens/login_screen.dart';
import 'package:mobx_apps/app_todo_list/screens/todo_screen.dart';
import 'package:mobx_apps/widgets/appbar_widget.dart';
import 'package:mobx_apps/widgets/button_navigator_widget.dart';
import 'package:mobx_apps/widgets/space_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(
        'Apps Mobx',
        Colors.white,
      ),
      body: const Center(
        child: Column(
          children: [
            SpaceWidget(),
            ButtonNavigator(
              text: 'Form',
              widget: FormScreen(),
            ),
            SpaceWidget(),
            ButtonNavigator(
              text: 'Login',
              widget: LoginScreen(),
            ),
            SpaceWidget(),
            ButtonNavigator(
              text: 'Counter',
              widget: CouterScreen(),
            ),
            SpaceWidget(),
            ButtonNavigator(
              text: 'TodoList',
              widget: TodoScreen(),
            ),
            SpaceWidget(),
            ButtonNavigator(
              text: 'List Name',
              widget: ListScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
