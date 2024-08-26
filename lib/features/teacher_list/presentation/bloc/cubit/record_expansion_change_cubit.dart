import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_expansion_change_state.dart';
part 'record_expansion_change_cubit.freezed.dart';

class RecordExpansionChangeCubit extends Cubit<RecordExpansionChangeState> {
  RecordExpansionChangeCubit() : super(const RecordExpansionChangeState.initial());

  Map<int, bool> expansion = {};

  void init({required int totalCount}) {
    for (int i = 0; i < totalCount; i++) {
      expansion[i] = false;
    }
  }

  void change({required int index, required bool status}) {
    emit(const RecordExpansionChangeState.changing());
    expansion[index] = status;
    emit(const RecordExpansionChangeState.changed());
  }

  bool getExpansion({required int index}) {
    return expansion[index] ?? false;
  }
}
