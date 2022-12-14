import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final inputText;
  final hintText;
  const InputBox({
    Key? key,
    required this.inputText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(9)),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            inputText,
            style: TextStyle(fontFamily: 'NanumSquare', fontSize: 15),
          ),
          Container(
            width: 180,
            height: 30,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(fontFamily: 'NanumSquare', fontSize: 15),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
