import 'package:flutter/material.dart';
import 'package:flutter_assignment_project/widgets/custom_button.dart';
import 'package:flutter_assignment_project/widgets/custom_textfield.dart';

class DamasWrapWidgetAssign extends StatefulWidget {
  const DamasWrapWidgetAssign({super.key});

  @override
  State<DamasWrapWidgetAssign> createState() => _DamasWrapWidgetAssignState();
}

class _DamasWrapWidgetAssignState extends State<DamasWrapWidgetAssign> {
  TextEditingController firstC = TextEditingController();
  TextEditingController secondC = TextEditingController();
  int result = 0;
  double doubleResult = 0;
  bool isDivision=false;

   fieldChecking(String first,String second){
    if(first.isEmpty||second.isEmpty){
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter required fields')));
    }else{
      return;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap widget'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isDivision?Text(
                  'Result : $doubleResult',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ):Text(
                  'Result : $result',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextfield(
              hintText: 'Enter first number',
              lableText: 'First number',
              controller: firstC,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              hintText: 'Enter second number',
              lableText: 'Second number',
              controller: secondC,
            ),
            const SizedBox(height: 20,),
            Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 20,
              spacing: 20,
              children: [
                CustomButton(
                  title: '+',
                  onTap: () {
                    if(firstC.text.isEmpty||secondC.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter required fields')));

                    }else{
                      int firstN = int.parse(firstC.text);
                      int secondN = int.parse(secondC.text);
                      var add = firstN + secondN;
                      result = add;
                      setState(() {});
                    }

                  },
                  width: 90,
                ),
                CustomButton(
                  title: '-',
                  onTap: () {
                    if(firstC.text.isEmpty||secondC.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter required fields')));

                    }else{
                      int firstN = int.parse(firstC.text);
                      int secondN = int.parse(secondC.text);
                      var sub = firstN - secondN;
                      result = sub;
                      setState(() {});
                    }
                  },
                  width: 90,
                ),
                CustomButton(
                  title: '*',
                  onTap: () {
                    if(firstC.text.isEmpty||secondC.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter required fields')));

                    }else{
                      int firstN = int.parse(firstC.text);
                      int secondN = int.parse(secondC.text);
                      var mul = firstN * secondN;
                      result = mul;
                      setState(() {});
                    }
                  },
                  width: 90,
                ),
                CustomButton(
                  title: '/',
                  onTap: () {
                    if(firstC.text.isEmpty||secondC.text.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please enter required fields')));

                    }else{
                      double firstN = double.parse(firstC.text);
                      double secondN = double.parse(secondC.text);
                      var div = firstN/ secondN;
                      doubleResult = div;
                      isDivision=true;
                      setState(() {});
                    }

                  },
                  width: 90,
                ),
                CustomButton(
                  title: 'Clear',
                  onTap: () {

                    firstC.clear();
                    secondC.clear();
                    // int firstN = int.parse(firstC.text);
                    // int secondN = int.parse(secondC.text);
                    result = 0;
                    isDivision=false;
                    setState(() {});
                  },
                  width: 90,
                ),
              ],
            )
          ]),
    );
  }
}
