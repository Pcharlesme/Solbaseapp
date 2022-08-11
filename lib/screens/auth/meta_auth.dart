import 'package:flutter/material.dart';
import 'package:metamask/metamask.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var metamask = MetaMask();

  void _loginWithMetaMask() {
    metamask.login().then((success) {
      setState(() {
        if (success) {
          debugPrint('MetaMask address: ${metamask.address}');
          debugPrint('MetaMask signature: ${metamask.signature}');
        } else {
          debugPrint('MetaMask login failed');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (metamask.address != null) Text('address: ${metamask.address}'),
            if (metamask.signature != null)
              Text('signed: ${metamask.signature}'),
            Text(
              metamask.address == null
                  ? 'You are not logged in'
                  : 'You are logged in',
            ),
            Text('Metamask support ${metamask.isSupported}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loginWithMetaMask,
        tooltip: 'Login',
        child: const Icon(Icons.login),
      ),
    );
  }
}
