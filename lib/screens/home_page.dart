import 'package:example_calculator/components/my_button.dart';
import 'package:example_calculator/components/my_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final number1 = TextEditingController();
  final number2 = TextEditingController();
  double? result;

  void calculate(String operation){
    final num1 = double.tryParse(number1.text) ?? 0;
    final num2 = double.tryParse(number2.text) ?? 0;
    setState(() {
      if(operation == 'Addition'){
        result = num1 + num2;
      }else if(operation == 'Subtraction'){
        result = num1 - num2;
      }else if(operation == 'Multiplication'){
        result = num1 * num2;
      }else if(operation == 'Division'){
        result = num2 != 0 ?  num1 / num2 : double.nan;
      }else{
        result = null;
      }
    });
  } 

  @override
  void dispose(){
    number1.dispose();
    number2;dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Example Calculator',
           style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            MyTextField(
              hintText: 'Value', 
              controller: number1
            ),
             MyTextField(
              hintText: 'Value', 
              controller: number2,
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                      onTap: () => calculate('Addition'), 
                      buttonText: 'Addition'
                    ),
                    MyButton(
                      onTap: () => calculate('Subtraction'), 
                      buttonText: 'Subtraction'
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyButton(
                      onTap: () => calculate('Multiplication'), 
                      buttonText: 'Multiplication'
                    ),
                    MyButton(
                      onTap: () => calculate('Division'), 
                      buttonText: 'Division'
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),
            if(result != null)
            Text(
              'Result: ${result!.isNaN ? 'Cannot divide by zero' : result}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}