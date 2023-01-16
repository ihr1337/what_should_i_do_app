part of 'keys_list_bloc.dart';

abstract class KeysListState extends Equatable {}

class KeysListInitial extends KeysListState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class KeysLoadingState extends KeysListState {
  @override
  List<Object?> get props => [];
}

class KeysLoadedState extends KeysListState {
  final List<KeysListModel> keys;
  KeysLoadedState(this.keys);
  @override
  List<Object?> get props => [keys];
}

class KeysErrorState extends KeysListState {
  final String error;
  KeysErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
