import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows/bloc/validate_bloc.dart';
import 'page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ValidateBloc(),
      child: MaterialApp(
        title: 'Login',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
