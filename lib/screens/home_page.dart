import 'package:affixme/core/color.dart';
import 'package:affixme/core/container_custom.dart';
import 'package:affixme/core/text_custom.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextCustom(
            text: 'Good Morning John',
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
          //ContainerCustom(child: Image.asset('assets/images/idm.jpeg',fit: BoxFit.fill,)),
          GestureDetector(
            onTap: () {
              
            },
            child: ContainerCustom(
              marginTop: 35,
              marginLeft: 25,
              marginRight: 25,
              height: 65,
              boxDecoration: BoxDecoration(
                  color: ashlite,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Column(
                    children: [
                      TextCustom(
                        text: 'App',
                        fontWeight: FontWeight.bold,
                      ),
                      TextCustom(
                        text: 'Users',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ContainerCustom(
              marginTop: 35,
              marginLeft: 25,
              marginRight: 25,
              height: 65,
              boxDecoration: BoxDecoration(
                  color: ashlite,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: [
                  Column(
                    children: [
                      TextCustom(
                        text: 'Album',
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
