import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.myName,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myName;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("assets/florian-olivo-4hbJ-eymZ1o-unsplash.jpg",
              height: 200, fit: BoxFit.cover),
          SizedBox(height: 20),
          Text(myName,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 20), 
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Some Text",
                labelText: "Name:",
              ),
            ),
          )
        ],
      ),
    );
  }
}