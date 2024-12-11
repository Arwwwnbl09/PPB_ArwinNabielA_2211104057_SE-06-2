import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan14/view_model/counter_controller.dart';

class AddNotePage extends StatelessWidget {
  final NotesController notesController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text;
                final description = descriptionController.text;
                if (title.isNotEmpty && description.isNotEmpty) {
                  notesController.addNote(title, description);
                  Get.back();
                } else {
                  Get.snackbar('Error', 'Both fields are required',
                      snackPosition: SnackPosition.BOTTOM);
                }
              },
              child: Text('Save Note'),
            ),
          ],
        ),
      ),
    );
  }
}
