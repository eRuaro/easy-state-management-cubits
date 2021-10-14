import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:cubit_state_management/cubits/operations/operations_cubit.dart';

void main() {
  group(OperationsCubit, () {
    late OperationsCubit operationsCubit;

    setUp(() {
      operationsCubit = OperationsCubit();
    });

    // What happens after tests finished
    tearDown(() {
      operationsCubit.close();
    });

    // Tests initial state
    test("Initial state of operationCubit is OperationState(number: 0)", () {
      expect(operationsCubit.state, OperationsState(number: 0));
    });

    blocTest(
      "The operationCubit should emit a state of OperationState(number: 1) when incrementByOne() is called",
      build: () => operationsCubit,
      act: (cubit) => operationsCubit.incrementByOne(),
      expect: () => [OperationsState(number: 1)],
    );

    blocTest(
      'The operationCubit should emit a state of OperationState(number: 10) when incrementByOne is called and current state is OperationState(number: 9)',
      build: () => operationsCubit,
      seed: () => OperationsState(number: 9),
      act: (cubit) => operationsCubit.incrementByOne(),
      expect: () => [OperationsState(number: 10)],
    );

    blocTest(
      "The operationCubit should emit a state of OperationState(number: -1) when decrementByOne() is called",
      build: () => operationsCubit,
      act: (cubit) => operationsCubit.decrementByOne(),
      expect: () => [OperationsState(number: -1)],
    );

    blocTest(
      "The operationCubit should emit a state of OperationState(number: 2) when incrementByTwo() is called",
      build: () => operationsCubit,
      act: (cubit) => operationsCubit.incrementByTwo(),
      expect: () => [OperationsState(number: 2)],
    );

    blocTest(
      "The operationCubit should emit a state of OperationState(number: -2) when decrementByTwo() is called",
      build: () => operationsCubit,
      act: (cubit) => operationsCubit.decrementByTwo(),
      expect: () => [OperationsState(number: -2)],
    );
  });
}
