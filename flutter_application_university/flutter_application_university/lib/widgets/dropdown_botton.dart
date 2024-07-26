import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final List<String> _dropDownItems = ['dropdownClosed', 'Arabic', 'English'];
  String _selectedItem = 'dropdownClosed';

  @override
  Widget build(BuildContext context) {
    var dropdownButton = ListTile(
      title: Text(
        'Label',
        style:
            TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.bold),
      ),
      subtitle: DropdownButton<String>(
        value: _selectedItem,
        items: _dropDownItems.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            _selectedItem = newValue!;
          });
        },
        
        icon: Icon(Icons.arrow_drop_down),
      ),
    );
    return dropdownButton;
  }
}
