import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/pages/pomodoro.dart';
import 'package:pomodoro_flutter/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (_) => PomodoroStore()),
      ],
      child: MaterialApp(
        title: 'Flutter Pomodoro',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const Pomodoro(),
      ),
    );
  }
}
