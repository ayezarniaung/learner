import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learner/features/counter/presentation/bloc_observer.dart';
import 'package:learner/features/counter/presentation/page/counter_page.dart';
import 'package:learner/features/counter/presentation/page/counter_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const CounterObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: CounterPage(),
    );
  }
}
