import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final String registerType;

  RegisterPage({required this.registerType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register as $registerType'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              FieldRetailer(),
              const SizedBox(height: 8),
              FieldName(),
              const SizedBox(height: 8),
              FieldAddress(),
              const SizedBox(height: 8),
              FieldTaluk(),
              const SizedBox(height: 8),
              FieldDistrict(),
              const SizedBox(height: 8),
              FieldCity(),
              const SizedBox(height: 8),
              FieldState(),
              const SizedBox(height: 8),
              FieldPinCode(),
              const SizedBox(height: 8),
              FieldGSTIN(),
              const SizedBox(height: 8),
              FieldTermsAndConditions(),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement submit functionality
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Replace the following widget placeholders with actual widget implementations as per your need

class FieldRetailer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Retailer',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintStyle: TextStyle(color: Colors.blue),
        ),
        keyboardType: TextInputType.text,
      ), // Replace with actual implementation
    );
  }
}

class FieldName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Name',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintStyle: TextStyle(color: Colors.blue),
        ),
        keyboardType: TextInputType.text,
      ), // Replace with actual implementation
    );
  }
}

class FieldAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Address',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintStyle: TextStyle(color: Colors.blue),
        ),
        keyboardType: TextInputType.text,
      ), // Replace with actual implementation
    );
  }
}

class FieldTaluk extends StatefulWidget {
  @override
  _FieldTalukState createState() => _FieldTalukState();
}

class _FieldTalukState extends State<FieldTaluk> {
  String? selectedTaluk;
  List<String> taluks = ['Mandya', 'Maddur', 'Malavalli', 'Mysore'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Select Taluk',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        value: selectedTaluk,
        items: taluks.map((String taluk) {
          return DropdownMenuItem<String>(
            value: taluk,
            child: Text(taluk),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedTaluk = newValue;
          });
        },
      ),
    );
  }
}

class FieldDistrict extends StatefulWidget {
  @override
  _FieldDistrictState createState() => _FieldDistrictState();
}

class _FieldDistrictState extends State<FieldDistrict> {
  String? selectedDistrict;
  List<String> districts = ['Mysore', 'Chamaraj Nagar', 'Mandya', 'Kodagu'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Select District',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        value: selectedDistrict,
        items: districts.map((String district) {
          return DropdownMenuItem<String>(
            value: district,
            child: Text(district),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedDistrict = newValue;
          });
        },
      ),
    );
  }
}


class FieldCity extends StatefulWidget {
  @override
  _FieldCityState createState() => _FieldCityState();
}

class _FieldCityState extends State<FieldCity> {
  String? selectedCity;
  List<String> city = ['Ram Nagar', 'Bidadi', 'Banglore', 'Bannur'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Select City',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        value: selectedCity,
        items: city.map((String city) {
          return DropdownMenuItem<String>(
            value: city,
            child: Text(city),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedCity = newValue;
          });
        },
      ),
    );
  }
}

class FieldState extends StatefulWidget {
  @override
  _FieldStateState createState() => _FieldStateState();
}

class _FieldStateState extends State<FieldState> {
  String? selectedState;
  List<String> state = ['Karnataka', 'Goa', 'TamilNadu', 'Kerala'];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField<String>(
        decoration: const InputDecoration(
          labelText: 'Select State',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
        value: selectedState,
        items: state.map((String state) {
          return DropdownMenuItem<String>(
            value: state,
            child: Text(state),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedState = newValue;
          });
        },
      ),
    );
  }
}


class FieldPinCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'Pin Code',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintStyle: TextStyle(color: Colors.blue),
        ),
        keyboardType: TextInputType.text,
      ), // Replace with actual implementation
    );
  }
}


class FieldGSTIN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const TextField(
        decoration: InputDecoration(
          labelText: 'GSTIN',
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          hintStyle: TextStyle(color: Colors.blue),
        ),
        keyboardType: TextInputType.text,
      ), // Replace with actual implementation
    );
  }
}

class FieldTermsAndConditions extends StatefulWidget {
  @override
  _FieldTermsAndConditionsState createState() => _FieldTermsAndConditionsState();
}

class _FieldTermsAndConditionsState extends State<FieldTermsAndConditions> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        title: const Text('I agree to Terms & Conditions'),
        value: _isChecked,
        onChanged: (bool? value) {
          setState(() {
            _isChecked = value!;
          });
        },
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}

