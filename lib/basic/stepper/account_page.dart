import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int currentStep = 0;
  bool complete = false;
  StepperType stepperType = StepperType.horizontal;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() {
      currentStep = step;
    });
  }

  switchStepType() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create an Account'),
      ),
      body: Column(
        children: [
          complete
              ? Expanded(
                  child: Center(
                    child: AlertDialog(
                      title: Text('Profile Created'),
                      content: Text('Tada!'),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              setState(() {
                                complete = false;
                              });
                            },
                            child: Text('Close')),
                      ],
                    ),
                  ),
                )
              : Expanded(
                  child: Stepper(
                    steps: steps,
                    type: stepperType,
                    currentStep: currentStep,
                    onStepContinue: next(),
                    onStepCancel: cancel(),
                    onStepTapped: (step) => goTo(step),
                  ),
                ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: switchStepType(),
        child: Icon(Icons.list),
      ),
    );
  }

  List<Step> steps = [
    Step(
      title: const Text('New Account'),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Address'),
      isActive: false,
      state: StepState.editing,
      content: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Avatar'),
      isActive: true,
      state: StepState.error,
      subtitle: const Text('Error!'),
      content: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ],
      ),
    ),
  ];
}
