import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twoapi/providerTest.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ProvderTest(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Provider.of<ProvderTest>(context, listen: false).getApiProver();
    Provider.of<ProvderTest>(context, listen: false).getApiProver2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProvderTest>(context, listen: true);
    print("UIjanet = ${provider.result ?? "dd"}");
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(provider.result ?? "kosong"),
              SizedBox(
                height: 20,
              ),
              Text(provider.result2 ?? "dd"),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
