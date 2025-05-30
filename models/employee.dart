import 'supervisor.dart';
class Employee {
  int id;
  String name;
  String? checkinHour; 
  Supervisor? supervisor; 

  Employee({
    required this.id,
    required this.name,
    this.checkinHour,
    this.supervisor,
  });

  void displayInfo() {
    print('Employee ID: $id, Name: $name, Check-in: ${checkinHour}, Supervisor: ${supervisor?.name }');
  }
}