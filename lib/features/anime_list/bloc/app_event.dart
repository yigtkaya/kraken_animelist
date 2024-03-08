part of 'app_bloc.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class AppStartEvent extends AppEvent {
  const AppStartEvent();
}

class PullToRefreshEvent extends AppEvent {
  const PullToRefreshEvent();
}
