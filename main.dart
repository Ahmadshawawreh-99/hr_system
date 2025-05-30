import './models/employee.dart';
import './models/supervisor.dart';
import 'controller.dart';
void main() {
  var system = Controller();

  var sup1 = Supervisor(id: 1, name: 'Ahmed');
  system.addAdmin(sup1);

  var emp1 = Employee(id: 101, name: 'Ali');
  var emp2 = Employee(id: 102, name: 'Sara');
  system.addEmployee(emp1);
  system.addEmployee(emp2);

  system.assignEmployee('Ahmed', 'Ali');
  system.checkin(101, '09:00 AM');

  emp1.displayInfo();
  sup1.displayInfo();
}


