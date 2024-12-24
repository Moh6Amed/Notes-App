import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_fieled.dart';

class AddingNoteWithBottomSheet extends StatelessWidget {
  const AddingNoteWithBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            CustomTextField(
              hintName: 'Title',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              hintName: 'Content',
              maxLines: 8,
            ),
            const SizedBox(height: 20),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
