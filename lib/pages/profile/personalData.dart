


import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class editPersonalData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _editPersonalDataState();

}

class _editPersonalDataState extends State<editPersonalData> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("Персональные данные"),
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
        body: SingleChildScrollView(

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),  // Отступы по бокам
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),  // Отступ между полями
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),  // Отступ между полями
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),  // Отступ между полями
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),  // Отступ между полями
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
              ],
            ),
          )

    )
    );
  }

  TextEditingController textController = TextEditingController(text: "123");
}

class PersonalData extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _peronalDataState();
}

class _peronalDataState extends State<PersonalData> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {

              Navigator.pushNamed(context, "/personalEdit");
            },
            icon: Icon(Icons.edit))
        ],
        title: Text("Персональные данные"),
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
      body: SingleChildScrollView(

        child: Padding(

          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(

                children: [
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    child: Image.asset("assets/images/profileAvatar.png", width: 100, height: 100,),
                  ),
                  Column(
                    children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 16 ),
                      child: DottedBorder(
                          color: Colors.grey,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(4),
                          // dashPattern: [10,5,10,5,10,5],
                          child: SizedBox(

                            width: 202,
                            height: 46,
                            child:
                            TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(221, 221, 221, 1)),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),

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
                                child: Text("Загрузить фото", style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color.fromRGBO(123, 123, 123, 1)
                                ),)
                            ),
                          )),
                    ),
                      SizedBox(
                        width: 202,
                        height: 46,
                        child:
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(246, 246, 246, 0)),
                                foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 123, 123, 1)),
                                textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        side: BorderSide(color: Color.fromRGBO(255, 123, 123, 1))
                                    )
                                )
                            ),
                            onPressed: () {
                              // Navigator.pushNamed(context, "/signup");
                            },
                            child: Text("УДАЛИТЬ ФОТО", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"
                            ),)
                        ),
                      ),
                    ],
                  ),

                ],

              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(

                // controller: _countProcedureController,
                readOnly: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide.none
                    )
                ),
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(

                  // controller: _countProcedureController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(

                  // controller: _countProcedureController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(

                  // controller: _countProcedureController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(

                  // controller: _countProcedureController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(

                  // controller: _countProcedureController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
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
                )
              )
              // Expanded(
              //   child: ,
              // )
            ],

          ),
        ),
      )

    );
  }

  TextEditingController textController = TextEditingController(text: "123");
}

