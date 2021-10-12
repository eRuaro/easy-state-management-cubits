import 'package:cubit_state_management/cubits/internet/cubit/internet_cubit.dart';
import 'package:cubit_state_management/cubits/operations/operations_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OperationsScreen extends StatefulWidget {
  @override
  State<OperationsScreen> createState() => _OperationsScreenState();
}

class _OperationsScreenState extends State<OperationsScreen> {
  late bool wifiConnectivity;

  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      listener: (context, state) {
        if (state is InternetWifi) {
          wifiConnectivity = true;
        } else {
          wifiConnectivity = false;
        }
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<OperationsCubit, OperationsState>(
              builder: (context, state) {
                // Should a return a widget that depends only on the state and context
                if (state.number % 2 == 0) {
                  return Text(
                    "even steven: ${state.number}",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  );
                }

                return Text(
                  state.number.toString(),
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    wifiConnectivity
                        ? BlocProvider.of<OperationsCubit>(context)
                            .decrementByOne()
                        : BlocProvider.of<OperationsCubit>(context)
                            .decrementByTwo();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    wifiConnectivity
                        ? BlocProvider.of<OperationsCubit>(context)
                            .incrementByOne()
                        : BlocProvider.of<OperationsCubit>(context)
                            .incrementByTwo();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
