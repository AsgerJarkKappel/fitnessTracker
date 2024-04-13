import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/authenticate/authenticate.dart';
import 'package:flutter_application_1/src/screens/home/home.dart';
import 'package:flutter_application_1/src/wrapper.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  runApp(const MyAppDefault());

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  //final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  //await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  //runApp(MyApp(settingsController: settingsController));
}

class MyAppDefault extends StatelessWidget {
  const MyAppDefault({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Wrapping the root widget in th eStreamProvider means that every part of the applicaiton
    //can listen or acces the data from the stream (logged in or not)
    //Specify that it listens after UserObjects
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          primaryColor: Colors.yellow,
          scaffoldBackgroundColor: const Color.fromARGB(255, 216, 216, 216),
          useMaterial3: true,
        ),
        home: const Home());
  }
}
