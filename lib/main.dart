import 'package:flutter/material.dart';

void main() => runApp(TEP());

class TEP extends StatefulWidget {
  const TEP({Key? key}) : super(key: key);

  @override
  createState() => Estado();
}

class Estado extends State<TEP> {
  String chat = " ";
  TextEditingController chatController = TextEditingController();
  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //Icons.arrow_back_outlined,
          leading: const Padding(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Aragon_Jonhy_corel.jpg/240px-Aragon_Jonhy_corel.jpg")),
          ),
          title: const Text("Cesar"),
          backgroundColor: const Color.fromARGB(255, 7, 94, 84),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.add_call),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.attach_file),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.more_vert),
                )),
          ],
        ),

        body: Stack(



          children: [
            Image.asset("imagenes/img.png", fit: BoxFit.cover,width: 1080,height: 1080,),


            Column(verticalDirection: VerticalDirection.down,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Material(
                              elevation: 1,
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(chat),
                                  ),
                                  //const Text("9:11")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded( //Message Box
                  child: Align(
                    widthFactor: 10.0,
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Material(
                              elevation: 2,
                              shape: const StadiumBorder(),
                              child: TextField(
                                controller: chatController,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.emoji_emotions_outlined),
                                  labelText: "Mensaje",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Material(
                            color: const Color.fromARGB(255, 7, 94, 84),
                            shape: const CircleBorder(),
                            elevation: 2,
                            child: IconButton(
                                color: Colors.white,
                                icon: const Icon(Icons.send),
                                onPressed: () {
                                  setState(() {
                                    chat = chatController.text;

                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ));
}

