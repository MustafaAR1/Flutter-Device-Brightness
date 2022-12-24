import 'package:flutter/material.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
  double brightness = 0;
  // void getBrightness(brightnessValue) async {
  //   brightnessValue = await FlutterScreenWake.brightness;
  //   //  return brightness;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Flutter brightness 💡'),
      ),
      body: Center(
          child: Slider(
        value: brightness,
        onChanged: (value) {
          setState(() {
            brightness = value;
          });
          FlutterScreenWake.setBrightness(brightness);
          // if(brightness == 0 ) {

          // }
        },
      )),
    );
  }
}
