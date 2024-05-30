import 'package:flutter/material.dart';
import 'package:vehicle_detection/repository/authentication_repository/authentication_repository.dart';
import 'About.dart';
import 'Privacy.dart';
import 'feedback.dart';
import 'help.dart';
import 'hometheme.dart';
import 'main.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Dev'),
              accountEmail: Text('Devgmail.com'),
           /*   currentAccountPicture:CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    ''//link
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,

                  ),
                ),
              ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                ''//link
              ),
              fit: BoxFit.cover,
            ),
          ),*/
          ),
          ListTile(
            leading:Icon(Icons.home),
             title:Text('Home'),
             onTap:(){Navigator.pushReplacement(
             context,
             MaterialPageRoute(
             builder: (context) => const MyHomePage(title: 'Mobeine Car'),
             )
             );
            }


          ),
          ListTile(
            leading:Icon(Icons.security),
            title:Text('Privacy And Security'),
            onTap:(){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => privacyscreen(),
                ));}
          ),
          ListTile(
            leading:Icon(Icons.support),
            title:Text('Help And Support'),
            onTap:(){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => helpscreen(),
                ));}
          ),
          ListTile(
            leading:Icon(Icons.groups ),
            title:Text('About Us'),
             onTap:(){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => aboutscreen(),
                ));}

          ),
          ListTile(
              leading:Icon(Icons.brightness_medium ),
              title:Text('Theme'),
              onTap:(){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hometheme(),
                  ));}

          ),
          ListTile(
            leading:Icon(Icons.feedback),
            title:Text('Feedback'),
            onTap:(){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => feedbackscreen(),
                ));}
          ),
          ListTile(
            leading:Icon(Icons.logout),
            title:Text('LogOut'),
            onTap:(){AuthenticationRepository.instance.logout();}
          ),
        ],
      ),


    );
  }
}
