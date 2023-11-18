// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tables_bloc.dart';

class TableState extends Equatable {
  final TableModel data;
  TableState({
    required this.data,
  });
  @override
  List<Object?> get props => [
        data,
      ];

  TableState copyWith({
    TableModel? data,
  }) {
    return TableState(
      data: data ?? this.data,
    );
  }
}
