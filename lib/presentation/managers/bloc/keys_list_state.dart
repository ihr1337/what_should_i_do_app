part of 'keys_list_bloc.dart';

abstract class KeysListState extends Equatable {}

class KeysListInitial extends KeysListState {
  @override
  List<Object?> get props => [];
}

class KeysLoadingState extends KeysListState {
  @override
  List<Object?> get props => [];
}

class KeysLoadedState extends KeysListState {
  final ActivityModel activity;
  KeysLoadedState(this.activity);

  String get activities => activity.activity.toString();
  @override
  List<Object?> get props => [activity];
}

class KeysErrorState extends KeysListState {
  final String error;
  KeysErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
