import 'package:flutter/material.dart';
import '../../controllers/note_controller.dart';
import '../../controllers/todo_controller.dart';

class ResultsScreen extends StatelessWidget {
  final todoController = TodoController();
  final noteController = NoteController();

  ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Umumiy vazifalar soni: ${todoController.lst.length}",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Bajarilganlar: ${todoController.completedTodos()}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          Text(
            "Bajarilmaganlar: ${todoController.notCompletedTodos()}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Umumiy rejalar soni: ${noteController.lstNote.length}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
