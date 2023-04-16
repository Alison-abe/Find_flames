import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

int currentIndex = 0;

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      items:const [
        BottomNavigationBarItem(icon: 
        ImageIcon(AssetImage('assets/images/Icon2.png'),size: 30,color: Color.fromARGB(255, 98, 94, 94),)
        ,label: ' ',tooltip: 'Home'
        ),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Icon3.png'),size: 30,),label: '',tooltip: 'Search'
        ),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Icon4.png'),size: 30,),label: '',tooltip: 'Calender'
        ),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Icon5.png'),size: 50,),label: '',tooltip: 'Chat'
        )
      ],
      onTap: ((value) {
        setState(() {
          currentIndex = value;
        });
      }),
    );
  }
}