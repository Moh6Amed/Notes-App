import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/contstants.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_state.dart';
import 'package:notesapp/models/note_model.dart';

class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(AddNoteInitial());
  AddNote(NoteModel note) async {
    try {
      emit(AddNotesLoading());
      var notesBox = Hive.box(kNotesBox);
      await notesBox.add(note);
    } catch (e) {
      AddNotesFailure(e.toString());
    }
  }
}
