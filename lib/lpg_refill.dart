import 'package:flutter/material.dart';

class lpgrefill extends StatefulWidget {
  @override
  _lpgrefillState createState() => _lpgrefillState();
}

class _lpgrefillState extends State<lpgrefill> {
  String _name = '';
  String _idNumber = '';
  String _refillNo = '';
  String _password = '';
  String selectedOption = 'Cash'; // Default payment option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book LPG Refill'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) => _name = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'ID Number'),
                onChanged: (value) => _idNumber = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Refill Number'),
                onChanged: (value) => _refillNo = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (value) => _password = value,
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: selectedOption,
                onChanged: (newValue) {
                  setState(() {
                    selectedOption = newValue!;
                  });
                },
                items: <String>[
                  'Cash',
                  'Credit Card',
                  'Debit Card',
                  'UPI',
                  'Net Banking'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select Payment Method',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement booking logic
                },
                child: Text('Book Refill'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
