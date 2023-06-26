

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valencia/pages/procedure/Procedure.dart';
import 'package:valencia/datasourse/Procedure.dart';

class ProcedureDitail extends StatefulWidget {
  static Procedure proc = Procedure(
      Id: 0,
      name: "Окрашивание",
      desc: "Окрашивание хной, "
            "оттеночным шампунем, профессиональной краской без аммиака или тоником.",
      price: 2000,
      category: "Волосы",
      expenses: 450,
      minute: 120
  );

  @override
  State<StatefulWidget> createState() => _procedureDitailState();

}

class _procedureDitailState extends State<ProcedureDitail> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _expensesController = TextEditingController();
  final TextEditingController _minuteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = ProcedureDitail.proc.name.toString();
    _descController.text = ProcedureDitail.proc.desc.toString();
    _priceController.text = ProcedureDitail.proc.price.toString();
    _expensesController.text = ProcedureDitail.proc.expenses.toString();
    _minuteController.text = ProcedureDitail.proc.minute.toString();
  }

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
                controller: _nameController,
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
                controller: _descController,
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
                controller: _priceController,
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
                controller: _expensesController,
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
                controller: _expensesController,
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
                                Procedures.procList.remove(ProcedureDitail.proc);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  Procedures())
                                );
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


class addProcedure extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _addProcedureState();

}


class _addProcedureState extends State<addProcedure> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _expensesController = TextEditingController();
  final TextEditingController _minuteController = TextEditingController();

  @override
  void initState() {
    super.initState();

  }

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
                    controller: _nameController,
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
                    controller: _descController,
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
                    controller: _priceController,
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
                    controller: _expensesController,
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
                    controller: _minuteController,
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

                                    Procedure proc = Procedure(
                                        Id: Procedures.procList.length,
                                        name: _nameController.text,
                                        desc: _descController.text,
                                        price: double.parse(_priceController.text),
                                        category: "Волосы",
                                        expenses: double.parse(_expensesController.text),
                                        minute: int.parse(_minuteController.text)
                                    );
                                    Procedures.procList.add(proc);
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  Procedures())
                                    );
                                  },
                                  child: Text("Сохранить изменения")
                              ),
                            ),
                          )
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