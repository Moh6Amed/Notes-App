import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ListView.builder(itemBuilder: (context, index) {
        return const NoteItem();
      }),
    );
  }
}
