import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return ShowHideNameWidget();
  }
}


class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidget();
}

class _ShowHideNameWidget extends State<ShowHideNameWidget> {
  final String myName = "Dietrich";
  static const String btnNameOff = "Name anzeigen";
  static const String btnNameOn  = "Name verstecken";
  bool bState = false;

  String get txtValue => bState ? myName : "";
  String get btnTxt   => bState ? btnNameOn : btnNameOff;

  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(txtValue),
        ElevatedButton(
          onPressed: () => setState(() => bState = !bState),
          child: Text(btnTxt),
        ),
      ],
    );
  }
}