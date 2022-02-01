part of 'example_bloc.dart';

@immutable
class ExampleState {
  const ExampleState({
    required this.value,
  });
  final int value;

  ExampleState copyWith({
    int? value,
  }) {
    return ExampleState(
      value: value ?? this.value,
    );
  }
}
