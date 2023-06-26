import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import '../../datasourse/User.dart';
import 'package:valencia/pages/clients/clientCard.dart';

class ClientBase extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _clientsBaseState();

}

class _clientsBaseState extends State<ClientBase> {
  static List<User> listUsers = [
    User(
      Id: 1,
      firstName: "Ирина",
      secondName: "Любимова",
      patronymic: "Игоревна",
      password: "1wf12f3fa3",
      phone: "88008000000",
      photoUrl: "gesges",
      telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 2,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 3,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 4,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 5,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 6,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 7,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 8,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 9,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),
    User(
        Id: 10,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "Игоревна",
        password: "1wf12f3fa3",
        phone: "88008000000",
        photoUrl: "gesges",
        telegram: "fgw4f3af2fas3"
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
        title: Text("База клиентов", style: TextStyle(
            fontSize: 20,
            color: Colors.white
        ),),
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
        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
        alignment: Alignment.centerLeft,
        child: Column(

          children: [
            Text("Всего клиентов - ${listUsers.length}",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: "Nunito"
            ),),
            Expanded(
                child: ListView.builder(
                  itemCount: listUsers.length,
                  itemBuilder: (context, index) {
                    User user = listUsers[index];
                    return Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: ListTile(
                        onTap: () {

                          print('Нажат элемент с индексом ${listUsers[index].firstName}');

                          clientCard.client = listUsers[index];
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => clientCard()));
                        },
                        trailing: Image.asset("assets/images/arrow.png"),
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("assets/images/avatar.png"),
                        ),
                        subtitle: Text("Последнее посещение ${DateFormat("dd.MM.y").format(DateTime.now())}", style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Nunito"
                        ),),
                        title: Row(
                          children: [
                            Text('${user.secondName} ${user.firstName}', style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w700
                            ),),
                          ],
                        )
                      ),
                    );
                  },
                )
            )
          ],
        ),
      ),
    );
  }

}




