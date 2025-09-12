class StudentModel {
  final int? id;
  final String title;
  final String name;
  final String description;
  final String imageUrl;
  // Constructor
  StudentModel({
    this.id,
    required this.name,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  // Convert Student object to map

  dynamic toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'title': title,
    };
  }

  // Convert map to object

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      id: map['id'],
      title: 'title',
      name: map['name'],
      description: map['description'],
      imageUrl: map['imageUrl'],
    );
  }
}