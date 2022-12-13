import 'package:client/core/data/local/shared_prefs.dart';
import 'package:client/core/domain/models/todos/todo_model.dart';
import 'package:client/core/domain/models/user/user_model.dart';
import 'package:client/core/l10n/app_l10n.dart';
import 'package:client/core/views/sample_view/bloc/sample_bloc.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:logger/logger.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

import '../common/widgets/custom_appbar.dart';
import '../common/widgets/custom_button.dart';
import '../common/widgets/custom_navbar.dart';
import '../common/widgets/custom_textfield.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainBloc>(
      builder: (context, bloc, _) {
        return Scaffold(
            appBar: CustomAppBar.customAppBar(
                context: context,
                titleText: L10n.of(context)!.hello,
                isBackIcon: false),
            drawer: const Drawer(child: Text("data")),
            body: Column(
              children: [
                CustomElevatedButton(
                  onPressed: () {},
                  text: 'a',
                ),
                CustomTextFormField(
                  prefixIcon: Icons.account_circle,
                  labelText: L10n.of(context)!.apply,
                  passwordVisibility: true,
                ),
                SizedBox(
                  height: 200,
                  child: StreamBuilder<bool>(
                    stream: bloc.loading,
                    builder: (context, snapshot) {
                      return LoadingOverlay(
                        isLoading: snapshot.data ?? false,
                        child: StreamBuilder<List<TodoModel>>(
                          stream: bloc.todos,
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                child: ElevatedButton(
                                  onPressed: bloc.loadTodos,
                                  child: const Text('Load Todos'),
                                ),
                              );
                            }
                            final todos = snapshot.data!;
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                itemCount: todos.length,
                                itemBuilder: (context, index) {
                                  final t = todos[index];
                                  return ListTile(
                                      title: Text(t.title),
                                      subtitle: Text(t.description),
                                      onTap: () {
                                        bloc.deleteByIdTodo(t.id);
                                        bloc.loadTodos();
                                      });
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: StreamBuilder<bool>(
                    stream: bloc.loading,
                    builder: (context, snapshot) {
                      return LoadingOverlay(
                        isLoading: snapshot.data ?? false,
                        child: StreamBuilder<List<UserModel>>(
                          stream: bloc.users,
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return Center(
                                child: ElevatedButton(
                                  onPressed: bloc.loadUsers,
                                  child: const Text('Load users'),
                                ),
                              );
                            }
                            final users = snapshot.data!;
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  final user = users[index];
                                  return ListTile(
                                      trailing: IconButton(
                                        onPressed: () {
                                          SharedPrefs()
                                              .setStorageUsers(user.email);
                                          Logger().i(SharedPrefs()
                                              .getStorageUsers()
                                              .toString());
                                          bloc.loadUsers();
                                        },
                                        icon: const Icon(Icons.refresh_rounded),
                                      ),
                                      title: Text(user.email),
                                      subtitle: Text(user.id),
                                      onTap: () {
                                        bloc.deleteById(user.id);
                                        bloc.loadUsers();
                                      });
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            bottomNavigationBar: const CustomBottomNavBar());
      },
    );
  }
}
