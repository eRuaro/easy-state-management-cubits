part of 'operations_cubit.dart';

class OperationsState extends Equatable {
  OperationsState({required this.number});

  int number;

  @override
  List<Object> get props => [this.number];
}

