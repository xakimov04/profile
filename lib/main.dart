import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyAppBar(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: MyInformation(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: SizedBox(
            height: 260,
            child: Image.asset(
              "assets/images/image.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 30, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/person.png"),fit: BoxFit.fill),
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          CupertinoIcons.arrowshape_turn_up_right,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Brandone Louis",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "California, USA",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "130k",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Followers",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "23k",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Following",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color(0x1AFFFFFF),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Edit profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyInformation extends StatelessWidget {
  const MyInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyExpansion(
          icon: Icons.person,
          title: "About me",
          body: "Labore id enim labore nulla magna ipsum dolor.",
        ),
        SizedBox(height: 10),
        MyExpansion(
          icon: Icons.bug_report,
          title: "Work experience",
          body: "Amazon inc\nJan 2015 - Feb 2022 - 5 years",
        ),
        SizedBox(height: 10),
        MyExpansion(
          icon: Icons.cast_for_education,
          title: "Education",
          body:
          "LoNisi cupidatat incididunt elit officia pariatur. Excepteur consequat eu nulla sunt adipisicing minim aliqua Lorem consequat minim magna qui non. Incididunt tempor esse voluptate occaecat non excepteur anim proident ea mollit. Ex elit ex enim laboris adipisicing ipsum laboris voluptate eu adipisicing occaecat Lorem est deserunt. Eiusmod adipisicing magna id magna tempor ipsum dolore cillum veniam aliqua. Veniam occaecat occaecat irure laborum irure est eiusmod eiusmod dolor elit.rem",
        ),
        SizedBox(height: 10),
        MyExpansion(
          icon: CupertinoIcons.waveform_path_badge_minus,
          title: "Skill",
          body: "Nisi id aliquip cupidatat voluptate et irure.",
        ),
        SizedBox(height: 10),
        MyExpansion(
          icon: Icons.language_sharp,
          title: "Language",
          body: "Enim in qui est adipisicing amet reprehenderit non et velit culpa.",
        ),
        SizedBox(height: 10),
        MyExpansion(
          icon: Icons.connecting_airports_sharp,
          title: "Apreciation",
          body:
          "Consequent ea est incident official underused pariatur. Adipisicing aliqua non amet laboris dolor pariatur pariatur cupidatat. Consectetur consequat velit est dolor amet. Fugiat minim proident do eiusmod excepteur ut ad exercitation deserunt dolor duis in. Deserunt mollit voluptate nulla enim Lorem cupidatat. Fugiat ad quis eu nisi minim ullamco. Duis aliquip elit mollit enim reprehenderit duis.",
        ),
        SizedBox(height: 10),
        MyExpansion(
          icon: Icons.person,
          title: "Resume",
          body: "Fugiat pariatur Lorem quis pariatur ullamco eiusmod pariatur elit aute.",
        ),
        SizedBox(height: 10),
        MyExpansion(
          icon: Icons.person,
          title: "About me",
          body: "Culpa elit reprehenderit in elit Lorem ad tempor aliqua.",
        ),
      ],
    );
  }
}

class MyExpansion extends StatefulWidget {
  final IconData icon;
  final String title;
  final String body;

  const MyExpansion({
    required this.icon,
    required this.title,
    required this.body,
    super.key,
  });

  @override
  _MyExpansionState createState() => _MyExpansionState();
}

class _MyExpansionState extends State<MyExpansion> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.white12,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        leading: Icon(
          widget.icon,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        onExpansionChanged: (expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              widget.body,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.black,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.share),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add,color: Colors.blue,),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark),
          label: '',
        ),
      ],
    );
  }
}
