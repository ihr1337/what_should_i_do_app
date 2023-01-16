import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:what_should_i_do/data/repositories/repositories.dart';

import '../../../data/models/keys_list_model.dart';

part 'keys_list_event.dart';
part 'keys_list_state.dart';

class KeysListBloc extends Bloc<KeysListEvent, KeysListState> {
  late final KeysListRepository _keysListRepository;

  KeysListBloc(this._keysListRepository) : super(KeysListInitial()) {
    on<KeysListEvent>((event, emit) async {
      emit(KeysListInitial());
      try {
        final keys = await _keysListRepository.getKeys();
        emit(KeysLoadedState(keys));
      } catch (e) {
        emit(KeysErrorState(e.toString()));
      }
    });
  }
}
