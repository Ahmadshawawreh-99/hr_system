import './models/employee.dart';
import './models/supervisor.dart';
import 'controller.dart';
void main() {
  var controller = Controller();

  var sup1 = Supervisor(id: 1, name: 'Ahmed');
  controller.addSupervisor(sup1);

  var emp1 = Employee(id: 101, name: 'Ali');
  var emp2 = Employee(id: 102, name: 'Sara');
  controller.addEmployee(emp1);
  controller.addEmployee(emp2);

  controller.assignEmployee('Ahmed', 'Ali');
  controller.checkin(101, '09:00 AM');

  emp1.displayInfo();
  sup1.displayInfo();
}


