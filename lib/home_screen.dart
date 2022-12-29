import 'package:flutter/material.dart';
import 'package:three_d_bpi_app/select_address.dart';
import 'package:three_d_bpi_app/select_complex.dart';
import 'package:three_d_bpi_app/select_type.dart';

const List<String> complexList = <String>[
  'Select Complex Nr/Bouwblok Nr.',
  '1337',
  '1402',
  '1710',
  '1772'
];

const List<String> typeList = <String>[
  'Select Plattegronds type',
  'AFB',
  'AFC',
  'TJX',
  'AEK'
];

const List<String> addressList = <String>[
  'Select Addres to visit',
  'Sirtakistraat 5',
  'Sirtakistraat 7',
  'Sirtakistraat 11',
  'Sirtakistraat 13'
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedComplex = complexList.first;
  String selectedType = typeList.first;
  String selectedAddress = addressList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'MyHome',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (selectedComplex != 'Select Complex Nr/Bouwblok Nr.')
                Text(selectedComplex),
              const SizedBox(
                width: 10,
              ),
              if (selectedType != 'Select Plattegronds type')
                Text(selectedType),
              const SizedBox(
                width: 10,
              ),
              if (selectedAddress != 'Select Addres to visit')
                Text(selectedAddress),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SelectComplex(
            selectedValue: (value) {
              setState(() {
                selectedComplex = value;
                if (selectedComplex == 'Select Complex Nr/Bouwblok Nr.') {
                  selectedType = typeList.first;
                  selectedAddress = addressList.first;
                }
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          if (selectedComplex != 'Select Complex Nr/Bouwblok Nr.')
            SelectType(
              selectedValue: (value) {
                setState(() {
                  selectedType = value;
                  if (selectedType == 'Select Plattegronds type') {
                    selectedAddress = addressList.first;
                  }
                });
              },
            ),
          const SizedBox(
            height: 10,
          ),
          if (selectedComplex != 'Select Complex Nr/Bouwblok Nr.' &&
              selectedType != 'Select Plattegronds type')
            SelectAddress(
              selectedValue: (value) {
                setState(() {
                  selectedAddress = value;
                });
              },
            )
        ],
      ),
    );
  }
}
