class StudentModel {
  int? id;
  late String name;
  late String mobile;
  late String course;
  late int totalFee;
  late int feePaid;

  StudentModel({
     this.id,
    required this.name,
    required this.mobile,
    required this.course,
    required this.totalFee,
    required this.feePaid,
  });

  // convert Object to map

 Map<String,dynamic> toMap(){
   return {
     'id':id,
     'name':name,
     'mobile':mobile,
     'course':course,
     'totalFee':totalFee,
     'feePaid':feePaid,
   };
 }
  // convert map to Object
  factory StudentModel.fromMap(Map<String,dynamic>map){
    return StudentModel(
      id: map['id'],
        name: map['name'],
        mobile: map['mobile'],
        course: map['course'],
        totalFee: map['totalFee'],
        feePaid: map['feePaid'],
    );

  }
}



