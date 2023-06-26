import 'package:flutter/material.dart';
import 'package:valencia/main.dart';
import 'package:valencia/datasourse/Recording.dart';
import 'package:valencia/pages/mainPage/profil.dart';
import 'package:valencia/datasourse/User.dart';
import 'package:valencia/datasourse/Procedure.dart';
import 'package:valencia/pages/mainPage/recDitail.dart';
import 'package:valencia/pages/clients/baseClients.dart';
import 'package:valencia/pages/chats/chats.dart';
import 'package:valencia/pages/graphic/masterGraphic.dart';
import 'package:intl/intl.dart';



class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    mainPage(),
    Chats(),
    Graphic(),
    ClientBase(),
    profilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: _currentIndex == 0 ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.message),
              color: _currentIndex == 1 ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.calendar_month_outlined),
              color: _currentIndex == 2 ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.account_box_rounded),
              color: _currentIndex == 3 ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: _currentIndex == 4 ? Colors.blue : Colors.grey,
              onPressed: () {
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class mainPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _mainPageState();

}

class _mainPageState extends State<mainPage>{

  User client = User(
    Id: 1,
    firstName: "Екатерина",
    secondName: "Иванова",
    patronymic: "Батьковна",
    phone: "+78000000000",
    password: "password123",
    photoUrl: "https://example.com/photo.jpg",
    telegram: "@johndoe",
  );

  Procedure proc = Procedure(
      Id: 1,
      name: "наращивание",
      desc: "Наращиваем",
      price: 2000,
      category: "Волосы",
      expenses: 500,
      minute: 60
  );


  List<Recording> recordings = [
    Recording(
      Id: 1,
      clientId: 1,
      masterId: 1,
      dateRec: DateTime(2023, 6, 11, 30),
      procId: 1,
      note: "Note 1",
    ),
    Recording(
      Id: 2,
      clientId: 1,
      masterId: 1,
      dateRec: DateTime(2023, 6, 20, 12, 30),
      procId: 1,
      note: "Note 2",
    ),
    Recording(
      Id: 3,
      clientId: 1,
      masterId: 1,
      dateRec: DateTime(2023, 6, 20, 13, 30),
      procId: 1,
      note: "Note 3",
    ),
    Recording(
      Id: 4,
      clientId: 1,
      masterId: 1,
      dateRec: DateTime(2023, 6, 20, 14, 30),
      procId: 1,
      note: "Note 4",
    ),
    Recording(
      Id: 5,
      clientId: 1,
      masterId: 1,
      dateRec: DateTime(2023, 6, 20, 15, 30),
      procId: 1,
      note: "Note 5",
    ),
  ];




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color.fromRGBO(102, 0, 165, 1), Color.fromRGBO(232, 0, 240, 1)])
          ),
        ),
        centerTitle: true,
      ),
        body: Container(
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            children: [
              Text(
                "Расписание",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Nunito"
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/arrowLeft.png")
                  ),
                  Text("Сегодня, ВТ, 20 июня"),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/arrowRight.png")
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: recordings.length,
                  itemBuilder: (BuildContext context, int index) {
                    Recording recording = recordings[index];
                    return Column(
                      children: [
                        ListTile(
                          leading: Text("${DateFormat("Hm").format(recording.dateRec)}", style: TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold
                          ),),
                          title: Text("${client.secondName} ${client.firstName}", style: TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.bold
                          ),),

                          subtitle:  RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black
                                ),
                                children: [
                                  TextSpan(
                                      text: "${proc.category} - ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      )
                                  ),
                                  TextSpan(
                                      text: "${proc.name}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black
                                      )
                                  )
                                ]
                            ),
                          ),
                          onTap: () {
                            print('Нажат элемент с индексом ${recordings[index].Id}');
                            ditailStateful.rec = recordings[index];


                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ditailStateful()));

                          },
                        ),
                        Divider(
                          color: Colors.grey,
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }

}



