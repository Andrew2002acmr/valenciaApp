


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valencia/datasourse/Procedure.dart';

class Procedures extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _proceduresState();

}

class _proceduresState extends State<Procedures> {

  List<Procedure> procList = [
    Procedure(
        Id: 1,
        name: "Гель-лак",
        desc: "гельлак",
        price: 1200,
        category: "Ногти",
        expenses: 450,
        minute: 60
    ),
    Procedure(
        Id: 2,
        name: "Окрашивание",
        desc: "окрашивание чего-то",
        price: 2000,
        category: "Волосы",
        expenses: 600,
        minute: 120
    ),

  ];

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
      body:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Всего процедур - ${10}", style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 28,
                      fontWeight: FontWeight.w700
                  ),),
                )
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: procList.length,
                      itemBuilder: (context, index) {
                        Procedure proc = procList[index];
                        return Container(

                          child: ListTile(
                            onTap: () {

                            },
                            trailing: Image.asset("assets/images/arrow.png"),
                            title: Text("${proc.name}", style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              fontFamily: "Nunito"
                            ),),
                            subtitle: Text("Стоимость: ${proc.price}"),
                          ),
                        );
                      }
                  )
              ),
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
                      child: Text("Добавить процедуру")
                  ),
                ),
              ),
            ],
          ),

    );

  }

}


