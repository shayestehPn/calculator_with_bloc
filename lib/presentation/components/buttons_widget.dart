import 'package:flutter/material.dart';

import 'buttons_row.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 5,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonsRow(label1: 'C', label2: '()', label3: '%', label4: '/'),
            ButtonsRow(label1: '7', label2: '8', label3: '9', label4: '*'),
            ButtonsRow(label1: '4', label2: '5', label3: '6', label4: '-'),
            ButtonsRow(label1: '1', label2: '2', label3: '3', label4: '+'),
            ButtonsRow(label1: '+/-', label2: '0', label3: '.', label4: '='),
          ],
        ),
      ),
    );
  }
}
