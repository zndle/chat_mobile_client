import 'package:chat_0818/router/application.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;
  late FToast _fToast;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();

    {
      // TODO: delete at product mode
      _usernameController.text = 'zhang3';
      _passwordController.text = '123';
    }

    _fToast = FToast();
    _fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: '用户名'),
          controller: _usernameController,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: '密码',
          ),
          controller: _passwordController,
        ),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(onPressed: _login, child: Text('登录')),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _login() async {
    // try {
    //   var resp = await AuthApi.login(
    //       _usernameController.text, _passwordController.text);
    //   print(resp.statusCode);
    //   switch (resp.statusCode) {
    //     case 200:
    //       await updateToken(resp.data['token']);
    //       Application.router.navigateTo(context, '/chat',
    //           transition: TransitionType.inFromRight);
    //       break;
    //     default:
    //       print('hello world');
    //   }
    // } catch (e) {
    //   print('e is $e');
    //   this._fToast.showToast(
    //       child: Container(
    //           color: Colors.black54,
    //           child: Text(
    //             '登录失败, 请稍后重试',
    //             style: TextStyle(color: Colors.white),
    //           )),
    //       gravity: ToastGravity.CENTER,
    //       toastDuration: Duration(seconds: 1));
    // }
    Application.router
        .navigateTo(context, '/chat', transition: TransitionType.fadeIn);
  }
}
