import 'package:flutter/material.dart';
import 'package:three_d_bpi_app/home_screen.dart';

class SelectAddress extends StatefulWidget {
  SelectAddress({Key? key, required this.selectedValue}) : super(key: key);

  Function(String) selectedValue;

  @override
  State<SelectAddress> createState() => _SelectComplexState();
}

class _SelectComplexState extends State<SelectAddress> {
  String selectedAddress = addressList.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedAddress,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          selectedAddress = value!;
          widget.selectedValue(selectedAddress);
        });
      },
      items: addressList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
