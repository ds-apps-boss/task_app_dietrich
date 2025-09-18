import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({super.key});
  @override
  Widget build(BuildContext context) {
    return MyNameWidget();
  }
}

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});

  @override

  State<MyNameWidget> createState() => _MyNameWidgetState();
}

class _MyNameWidgetState extends State<MyNameWidget> {
  final String myName = "Dietrich";
  static const String btnNameOff = "Name anzeigen";
  static const String btnNameOn = "Name löschen";  
  bool bState = false;

  String get txtValue => bState ? myName : "";
  String get btnTxt   => bState ? btnNameOn : btnNameOff;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(txtValue),
        ElevatedButton(
          onPressed: () => setState(() => bState = !bState),
          child: Text(btnTxt)
        ),
      ],
    );
  }
}
