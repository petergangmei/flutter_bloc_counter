import 'package:bloc_test_app/ui/views/home_page.dart';
import 'package:flutter/material.dart';

import 'blocs/bloc_imports.dart';
import 'blocs/counter_bloc/counter_bloc.dart';
import 'blocs/task_bloc/task_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
