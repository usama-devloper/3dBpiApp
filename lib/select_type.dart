import 'package:flutter/material.dart';
import 'package:three_d_bpi_app/home_screen.dart';

class SelectType extends StatefulWidget {
  SelectType({Key? key, required this.selectedValue}) : super(key: key);

  Function(String) selectedValue;

  @override
  State<SelectType> createState() => _SelectComplexState();
}

class _SelectComplexState extends State<SelectType> {
  String selectedType = typeList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedType,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          selectedType = value!;
          widget.selectedValue(selectedType);
        });
      },
      items: typeList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
