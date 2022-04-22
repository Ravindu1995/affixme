import 'package:affixme/core/button_custom.dart';
import 'package:affixme/core/color.dart';
import 'package:affixme/core/text_custom.dart';
import 'package:affixme/core/text_field_custom.dart';
import 'package:affixme/screens/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextCustom(
            text: 'Good Morning',
            fontSize: 25,
            textColor: ash,
            fontWeight: FontWeight.bold,
            marginTop: 25,
          ),
          TextCustom(
            text: 'AffixMe Admin Portal',
            fontSize: 15,
            textColor: ash,
            marginTop: 15,
          ),

          const TextFieldCustom(
               hintText: 'User Name',
               marginTop: 41.62,
               
             ),
             const TextFieldCustom(
               hintText: 'Password',
               marginTop: 16.65,
             ),
             ButtonCustom(
               btntxtcol: white,
               onTap: () {
                 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Homepage()),
  );
               },
               marginTop: 17.69,
               text: 'Signin',
             ),
        ],
      ),
    );
  }
}
