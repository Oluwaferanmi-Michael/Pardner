import 'package:flutter/material.dart';

class StudySetCreationPage extends StatelessWidget {
  const StudySetCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(spacing: 24, children: [
          TextField(),
          TextField(),
          TextField(),
        ]),
      ),
    );
  }
}
