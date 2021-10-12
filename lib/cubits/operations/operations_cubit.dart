import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'operations_state.dart';

class OperationsCubit extends Cubit<OperationsState> {
  OperationsCubit() : super(OperationsState(number: 0));

  void incrementByOne() {
    emit(OperationsState(number: state.number + 1));
  }

  void incrementByTwo() {
    emit(OperationsState(number: state.number + 2));
  }

  void decrementByOne() {
    emit(OperationsState(number: state.number - 1));
  }

  void decrementByTwo() {
    emit(OperationsState(number: state.number - 2));
  }
}
