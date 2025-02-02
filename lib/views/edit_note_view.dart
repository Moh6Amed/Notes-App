import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_appbar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(
          pageTitle: 'Edit Note',
          iconText: 'Save',
          icon: Icons.check,
        ),
      ),
      body: ListView(
        children:const [
           SizedBox(height: 30),
           CustomTextField(hintName: 'Title'),
           SizedBox(height: 10),
          CustomTextField(
            hintName: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
