import 'package:flutter/material.dart';
import 'package:nested_tab_ui/button.dart';

class ButtonList extends StatefulWidget {
  @override
  _ButtonListState createState() => _ButtonListState();
}

class _ButtonListState extends State<ButtonList> {
  List<String> myOffer = <String>[
    '6000',
    '6500',
    '7000',
    '7500',
    '8000',
    '8500'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: myOffer.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonBuilder(
            myOffer[index],
            textColor: Colors.black,
          ),
        );
      },
    );
  }
}
