import 'package:flutter/material.dart';

Widget inputForm(String name) {
  return Container(
    width: 1200,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 0.2),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            width: 120,
            child: Row(
              children: [
                Text('$name'),
                Icon(
                  Icons.check,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 45,
        ),
        Container(
          width: 1,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.2),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 210,
          height: 30,
          child: TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        if (name == '아이디')
          Text(
            '(영문소문자/숫자, 4-16자)',
            style: TextStyle(fontSize: 10),
          ),
      ],
    ),
  );
}
