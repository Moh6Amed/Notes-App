import 'package:flutter/material.dart';

// part of 'notes_cubit.dart';
@immutable
abstract class AddNotesState {}

class AddNoteInitial extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesFailure extends AddNotesState {
  final String errMessage;
  AddNotesFailure(this.errMessage);
}
