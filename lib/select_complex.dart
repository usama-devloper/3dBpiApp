import 'package:flutter/material.dart';
import 'package:three_d_bpi_app/home_screen.dart';

class SelectComplex extends StatefulWidget {
  SelectComplex({Key? key, required this.selectedValue}) : super(key: key);

  Function(String) selectedValue;

  @override
  State<SelectComplex> createState() => _SelectComplexState();
}

class _SelectComplexState extends State<SelectComplex> {
  String selectedComplex = complexList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedComplex,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          selectedComplex = value!;
          widget.selectedValue(selectedComplex);
        });
      },
      items: complexList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
