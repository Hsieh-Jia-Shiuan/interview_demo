part of 'record_expansion_change_cubit.dart';

@freezed
class RecordExpansionChangeState with _$RecordExpansionChangeState {
  const factory RecordExpansionChangeState.initial() = _Initial;
  const factory RecordExpansionChangeState.changing() = _Changing;
  const factory RecordExpansionChangeState.changed() = _Changed;
}
