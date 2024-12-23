import 'package:flutter/material.dart';
import 'package:notesapp/contstants.dart';
import 'package:notesapp/widgets/adding_note_with_bottom_sheet.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(),
      ),
      body: const NotesListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              context: context,
              builder: (context) {
                return const AddingNoteWithBottomSheet();
              });
        },
        child: const Icon(Icons.add),
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.black,
        shape: const CircleBorder(),
      ),
    );
  }
}
