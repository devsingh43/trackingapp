import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_detection/firebase_options.dart';
import 'package:vehicle_detection/help.dart';
import 'package:vehicle_detection/provider/theme_provider.dart';
import 'package:vehicle_detection/repository/authentication_repository/authentication_repository.dart';
import 'package:vehicle_detection/repository/authentication_repository/otp_controller.dart';
import 'package:vehicle_detection/signup/signup.dart';
import 'package:vehicle_detection/splash.dart';
import 'package:vehicle_detection/navbar.dart';

import 'login/login.dart';

Future<void> main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform).then((value)=>Get.put(AuthenticationRepository()));
  OTPController();
  /*FirebaseAuth.instance.setSettings(
    appVerificationDisabledForTesting: false, // This line is optional, only use if needed
  );*/

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(create: (context) => ThemeProvider(),
        builder:(context,child){
          final provider = Provider.of<ThemeProvider>(context);

          return GetMaterialApp(
            theme: provider.theme,
            debugShowCheckedModeBanner: false,
            title:'MOBEINE CAR',
            home: SplashScreen(),

          );
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
       return Scaffold(
        //for side bar
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title:  Text("Mobine Car",style: Theme.of(context).textTheme.headline4),
         actions:[

           Row(

           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             ElevatedButton(
                 onPressed: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => login_Screen(),
               )
               );
             },style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(),
             ), child: Text("Login")),
             SizedBox(
               width: 10.0,
             ),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => Signup_Screen(),

               ));

             },style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(),
             ), child: Text("SignUp")),
             SizedBox(
               width: 10.0,
             ),
           ],
         ),
         ] ,




      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage("assets/images/welcome.png")),
              SizedBox(
                height: 10.0,
              ),

              Column(
                children: [
                  Text("Welcome Sir ",style: Theme.of(context).textTheme.headline1,),
                  Text("We are here to help you out in every difficult situtation love u baby ",style: Theme.of(context).textTheme.subtitle1,),
                ],
              ),

            ],
          ),
        ),
      ),
     );
  }
}
