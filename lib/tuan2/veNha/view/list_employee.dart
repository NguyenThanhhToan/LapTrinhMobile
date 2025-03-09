// view/view_employee.dart
import 'package:flutter/material.dart';
import '../view_model.dart';

class ViewEmployeeScreen extends StatelessWidget {
  const ViewEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final employeeList = getEmployees();

    return Scaffold(
      appBar: AppBar(title: const Text('Danh sách nhân viên')),
      body: ListView.builder(
        itemCount: employeeList.length,
        itemBuilder: (context, index) {
          final employee = employeeList[index];
          return ListTile(
            title: Text(employee.name),
            subtitle: Text('Vai trò: ${employee.role}'),
          );
        },
      ),
    );
  }
}