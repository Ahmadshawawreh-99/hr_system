import './models/employee.dart';
import './models/supervisor.dart';
class Controller {
  List<Employee> employees = [];
  List<Supervisor> supervisors = [];

  void addEmployee(Employee employee) {
    employees.add(employee);
    print('Added employee: ${employee.name}');
  }

  void addSupervisor(Supervisor supervisor) {
    supervisors.add(supervisor);
    print('Added supervisor: ${supervisor.name}');
  }

  void assignEmployee(String supervisorName, String employeeName) {
  Supervisor? sup;
  try {
    sup = supervisors.firstWhere((s) => s.name == supervisorName);
  } catch (e) {
    sup = null;
  }

  Employee? emp;
  try {
    emp = employees.firstWhere((e) => e.name == employeeName);
  } catch (e) {
    emp = null;
  }

  if (sup == null) {
    print('Supervisor not found!');
    return;
  }

  if (emp == null) {
    print('Employee not found!');
    return;
  }

  emp.supervisor = sup;
  sup.employees.add(emp);

  print('Assigned ${emp.name} to supervisor ${sup.name}');
}

 void checkin(int employeeID, String checkinTime) {
    Employee? emp;
    try {
      emp = employees.firstWhere((e) => e.id == employeeID);
    } catch (e) {
      emp = null;
    }

    if (emp == null) {
      print('Employee not found!');
      return;
    }

    emp.checkinHour = checkinTime;
    print('Employee ${emp.name} checked in at $checkinTime');
  }
}
