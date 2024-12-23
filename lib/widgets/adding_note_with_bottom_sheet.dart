import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_fieled.dart';

class AddingNoteWithBottomSheet extends StatelessWidget {
  const AddingNoteWithBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieled(
          hintName: 'Title',
        ),
        CustomTextFieled(
          hintName: 'Content',
          maxLines: 8,
        ),
      ],
    );
  }
}
