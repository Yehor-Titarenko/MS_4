import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yehortitarenko/widgets/new_student.dart';
import 'package:yehortitarenko/widgets/students.dart';
import 'package:yehortitarenko/providers/student_provider.dart';

class StudentsScreen extends ConsumerWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(studentProvider);
    final studentNotifier = ref.read(studentProvider.notifier);

    return Scaffold(
      body: studentNotifier.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Students(
              students: students,
              onDelete: (index) {
                final deletedStudent = students[index];

                studentNotifier.deleteStudent(index);

                ScaffoldMessenger.of(context)
                    .showSnackBar(
                      SnackBar(
                        content: Text(
                          '${deletedStudent.firstName} ${deletedStudent.lastName} deleted',
                        ),
                        action: SnackBarAction(
                          label: 'UNDO',
                          onPressed: () {
                            studentNotifier.addStudentAt(index, deletedStudent);
                          },
                        ),
                        duration: const Duration(seconds: 3),
                      ),
                    )
                    .closed
                    .then((reason) {
                  if (reason != SnackBarClosedReason.action) {
                    studentNotifier.finalizeDelete();
                  }
                });
              },
              onEdit: (index, updatedStudent) {
                studentNotifier.editStudent(index, updatedStudent);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => NewStudent(
            onSave: (student) {
              studentNotifier.addStudent(student);
            },
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
