import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'operations_state.dart';

class OperationsCubit extends Cubit<OperationsState> {
  OperationsCubit() : super(OperationsState(number: 0));

  void increment() {
    emit(OperationsState(number: state.number++));
  }

  void decrement() {
    emit(OperationsState(number: state.number--));
  }
}
