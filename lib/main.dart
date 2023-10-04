import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brimobit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        // wrap the preferredSize
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          title: Text(""),
          backgroundColor: const Color.fromARGB(255,6,221,71),
        ),
      ),
      // ignore: prefer_const_constructors
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        // JavaScriptMode.unrestricted,
        initialUrl: "https://brimmobit.cf.appdata.host.externallogin.jellywebb.com?ExtAuth=google_com&key=jfhr8ruhburueojnfiuhoejnfbueiu049587hgfj&UpdateVersion=2.1"
      )
    );
  }
}
