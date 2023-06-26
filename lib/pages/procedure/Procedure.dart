import 'package:valencia/pages/procedure/procedureDitail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valencia/datasourse/Procedure.dart';

class Procedures extends StatefulWidget {

  static List<Procedure> procList = [
    Procedure(
        Id: 0,
        name: "Креативное выпрямление",
        desc: "Керативное выпрямление",
        price: 4000,
        category: "Волосы",
        expenses: 1000,
        minute: 240
    ),
    Procedure(
        Id: 1,
        name: "Стрижка",
        desc: "Стрижка волос",
        price: 1000,
        category: "Волосы",
        expenses: 100,
        minute: 60
    ),
    Procedure(
        Id: 2,
        name: "Окрашивание",
        desc: "Окрашивание хной, "
            "оттеночным шампунем, профессиональной краской без аммиака или тоником.",
        price: 2000,
        category: "Волосы",
        expenses: 450,
        minute: 120
    ),
    Procedure(
        Id: 3,
        name: "Укладка",
        desc: "Укладка волос",
        price: 1000,
        category: "Волосы",
        expenses: 200,
        minute: 60
    ),
  ];

  @override
  State<StatefulWidget> createState() => _proceduresState();

}

class _proceduresState extends State<Procedures> {



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
                  child: Text("Всего процедур - ${Procedures.procList.length}", style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 28,
                      fontWeight: FontWeight.w700
                  ),),
                )
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: Procedures.procList.length,
                      itemBuilder: (context, index) {
                        Procedure proc = Procedures.procList[index];
                        return Container(

                          child: ListTile(
                            onTap: () {
                              ProcedureDitail.proc = Procedures.procList[index];
                              Navigator.pushNamed(context, "/procedureDitail");
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
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => addProcedure()
                            ),
                            ModalRoute.withName("/procedure")
                        );

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


