import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key, required this.bank});

  final String bank;

  ///
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bank),
        ],
      ),
    );
  }
}
