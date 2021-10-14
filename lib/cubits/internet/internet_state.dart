part of 'internet_cubit.dart';

abstract class InternetState extends Equatable {
  const InternetState();

  @override
  List<Object> get props => [];
}

class InternetLoading extends InternetState {}

class InternetWifi extends InternetState {
  final bool wifiConnected = true;

  @override
  List<Object> get props => [wifiConnected];
}

class InternetNotWifi extends InternetState {
  final bool wifiConnected = false;

  @override
  List<Object> get props => [wifiConnected];
}
