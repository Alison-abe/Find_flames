import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Persons extends StatefulWidget {
  const Persons({Key? key}) : super(key: key);

  @override
  State<Persons> createState() => _PersonsState();
}

List images = [
  'assets/images/likes_bg.png',
  'assets/images/Tonyimg.png',
  'assets/images/Jamesimg.png',
  'assets/images/Tonyimg.png'
];
List names = ['Likes', 'Tony', 'James', 'Jordan'];

class _PersonsState extends State<Persons> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 180),
      child: ListView.builder(
        shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Stack(children: [
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(images[index]))),
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 20,
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Opacity(
                                opacity: 0,
                                child: SizedBox(
                                  height: 110,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                ),
                                child: Center(child: Text(names[index])),
                              )
                            ]),
                      ),
                    ]))
                : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(images[index]))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Opacity(
                                  opacity: 0,
                                  child: SizedBox(
                                    height: 110,
                                  ),
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                ),
                                  
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                         Text(names[index]),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                            'assets/images/bluetick.png')
                                      ],
                                    ),
                                  
                                ),
                              ]),
                        ),
                      ],
                    ),
                  );
          }),
    );
  }
}
