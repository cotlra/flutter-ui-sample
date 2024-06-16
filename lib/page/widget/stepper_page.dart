import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({super.key, required this.title});
  final String title;

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    //3
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Stepper(
          //4
          currentStep: _index,
          //5
          onStepCancel: () {
            if (_index != 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          //6
          onStepContinue: () {
            if (_index != 2) {
              setState(() {
                _index += 1;
              });
            }
          },
          //7
          onStepTapped: (int index) {
            setState(() {
              _index = index;
            });
          },
          //8
          steps: const <Step>[
            //9
            Step(
              //10
              title: Text('Step 1'),
              //11
              content: Text('This is Step 1.'),
            ),
            Step(
              title: Text('Step 2'),
              content: Text('This is Step 2.'),
            ),
            Step(
              title: Text('Step 3'),
              content: Text('This is Step 3.'),
            ),
          ],
        ),
      ),
    );
  }
}
