part of 'keys_list_bloc.dart';

@immutable
abstract class KeysListEvent extends Equatable {
  const KeysListEvent();

  @override
  List<Object?> get props => [];
}

class LoadKeysEvent extends KeysListEvent {
  @override
  List<Object?> get props => [];
}
