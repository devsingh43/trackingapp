import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_detection/provider/theme_provider.dart';

class hometheme extends StatelessWidget {
  const hometheme({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar:AppBar(
        title:Text('Theme'),

      ),
      body:
      Container(
        width: double.infinity, // Set width to 100% of screen
        padding: EdgeInsets.all(16.0),
        child: Expanded(//full size of screen
           child: ElevatedButton(
            onPressed:(){
              provider.toggleTheme();
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Set border radius to zero
                ),
              ),
            ),
            child: const Text('Change Theme',) ,
          ),
        ),
      ),
    );
  }
}
