import 'package:calendar_brasa_connect/calendar_initiatives.dart';
import 'package:flutter/material.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({Key? key}) : super(key: key);

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  List<bool> isSelected1 = [true];
  List<bool> isSelected2 = [false];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ToggleButtons(
          color: Colors.grey,
          fillColor: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          isSelected: isSelected1,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Dia 15 (Sexta-Feira)",
                style: TextStyle(
                    color: isSelected1[0] ? Colors.blue : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
          onPressed: (int index) {
            setState(() {
              isSelected1[index] = !isSelected1[index];
              isSelected2[index] = !isSelected2[index];
            });
          },
        ),
        SizedBox(width: 10),
        ToggleButtons(
          color: Colors.grey,
          fillColor: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          isSelected: isSelected2,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "Dia 16 (Sábado)",
                style: TextStyle(
                    color: isSelected2[0] ? Colors.blue : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
          onPressed: (int index) {
            setState(() {
              isSelected2[index] = !isSelected2[index];
              isSelected1[index] = !isSelected1[index];
            });
          },
        )
      ])
    ]);
  }
}
