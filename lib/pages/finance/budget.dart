import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class budgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _budgetState();


}


class _budgetState extends State<budgetPage>{
  DateTime startDate = DateTime(DateTime.now().year, 1, 1);
  DateTime endDate = DateTime.now();
  int countProc = 24;
  double expenses = 6400;
  double income = 12450;

  final TextEditingController _countProcedureController = TextEditingController();
  final TextEditingController _expensesController = TextEditingController();
  final TextEditingController _incomeController = TextEditingController();
  final TextEditingController _resController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _countProcedureController.text = countProc.toString();
    _expensesController.text = expenses.toString();
    _incomeController.text = income.toString();
    _resController.text = (income - expenses).toString();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
        title: Text("Бюджет", style: TextStyle(
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

        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: Text("Отчетный период", style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("С ", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito"
                      ),),
                      GestureDetector(

                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime.now(),
                          ).then((pickedDate) {
                            if (pickedDate != null) {
                              setState(() {
                                startDate = pickedDate;
                              });
                            }
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Icon(Icons.calendar_today),
                              SizedBox(width: 40),
                              Text("${DateFormat("dd.MM.y").format(startDate)}",
                                style: TextStyle(
                                    fontSize: 16
                                ),),
                            ],
                          ),
                        ),
                      ),
                      Text("По ", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Nunito"
                      ),),
                      GestureDetector(

                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: startDate,
                            lastDate: DateTime.now(),
                          ).then((pickedDate) {
                            if (pickedDate != null) {
                              setState(() {
                                endDate = pickedDate;
                              });
                            }
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Icon(Icons.calendar_today),
                              SizedBox(width: 40),
                              Text("${DateFormat("dd.MM.y").format(endDate)}",
                                style: TextStyle(
                                    fontSize: 16
                                ),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: Text(
                    "Количество процедур",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                TextField(
                  controller: _countProcedureController,
                  readOnly: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 24, 0, 12),
                  child: Text(
                    "Расходы",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                TextField(
                  controller: _expensesController,
                  readOnly: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 24, 0, 12),
                  child: Text(
                    "Доходы",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                TextField(
                  controller: _incomeController,
                  readOnly: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 24, 0, 12),
                  child: Text(
                    "Итог за период",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                TextField(
                  controller: _resController,
                  readOnly: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))
                      )
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

}






