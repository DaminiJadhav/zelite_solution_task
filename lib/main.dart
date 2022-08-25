import 'package:flutter/material.dart';
import 'package:zelite_solution_task/bloc/main_bloc.dart';
import 'package:zelite_solution_task/screen/my_home_page.dart';
import 'package:zelite_solution_task/service/web_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zelite_solution_task/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   BlocProvider(
          create: (context) {
            return MainBloc(webService: WebService());
          },
          child:MyHomePage()
      ),
    );
  }
}

