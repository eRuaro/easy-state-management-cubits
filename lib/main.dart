import 'package:cubit_state_management/cubits/operations/operations_cubit.dart';
import 'package:cubit_state_management/screens/operations_screen.dart';
import 'package:cubit_state_management/screens/registration_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OperationsCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/operations",
        routes: {
          "/": (context) => RegistrationScreen(),
          "/operations": (context) => OperationsScreen(),
        },
      ),
    );
  }
}
