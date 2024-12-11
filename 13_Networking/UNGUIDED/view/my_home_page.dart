import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pertemuan14/view_model/counter_controller.dart';

class HomePage extends StatelessWidget {
  final NotesController notesController = Get.put(NotesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: notesController.notes.length,
            itemBuilder: (context, index) {
              final note = notesController.notes[index];
              return Card(
                child: ListTile(
                  title: Text(note['title'] ?? ''),
                  subtitle: Text(note['description'] ?? ''),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => notesController.deleteNoteAt(index),
                  ),
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Get.toNamed('/add'),
      ),
    );
  }
}
