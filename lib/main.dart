import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'core/routes/go_router.dart';
import 'global_dependencies.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await awconfigureAmplify();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
  setupMain();
  runApp(const MyApp());
}

Future<void> awconfigureAmplify() async {
  //Add AmplifyDataStore
  //Add AmplifyAuthCognito
  Amplify.addPlugins([AmplifyAuthCognito()]);
  //Add DataStore and AuthCognito
  //Add Configure Amplify
  try {
    //await Amplify.configure(amplifyconfig);
  }
  catch (e){
    print('Amplify wurde bereits konfiguriert [ ${e.toString()} ]');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routerConfig: AppGoRouter.router,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: const SizedBox.shrink(),
    );
  }

}

