import 'package:cubit_state_management/cubits/internet/cubit/internet_cubit.dart';
import 'package:cubit_state_management/cubits/operations/operations_cubit.dart';
import 'package:cubit_state_management/screens/operations_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OperationsCubit(),
        ),
        BlocProvider(
          create: (context) => InternetCubit(connectivity: Connectivity()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OperationsScreen(),
      ),
    );
  }
}
