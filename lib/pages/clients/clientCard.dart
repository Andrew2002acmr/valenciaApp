import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valencia/pages/mainPage/recDitail.dart';

import 'package:intl/intl.dart';
import '../../datasourse/User.dart';


class clientCard extends StatefulWidget{
  static User client = User(
      Id: 1,
      firstName: "Ирина",
      secondName: "Любимова",
      patronymic: "Игоревна",
      password: "1wf12f3fa3",
      phone: "88008000000",
      photoUrl: "gesges",
      telegram: "fgw4f3af2fas3"
  );


  @override
  State<StatefulWidget> createState() => _clientCardState();

}

class _clientCardState extends State<clientCard> {

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Удалить пользователя из базы клиентов?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 24, 16, 24),
                      child:  Image.asset("assets/images/profileAvatar.png"),
                    ),
                    Text("${clientCard.client.secondName} ${clientCard.client.firstName}",
                      softWrap: true,
                      style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      fontFamily: "Nunito"
                    ),)
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 12),

                  child: SizedBox(
                    width: 250,
                    height: 46,
                    child:
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(147, 80, 255, 1)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Color.fromRGBO(147, 80, 255, 1))
                                )
                            )
                        ),
                        onPressed: () {
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => LoginRoute()
                          //     ),
                          //     ModalRoute.withName("/")
                          // );

                        },
                        child: Text("Оставить")
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child:
                  SizedBox(
                    width: 250,
                    height: 46,
                    child:
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(246, 246, 246, 0)),
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 123, 123, 1)),
                            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Color.fromRGBO(255, 123, 123, 1))
                                )
                            )
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context, "/signup");
                        },
                        child: Text("УДАЛИТЬ ПОЛЬЗОВАТЕЛЯ")
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {

            _showPopup(context);

            },
              icon: Icon(Icons.delete)
          )
        ],
        title: Text("Карточка клиента", style: TextStyle(
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
      body:SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/images/avatar.png"),
                        radius: 50,),
                      Container(
                          width: 180,
                          margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(

                            children: [
                              Text("${clientCard.client.secondName} ${clientCard.client.firstName}", style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                                softWrap: true,),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                    child: Image.asset("assets/images/phone-ico.png"),
                                  ),
                                  Text('${clientCard.client.phone}', style: TextStyle(
                                      fontFamily: "Nunito",

                                      fontSize: 16
                                  ),)
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                    child: Image.asset("assets/images/bithday.png"),
                                  ),
                                  Text('${DateFormat("dd.MM.y").format(DateTime(1996, 3, 5))}', style: TextStyle(
                                      fontFamily: "Nunito",

                                      fontSize: 16
                                  ),)
                                ],
                              )
                            ],
                          )
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("Последняя запись", style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "${DateFormat("d MMMM H:m").format(ditailStateful.rec.dateRec)}",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 20
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("Последняя процедура", style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "${ditailStateful.proc.category} - ${ditailStateful.proc.name}",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 20
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("Количество посещений", style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "5",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 20
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("Примечание", style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(202, 210, 210, 1.0)
                    ),
                    borderRadius: BorderRadius.circular(8), // Округление углов
                  ),
                  height: 110, // Фиксированная высота
                  child: CupertinoTextField(
                    textAlignVertical: TextAlignVertical.top,
                    controller: textController,
                    maxLines: null, // Многострочный ввод
                    placeholder: 'Введите текст',
                    padding: EdgeInsets.all(8), // Отступы внутри текстового поля
                    decoration: BoxDecoration(
                      color: Colors.transparent, // Прозрачный фон для текстового поля
                    ),
                  ),

                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 12),

                          child: SizedBox(
                            width: 325,
                            height: 46,
                            child:
                            TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(147, 80, 255, 1)),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color.fromRGBO(147, 80, 255, 1))
                                        )
                                    )
                                ),
                                onPressed: () {
                                  // Navigator.pushAndRemoveUntil(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => LoginRoute()
                                  //     ),
                                  //     ModalRoute.withName("/")
                                  // );

                                },
                                child: Text("Связаться с клиентом")
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                          child:
                          SizedBox(
                            width: 324,
                            height: 46,
                            child:
                            TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(246, 246, 246, 0)),
                                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(147, 80, 255, 1)),
                                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Color.fromRGBO(147, 80, 255, 1))
                                        )
                                    )
                                ),
                                onPressed: () {
                                  // Navigator.pushNamed(context, "/signup");
                                },
                                child: Text("Заблокировать пользователя")
                            ),
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        ),

      )
      // Stack(
      //
      //   children: [
      //     ,
      //
      //   ],
      // )

    );
  }
  TextEditingController textController = TextEditingController(text: clientCard.client.telegram);
}


