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
      "The operationCubit should emit a state of OperationState(number: 1) when increment() is called",
      build: () => operationsCubit,
      act: (cubit) => operationsCubit.incrementByOne(),
      expect: () => [OperationsState(number: 1)],
    );

    blocTest(
      "The operationCubit should emit a state of OperationState(number: -1) when decrement() is called",
      build: () => operationsCubit,
      act: (cubit) => operationsCubit.decrementByOne(),
      expect: () => [OperationsState(number: -1)],
    );
  });
}
