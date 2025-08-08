import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/widgets/custom_button.dart';
import 'package:flutter_assignment_project/widgets/custom_textfield.dart';

class DmcAssignment extends StatefulWidget {
  const DmcAssignment({super.key});

  @override
  State<DmcAssignment> createState() => _DmcAssignmentState();
}

class _DmcAssignmentState extends State<DmcAssignment> {
  TextEditingController engController = TextEditingController();
  TextEditingController phyController = TextEditingController();
  TextEditingController mathController = TextEditingController();
  TextEditingController chemController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController urduController = TextEditingController();
  int tMarks = 600;
  int obtMarks = 0;
  int per = 0;
  String grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DMC'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            CustomTextfield(
              lableText: 'English Marks',
              controller: engController,
            ),
            CustomTextfield(
              lableText: 'Physics Marks',
              controller: phyController,
            ),
            CustomTextfield(
              lableText: 'Maths Marks',
              controller: mathController,
            ),
            CustomTextfield(
              lableText: 'Chemistry Marks',
              controller: chemController,
            ),
            CustomTextfield(
              lableText: 'Urdu Marks',
              controller: urduController,
            ),
            CustomTextfield(
              lableText: 'Biology Marks',
              controller: bioController,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CustomButton(
                  width: 160,
                  title: 'Clear',
                  onTap: () {
                    engController.clear();
                    mathController.clear();
                    urduController.clear();
                    bioController.clear();
                    phyController.clear();
                    chemController.clear();
                  },
                ),
                const Spacer(),
                CustomButton(
                  width: 160,
                  title: 'Calculate',
                  onTap: () {
                    int eng = int.parse(engController.text);
                    int phy = int.parse(phyController.text);
                    int maths = int.parse(mathController.text);
                    int che = int.parse(chemController.text);
                    int urdu = int.parse(urduController.text);
                    int bio = int.parse(bioController.text);

                    obtMarks = eng + phy + maths + che + urdu + bio;

                    setState(() {
                      double persentage = obtMarks / tMarks * 100;
                      per = persentage.toInt();

                      if (per >= 90) {
                        grade = 'A';
                      } else if (per >= 70) {
                        grade = 'B';
                      } else if (per >= 40) {
                        grade = 'C';
                      } else {
                        grade = 'Fail';
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Total marks : $tMarks',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Obtained marks : $obtMarks',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Percentage : $per%',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Grade : $grade',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
