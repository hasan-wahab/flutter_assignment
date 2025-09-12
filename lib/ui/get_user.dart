import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/ui/update_user.dart' show UpdateUser;
import 'package:flutter_assignment_project/ui/widgets/custon_button.dart';
import 'package:flutter_assignment_project/ui/widgets/reuseable_row.dart';

import '../data_modle/student_modle.dart';
import '../db/db_helper.dart';

class GetUserScreen extends StatefulWidget {
  const GetUserScreen({super.key});

  @override
  State<GetUserScreen> createState() => _GetUserScreenState();
}

class _GetUserScreenState extends State<GetUserScreen> {

  final db=DbHelper.instance;
  @override
  Widget build(BuildContext context) {
    final screenW=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Students'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
      ),
      body: FutureBuilder(
        future: DbHelper.instance.getAllStudent(),
         builder:  (BuildContext context, AsyncSnapshot snapshot) {
           if(snapshot.hasData){
             List<StudentModel> student=snapshot.data;
             if(student.isEmpty) {
             return Center(
               child: Text('No record found'),
             );
           }else{
             return   ListView.builder(
                 itemCount: student.length,
                 itemBuilder: (context, index) {
                   final data=student[index];
                   return Container(
                     padding: const EdgeInsets.all(20),
                     margin: const EdgeInsets.all(10),
                     height: 260,
                     decoration: BoxDecoration(
                       color: Colors.deepPurpleAccent,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         ReuseAbleRowtext(
                           firstT: 'Name',
                           secondT: data.name,
                         ),
                         ReuseAbleRowtext(
                           firstT: 'Mobile',
                           secondT: data.mobile,
                         ),
                         ReuseAbleRowtext(
                           firstT: 'course',
                           secondT: data.course,
                         ),
                         ReuseAbleRowtext(
                           firstT: 'Total fee',
                           secondT: data.totalFee.toString(),
                         ),
                         ReuseAbleRowtext(
                           firstT: 'Fee paid',
                           secondT: data.feePaid.toString(),
                         ),
                         SizedBox(height: 20,),
                         Row(
                           spacing: 20,
                           children: [
                             Expanded(
                               child: CustomButton(
                                 onTap: () {
                                   showDialog(context: context, builder: (context){
                                     return AlertDialog.adaptive(
                                     // constraints: BoxConstraints(
                                     //
                                     // ),
                                       title: Column(
                                         spacing: 5,
                                         children: [
                                           Row(

                                             children: [
                                               Text('Confirmation',style: TextStyle(color: Colors.teal),),
                                               Spacer(),
                                               Icon(Icons.delete,color: Colors.red,),
                                             ],
                                           ),

                                           Row(
                                             spacing: 2,
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children:List.generate(screenW.toInt()~/20, (index){
                                               return Container(color: Colors.teal,width: 4,height: 2,);
                                             }),
                                           )
                                         ],
                                       ),
                                       content: Text('Are you sure to delete?'),
                                       actions: [
                                         TextButton(onPressed: (){
                                           Navigator.pop(context);
                                         }, child:Text('No')),
                                         TextButton(onPressed: ()async{
                                           await db.deleteStudent(data.id!);
                                           Navigator.pop(context);
                                           setState(() {
                                           });
                                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Deleted')));
                                         }, child:Text('Yes',style: TextStyle(color: Colors.red),)),
                                       ],
                                     );
                                   });

                                 },
                                 title: 'Delete',
                               ),
                             ),
                             Expanded(
                               child: CustomButton(
                                 onTap: () async{
                                   // es updated variable may wahi value store hojaigi auto
                                   // or es logic ko Async navigator pattern b kehtay
                                   bool? updated = await Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                     return UpdateUser(student: data);
                                   }));
                                   // yaha per hum check karna hay agar value ture hay to setState call kro
                                   // takay build Widget refrsh hojay or screen update hojai

                                   if( updated != null && updated){
                                     setState(() {
                                    });
                                   }


                                 },
                                 title: 'Edit',
                               ),
                             ),
                           ],
                         )
                       ],
                     ),
                   );
                 }
             );
           }
           }else if(snapshot.hasError){
             return Center(child: Text(snapshot.error.toString()));
           }else{
            return Center(child: CircularProgressIndicator());
           }
          }, ),
    );
  }
}
