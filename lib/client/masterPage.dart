

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MasterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _masterPageState();

}

class _masterPageState extends State<MasterPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text( "Выбор мастера"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color.fromRGBO(102, 0, 165, 1), Color.fromRGBO(232, 0, 240, 1)])
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
                              Text("Ирина Любимова", style: TextStyle(
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
                                  Text('8-900-921-77-33', style: TextStyle(
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
                                    child: Image.asset("assets/images/Star 6.png"),
                                  ),
                                  Text('5.0', style: TextStyle(
                                      fontFamily: "Nunito",

                                      fontSize: 16
                                  ),),
                                  Text("Отзывы (2)", style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    fontFamily: "Nunito"
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
                  height: 70,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    children: [
                      Icon(Icons.home_outlined, color: Color.fromRGBO(255, 23, 107, 1),),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        width: 300,
                        child: Text("г.Кемерово, ул Веры Волошиной д 19 офис 142", style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16
                        ),
                          softWrap: true,),
                      )

                    ],
                  )
                ),


                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("Портфолио", style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(height: 100 ,width: 100, child: Image.asset("assets/images/portfolio1.png"),),
                      Container(height: 100 ,width: 100, child: Image.asset("assets/images/portfolio2.png"),),
                      Container(height: 100 ,width: 100, child: Image.asset("assets/images/portfolio3.png"),),
                    ],
                  )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("Услуги", style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "- Гелевое покрытие",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),
                      ),
                      Text(
                        "от 2000",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  alignment: AlignmentDirectional.centerStart,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "- Покрытие гель-лаком",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),
                      ),
                      Text(
                        "от 1000",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text("О себе", style: TextStyle(
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
                                child: Text("ЗАПИСАТЬСЯ НА ПРОЦЕДУРУ")
                            ),
                          ),
                        )
                      ],
                    )
                )
              ],
            ),
          ),
        ),

      ),
    );
  }

  TextEditingController textController = TextEditingController(text: "Мастер моделирования ногтей. Работаю на полигеле. В сфере более 6 лет. Работаю с дизайном любой сложности.");
}
