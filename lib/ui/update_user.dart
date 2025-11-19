// import 'package:flutter/material.dart';
// import 'package:flutter_assignment_project/ui/widgets/custom_t_field.dart';
// import 'package:flutter_assignment_project/ui/widgets/custon_button.dart';
//
// import '../abstraction_provider/data_helper.dart';
// import '../data_modle/student_modle.dart';
// import '../db/db_helper.dart';
//
//
// class UpdateUser extends StatefulWidget {
//   final StudentModel student;
//   const UpdateUser({super.key, required this.student});
//
//   @override
//   State<UpdateUser> createState() => _UpdateUserState();
// }
//
// class _UpdateUserState extends State<UpdateUser> {
//   final GlobalKey<FormState> _formKey = GlobalKey();
//   var course = 'Flutter';
//   String? name, mobile, totalFee, feePaid;
//
//   @override
//   Widget build(BuildContext context) {
//     final data = widget.student;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: Text('Update record'),
//         centerTitle: true,
//         backgroundColor: Colors.teal,
//         foregroundColor: Colors.white,
//       ),
//
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           child: ListView(
//             children: [
//               CustomTField(
//                 initialValue: data.name,
//                 validator: (value) {
//                   if (value!.isEmpty || value == '') {
//                     return 'Enter your name';
//                   }
//                   name = value;
//                 },
//                 hintText: 'Enter your name',
//                 lableText: 'Name',
//               ),
//               SizedBox(height: 20),
//               CustomTField(
//                 initialValue: data.mobile,
//                 validator: (value) {
//                   if (value!.isEmpty || value == '') {
//                     return 'Enter your mobile';
//                   }
//                   mobile = value;
//                 },
//                 hintText: 'Enter your mobile',
//                 lableText: 'Mobile',
//               ),
//               SizedBox(height: 20),
//               Container(
//                 height: 60,
//                 decoration:BoxDecoration(
//
//                 borderRadius:BorderRadius.circular(20),
//                   border: Border.all(
//                     color: Colors.grey,
//                     width: 1,
//                   )
//                 ),
//                 child: Center(
//                   child: DropdownButton(
//                     underline: SizedBox(),
//                     elevation: 0,
//                     value: data.course,
//                     borderRadius: BorderRadius.circular(20),
//                     icon: Icon(Icons.arrow_drop_down),
//                     dropdownColor: Colors.teal,
//                     isExpanded: true,
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     alignment: Alignment.center,
//                     items: [
//                       DropdownMenuItem(
//                         value: 'Flutter',
//                         child: Text(
//                           'Flutter',
//                           style: TextStyle(
//                             color: data.course == 'Flutter'
//                                 ? Colors.black
//                                 : Colors.white,
//                           ),
//                         ),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Android',
//                         child: Text(
//                           'Android',
//                           style: TextStyle(
//                             color: data.course == 'Android'
//                                 ? Colors.black
//                                 : Colors.white,
//                           ),
//                         ),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Java',
//                         child: Text(
//                           'Java',
//                           style: TextStyle(
//                             color: data.course == 'Java'
//                                 ? Colors.black
//                                 : Colors.white,
//                           ),
//                         ),
//                       ),
//                       DropdownMenuItem(
//                         value: 'C++',
//                         child: Text(
//                           'C++',
//                           style: TextStyle(
//                             color: data.course == 'C++'
//                                 ? Colors.black
//                                 : Colors.white,
//                           ),
//                         ),
//                       ),
//                       DropdownMenuItem(
//                         value: 'Python',
//                         child: Text(
//                           'Python',
//                           style: TextStyle(
//                             color: data.course == 'Python'
//                                 ? Colors.black
//                                 : Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                     onChanged: (value) {
//                       setState(() {
//                         data.course = value!;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               CustomTField(
//                 initialValue: data.totalFee.toString(),
//                 validator: (value) {
//                   if (value!.isEmpty || value == '') {
//                     return 'Enter your total fee';
//                   }
//                   totalFee = value;
//                 },
//                 hintText: 'Enter your total fee',
//                 lableText: 'Total fee',
//               ),
//               SizedBox(height: 20),
//               CustomTField(
//                 initialValue: data.feePaid.toString(),
//                 validator: (value) {
//                   if (value!.isEmpty || value == '') {
//                     return 'Enter your fee paid';
//                   }
//                   feePaid = value;
//                 },
//                 hintText: 'Enter your fee paid',
//                 lableText: 'Fee paid',
//               ),
//
//               SizedBox(height: 30),
//
//               CustomButton(
//                 title: 'Update record',
//                 onTap: () async {
//                   if (_formKey.currentState!.validate()) {
//                     DbHelper db = DbHelper.instance;
//                     StudentModel student = StudentModel(
//                       id: data.id,
//                       name: name!,
//                       mobile: mobile!,
//                       course: course == data.course ? course : data.course,
//                       totalFee: int.parse(totalFee!),totalFee
//                       feePaid: int.parse(feePaid!),
//                     );
//                     final result = await db.updateUser(student);
//                     if (result > 0) {
//
//                       Navigator.pop(context,true);// yaha say hum previous screen per return value true bejwarahay
//                       // jab ya previous screen per jayga to Navigatior.push ko valur auto update karayga k koi value i hay
//                       // or es logic ko Async navigator pattern b kehtay
//                       ScaffoldMessenger.of(
//                         context,
//                       ).showSnackBar(SnackBar(content: Text('Updated')));
//
//                     }else{
//                       ScaffoldMessenger.of(
//                         context,
//                       ).showSnackBar(SnackBar(content: Text('Failed')));
//                     }
//                   }
//                   //
//                 },
//               ),
//               SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
