import 'dart:ui';

import 'package:find_flames/bottom.dart';
import 'package:find_flames/chat.dart';
import 'package:find_flames/persons.dart';
import 'package:find_flames/sample.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 233, 234),
      body: SafeArea(
            child: Column(
                  children: [
            const SizedBox(
              height: 20,
            ),
                    
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/dp.png'))),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Find Flames",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 95, 143),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Ink.image(
                    image: const AssetImage('assets/images/icon1.png'),
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),  
              ],
            ),
                    
            const SizedBox(height: 5,),
            const Persons(),
            const SizedBox(height: 30,),
            const Chat(),
            Expanded(child: SizedBox(
              child: Container(color: Colors.white,),
            ))
                  ],
                ),
          ),
      bottomNavigationBar:const Bottom(),
    );
  }
}
