import 'package:chat_0818/router/application.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatefulWidget {
  final String topic;
  const ChatListItem({Key? key, this.topic = 'hello, topic'}) : super(key: key);

  @override
  _ChatListItemState createState() => _ChatListItemState();
}

class _ChatListItemState extends State<ChatListItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Application.router.navigateTo(
          context,
          '/chat/${widget.topic}',
          transition: TransitionType.fadeIn,
        );
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: Color(0xfff9f9f9),
          border: Border.all(
            color: Color(0xffffffff),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(232, 225, 244, 0.25),
              offset: Offset(0, 10),
              blurRadius: 30,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'asserts/images/user_x.png',
                width: 50,
                height: 50,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Username${widget.topic}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0C0020),
                        )),
                    Text(
                      'last message content, last message content ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF817B8B),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
              child: Text(
                '18:51 pm',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff0C0020),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
