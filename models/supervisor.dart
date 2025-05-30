import 'employee.dart';
class Supervisor {
  int id;
  String name;
  List<Employee> employees = [];

  Supervisor({
    required this.id,
    required this.name,
  });

  void displayInfo() {
    print('Supervisor ID: $id, Name: $name, Employees count: ${employees.length}');
  }
}