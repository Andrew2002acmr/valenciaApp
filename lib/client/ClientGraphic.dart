import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valencia/datasourse/Recording.dart';
import 'package:valencia/datasourse/Procedure.dart';
import 'package:valencia/datasourse/User.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class ClientGraphic extends StatefulWidget {
  static List<Procedure> procList = [
    Procedure(
        Id: 0,
        name: "Кератиновое окрашивание",
        desc: "Наращивание",
        price: 1200,
        category: "Волосы",
        expenses: 640,
        minute: 60
    ),
    Procedure(
        Id: 1,
        name: "Укладка",
        desc: "дизайн",
        price: 1500,
        category: "Волосы",
        expenses: 100,
        minute: 60
    ),
  ];

  static List<User> clientList = [
    User(
      Id: 1,
      firstName: "Валерия",
      secondName: "Савина",
      patronymic: "Евгеньевна",
      phone: "+78000000000",
      password: "password123",
      photoUrl: "https://example.com/photo.jpg",
      telegram: "@johndoe",
    )
  ];

  static List<Recording> recList = [
    Recording(
        Id: 1,
        clientId: 0,
        masterId: 0,
        dateRec: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 11, 30),
        procId: 0,
        note: "Note 1"
    )
  ];

  @override
  State<StatefulWidget> createState() => _clientGraphicState();

}


class _clientGraphicState extends State<ClientGraphic> {
  final List<String> items = [
    'Январь',
    'Февраль',
    'Март',
    'Апрель',
    'Май',
    'Июнь',
    'Июль',
    'Август',
    'Сентябрь',
    'Октябрь',
    'Ноябрь',
    'Декабрь',
  ];

  List<String> days = [];
  late PageController _pageController;
  late PageController _daysController;
  double _currentPage = DateTime.now().month.toDouble() - 1;
  double _currentDay = DateTime.now().day.toDouble() - 1;

  @override
  void initState() {
    super.initState();
    initializeDateFormatting('ru', null);
    _pageController = PageController(initialPage: _currentPage.toInt(), viewportFraction: 0.35);
    _daysController = PageController(initialPage: _currentDay.toInt(), viewportFraction: 0.35);
    _daysController.addListener(() {
      setState(() {
        _currentDay = _daysController.page!;
      });
    });
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
        updateDays();
      });
    });
    updateDays();
  }

  void updateDays() {
    var now = DateTime.now();
    var selectedMonth = _currentPage.toInt() + 1;
    var selectedYear = now.year;
    days = getDaysOfMonth(selectedMonth, selectedYear);
  }

  List<String> getDaysOfMonth(int month, int year) {
    var daysOfMonth = <String>[];
    var totalDays = DateTime(year, month + 1, 0).day;
    var formatter = DateFormat('E', 'ru');
    var dayAbbreviations = {
      1: 'Пн',
      2: 'Вт',
      3: 'Ср',
      4: 'Чт',
      5: 'Пт',
      6: 'Сб',
      7: 'Вс',
    };
    for (var i = 1; i <= totalDays; i++) {
      var day = DateTime(year, month, i);
      var formattedDay = formatter.format(day);
      var abbreviatedDay = dayAbbreviations[day.weekday];
      daysOfMonth.add(abbreviatedDay!);
    }
    return daysOfMonth;
  }

  @override
  void dispose() {
    _pageController.dispose();
    _daysController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Расписание",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(102, 0, 165, 1),
                Color.fromRGBO(232, 0, 240, 1),
              ],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 40,
              child: PageView.builder(
                controller: _pageController,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      double value = 1.0;
                      if (_pageController.position.haveDimensions) {
                        value = _currentPage - index;
                        value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                      }
                      return Center(
                        child: SizedBox(
                          height: Curves.easeInOut.transform(value) * 150,
                          width: Curves.easeInOut.transform(value) * 100,
                          child: child,
                        ),
                      );
                    },
                    child: GestureDetector(
                      onTap: () {
                        print('Selected: ${items[index]}');
                      },
                      child: Card(
                        elevation: 0,
                        child: Center(
                          child: Text(
                            items[index],
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        color: Colors.white, // Remove the background color

                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 60,
              child: PageView.builder(
                controller: _daysController,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return AnimatedBuilder(
                    animation: _daysController,
                    builder: (context, child) {
                      double value = 1.0;
                      if (_daysController.position.haveDimensions) {
                        value = _currentDay - index;
                        value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                      }
                      return Center(
                        child: SizedBox(
                          height: Curves.easeInOut.transform(value) * 150,
                          width: Curves.easeInOut.transform(value) * 70,
                          child: child,
                        ),
                      );
                    },
                    child: GestureDetector(
                      onTap: () {
                        print('Selected: ${days[index]}');
                      },
                      child: Card(
                        elevation: 0,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                days[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Nunito",
                                ),
                              ),
                              _currentDay.toInt() == index
                                  ? Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(147, 80, 255, 1),
                                ),
                                child: Center(
                                  child: Text(
                                    "${index + 1}",
                                    style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                                  : Text(
                                "${index + 1}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Nunito",
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        color: Colors.transparent, // Remove the background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide.none, // Remove the border
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ClientGraphic.recList.length, // Замените на реальное количество элементов
                itemBuilder: (context, index) {
                  Recording rec = ClientGraphic.recList[index];
                  User client = ClientGraphic.clientList[rec.clientId];
                  Procedure procedure = ClientGraphic.procList[rec.procId];
                  return Column(

                    children: [
                      ListTile(
                        trailing: Image.asset("assets/images/ph_chat-bold.png"),
                        leading: Text("${DateFormat("H:m").format(rec.dateRec)}",
                          style: TextStyle(
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w700,
                              fontSize: 16
                          ),),
                        title: Text('${client.secondName} ${client.firstName}', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Nunito"
                        ),),
                        subtitle: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                              children: [
                                TextSpan(
                                    text: "${procedure.category} - ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    )
                                ),
                                TextSpan(
                                    text: "${procedure.name}\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black
                                    )
                                ),
                                TextSpan(
                                    text: "г. Кемерово, ул Соборная, д. 19 офис 120",
                                    style: TextStyle(
                                      fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black
                                    )
                                )
                              ]
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey,)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}

