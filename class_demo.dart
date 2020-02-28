class Gerrit {
  String id;
  String userId;
  String subject;
  // Simple Constructor Style
  Gerrit(this.id, this.userId, this.subject);

// normal Constructor
  // Gerrit(id, userId, subject) {
  //   this.id = id;
  //   this.userId = userId;
  //   this.subject = subject;
  // }

  //defining parameters are optional parameters

  // Gerrit({this.id, this.userId, this.subject = "default"});
}

class School {
  String id;
  String schoolName;
  String teacher;

  School.fromJson(Map<String, String> json)
      : id = json['id'],
        schoolName = json['schoolName'],
        teacher = json['teacher'];

  @override
  String toString() => 'School : $teacher';
}

class Student {}

class MySubTypeGerrit implements Gerrit {
  @override
  String id;

  @override
  String subject;

  @override
  String userId;
}

void main() {
  var gerrit = Gerrit("1", "Isaachome", "Testing");
  print(gerrit); //using new is optional

  final g2 = Gerrit('2', "Zimar", "Testing");
  print(g2);
}

class Employee {
  String id;
  String name;
  String email;
  String phone;

  factory Employee(int id){
      return Employee._internal(
        id.toString()."Isaac Home","isaachome@gmail.com","Topic 1");
  }

  Employee._internal({
    this.id,this.name,this.email,this.phone="09250832041"
  })
}
