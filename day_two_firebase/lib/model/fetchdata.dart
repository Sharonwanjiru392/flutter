class Students {
  final String id;
  final String name;
  final String age;
  final String email;

  Students({
    required this.id,
    required this.name,
    required this.age,
    required this.email,
  });

  factory Students.fromJson(Map<String, dynamic> json) {
    return Students(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      age: json['age'].toString(),
      email: json['email'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'email': email,
    };
  }
}
