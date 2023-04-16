import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

List leading = [
  'assets/images/Jordandp.png',
  'assets/images/Timdp.png',
  'assets/images/Jamesdp.png'
];
List title = ['Jordan', 'Tim', 'James'];
List msg = ['Hii!', 'Hii!', 'Typing...'];
List trail = ['1', '', '9+'];

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        const Opacity(
          opacity: 0,
          child: SizedBox(
            height: 40,
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 700),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: leading.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: index == 0
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))
                          : const BorderRadius.all(Radius.zero)),
                  child: ListTile(
                    leading: Image.asset(leading[index]),
                    title: index == 2
                        ? Text(title[index])
                        : Row(
                            children: [
                              Text(title[index]),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/bluetick.png')
                            ],
                          ),
                    subtitle: Text(
                      msg[index],
                      style: TextStyle(
                          fontStyle:
                              index == 2 ? FontStyle.italic : FontStyle.normal,
                          color: index == 2
                              ? const Color.fromRGBO(223, 75, 125, 1)
                              : Colors.black),
                    ),
                    trailing: Column(
                      children: [
                        const Text('13:10'),
                        if (index == 1)
                          const SizedBox()
                        else
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(223, 75, 125, 1),
                            ),
                            child: Center(
                                child: Text(
                              trail[index],
                              style: const TextStyle(color: Colors.white),
                            )),
                          )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ]),
      Center(
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 3 / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                ImageIcon(AssetImage('assets/images/searchicon.png')),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
