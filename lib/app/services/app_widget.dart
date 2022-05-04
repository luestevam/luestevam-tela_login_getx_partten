import 'package:flutter/material.dart';
import 'package:todo_list/app/modules/splash/auth/auth_mudule.dart';
import 'package:todo_list/app/modules/splash/splash_page.dart';

import '../core/database/sqlite_adm_connection.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      initialRoute: '/login',
      routes: {...AuthModule().routers},
      home: SplashPage(),
    );
  }
}