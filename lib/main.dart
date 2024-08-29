import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mental_health_course/theme/theme.dart';
import 'package:mental_health_course/views/home_screen/home_screen.dart';
import 'package:mental_health_course/widgets/bottom_nav_bar/bloc/navigation_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Mental Health App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightheme,
        home: HomeScreen(),
      ),
    );
  }
}
