import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Color(0xfff5f5f5),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 50,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              print('hello world');
            },
            icon: Icon(
              Icons.add,
              color: Color(0xff0C0020),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'type text here',
                contentPadding: EdgeInsets.fromLTRB(25, 8, 15, 8),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xfff9f9f9),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xfff9f9f9),
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xfff9f9f9),
                    width: 1,
                  ),
                ),
                suffixIcon: Icon(Icons.face),
                fillColor: Color(0xffefefef),
                filled: true,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Color(0xff6100FF),
            ),
          ),
        ],
      ),
    );
  }
}
