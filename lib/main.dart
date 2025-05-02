import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart'; // Required for SemanticsFlag

void main() {
  runApp(MyApp());
  SemanticsBinding.instance.ensureSemantics();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accessibility Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Accessibility Demo')),
        body: Center(
          child: Semantics(
            // Define label and hint separately
            label: 'Submit',
            hint:
                'this is a really  long long long long longlong long long hint',
            child: ElevatedButton(
              onPressed: () {
                // Perform some action
              },
              child: Text('Submit'),
            ),
          ),
        ),
      ),
    );
  }
}
