part of 'operations_cubit.dart';

// This class will be the blueprint for all possible states
class OperationsState extends Equatable {
  // number must be valid at all times, thus annotating with the required keyword
  OperationsState({required this.number});

  int number;

  @override
  List<Object> get props => [this.number];
}

