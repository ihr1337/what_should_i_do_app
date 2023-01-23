import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../data/models/activity_model.dart';
import '../../../domain/use_cases/get_activity.dart';

part 'keys_list_event.dart';
part 'keys_list_state.dart';

class KeysListBloc extends Bloc<KeysListEvent, KeysListState> {
  final GetActivity getActivity;

  KeysListBloc(this.getActivity) : super(KeysListInitial()) {
    on<LoadKeysEvent>((event, emit) async {
      await _getActivities(event, emit);
    });
    on<KeysListEvent>((event, emit) async {});
  }

  Future<void> _getActivities(
    LoadKeysEvent event,
    Emitter<KeysListState> emit,
  ) async {
    try {
      var activityResult = await getActivity(NoParams());
      activityResult.getData().fold((error) {
        print(error);
      }, (activity) {
        print(activity);
        emit(KeysLoadedState(activity));
      });
    } catch (e) {
      emit(
        KeysErrorState(
          e.toString(),
        ),
      );
    }
  }
}
