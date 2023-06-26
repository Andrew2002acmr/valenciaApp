

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../datasourse/Procedure.dart';

class ProcedureDitail extends StatefulWidget {
  static Procedure proc = Procedure(
      Id: 0,
      name: "name",
      desc: "desc",
      price: 0,
      category: "",
      expenses: 0,
      minute: 0
  );

  @override
  State<StatefulWidget> createState() => _procedureDitailState();

}

class _procedureDitailState extends State<ProcedureDitail> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Процедуры", style: TextStyle(
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
      body: SingleChildScrollView(

        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 40,
                child: Text("Наименование",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: "Nunito"
                  ),
                )
              ),
              TextField(
                // controller: _countProcedureController,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                  height: 40,
                  child: Text("Подробное описание",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "Nunito"
                    ),)
              ),
              TextField(
                // controller: _countProcedureController,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                  height: 40,
                  child: Text("Стоимость",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "Nunito"
                    ),)
              ),
              TextField(
                // controller: _countProcedureController,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                  height: 40,
                  child: Text("Расход на процедуру",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "Nunito"
                    ),)
              ),
              TextField(
                // controller: _countProcedureController,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                  height: 40,
                  child: Text("Время процедуры",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "Nunito"
                    ),)
              ),
              TextField(
                // controller: _countProcedureController,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                ),
              ),
              SizedBox(height: 8.0),

              // Spacer(),
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
                              child: Text("Сохранить изменения")
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
                              child: Text("Удалить процедуру")
                          ),
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        )
      )

    );

  }

}


