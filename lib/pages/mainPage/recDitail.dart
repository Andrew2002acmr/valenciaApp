import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valencia/datasourse/Recording.dart';
import 'package:valencia/datasourse/User.dart';
import 'package:valencia/datasourse/Procedure.dart';
import 'package:intl/intl.dart';


class ditailStateful extends StatefulWidget {
  static Recording rec = Recording(
    Id: 2,
    clientId: 1,
    masterId: 1,
    dateRec: DateTime(2023, 6, 20, 12, 30),
    procId: 1,
    note: "Note 2",
  );

  static User client = User(
    Id: 1,
    firstName: "Екатерина",
    secondName: "Иванова",
    patronymic: "Батьковна",
    phone: "8-800-000-00-00",
    password: "password123",
    photoUrl: "https://example.com/photo.jpg",
    telegram: "@johndoe",
  );

  static Procedure proc = Procedure(
      Id: 1,
      name: "наращивание",
      desc: "Наращиваем",
      price: 2000,
      category: "Волосы",
      expenses: 500,
      minute: 60
  );
  @override
  State<StatefulWidget> createState() => _ditailState();

}


class _ditailState extends State<ditailStateful> {


  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat("d MMMM HH:mm", "ru");
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
        title: Text("Запись на процедуру", style: TextStyle(
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
        margin: EdgeInsets.all(16),
        child: Stack(

          children: [
            SingleChildScrollView(
              child: SafeArea(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Column(

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
                                    Text("${ditailStateful.client.secondName} ${ditailStateful.client.firstName}", style: TextStyle(
                                        fontFamily: "Nunito",
                                        fontSize: 24,
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
                                        Text('${ditailStateful.client.phone}', style: TextStyle(
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
                        child: Text("Текущая запись", style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          "${dateFormat.format(ditailStateful.rec.dateRec)}",
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 20
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                        alignment: AlignmentDirectional.centerStart,
                        child: Text("Процедура", style: TextStyle(
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
                        child: Text("Примечание", style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
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

                    ],
                  ),
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
                          onPressed: () { },
                          child: Text("Связаться с клиентом")
                      ),
                    ),
                  ),
                  Container(
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
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: Text("Перенести запись")
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )

    );
  }
  TextEditingController textController = TextEditingController(text: ditailStateful.rec.note);
}








