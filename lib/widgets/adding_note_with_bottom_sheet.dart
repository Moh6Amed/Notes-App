import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddingNoteWithBottomSheet extends StatelessWidget {
  const AddingNoteWithBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, suptitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 10),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hintName: "title",
          ),
          const SizedBox(height: 10),
          CustomTextField(
            onSaved: (value) {
              suptitle = value;
            },
            hintName: "Content",
            maxLines: 8,
          ),
          const SizedBox(height: 20),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
