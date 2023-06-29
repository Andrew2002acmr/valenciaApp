import 'dart:convert';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:valencia/client/mainClient.dart';
import 'package:valencia/pages/autorize/mainAutorize.dart';
import 'package:valencia/pages/clients/clientCard.dart';
import 'package:valencia/pages/registration/registrationPages.dart';
import 'package:valencia/pages/repairPassword/repairPassword.dart';
import 'package:valencia/pages/mainPage/mainScreen.dart';
import 'package:valencia/pages/mainPage/recDitail.dart';
import 'package:valencia/pages/profile/profil.dart';
import 'package:valencia/pages/finance/budget.dart';
import 'package:valencia/pages/clients/baseClients.dart';
import 'package:valencia/pages/chats/chats.dart';
import 'package:valencia/pages/procedure/Procedure.dart';
import 'package:valencia/pages/procedure/procedureDitail.dart';
import 'package:valencia/pages/graphic/masterGraphic.dart';
import 'package:valencia/pages/profile/personalData.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:http/http.dart' as http;

void main() {
  initializeDateFormatting('ru', null).then((_) {
    runApp(MyApp());
  });
}


// class Procedure {
//   int id;
//   String name;
//   String description;
//   double price;
//   String category;
//   double expenses;
//
//   Procedure({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.category,
//     required this.expenses,
//   });
//
//   factory Procedure.fromJson(Map<String, dynamic> json) {
//     return Procedure(
//       id: json['id'],
//       name: json['name'],
//       description: json['desc'],
//       price: json['price'],
//       category: json['category'],
//       expenses: json['expenses'],
//     );
//   }
// }
//
// class Recording {
//   int id;
//   int clientId;
//   int masterId;
//   String dateRec;
//   int procId;
//   String note;
//
//   Recording({
//     required this.id,
//     required this.clientId,
//     required this.masterId,
//     required this.dateRec,
//     required this.procId,
//     required this.note,
//   });
//
//   factory Recording.fromJson(Map<String, dynamic> json) {
//     return Recording(
//       id: json['id'],
//       clientId: json['clientId'],
//       masterId: json['masterId'],
//       dateRec: json['dateRec'],
//       procId: json['procId'],
//       note: json['note'],
//     );
//   }
// }


class MyApp extends StatelessWidget{
  static bool autorize = false;
  // final procedureList = ['https://catfact.ninja/fact', 'https://catfact.ninja/fact/2'];
  //
  // static double income = 0;
  // static double expenses = 0;
  //
  // static const apiUrl = 'http://valencia/api/';
  //
  // void getRecordingByDate(String startDate, String endDate, int masterId) async{
  //
  //
  //   final requestUrl = Uri.parse("/recording/" + '$apiUrl?startDate=$startDate&endDate=$endDate&masterId=$masterId');
  //
  //   final response = await http.get(requestUrl);
  //
  //   if (response.statusCode == 200) {
  //     final jsonData = jsonDecode(response.body);
  //
  //     final List<Recording> recordings = [];
  //
  //     for (final record in jsonData) {
  //       final recording = Recording.fromJson(record);
  //       recordings.add(recording);
  //     }
  //
  //     final List<int> procIds = [];
  //
  //     for (final recording in recordings) {
  //       final recordingDate = DateTime.parse(recording.dateRec);
  //       final startDateObj = DateTime.parse(startDate);
  //       final endDateObj = DateTime.parse(endDate);
  //
  //       if (recordingDate.isAfter(startDateObj) && recordingDate.isBefore(endDateObj)) {
  //         procIds.add(recording.procId);
  //       }
  //     }
  //
  //     for (final procId in procIds) {
  //       procedureList.add(apiUrl + "procedure/${procId}");
  //     }
  //   } else {
  //     print('Ошибка запроса: ${response.statusCode}');
  //   }
  //
  //   getProcedures();
  // }
  //
  //
  // void getProcedures() async {
  //
  //   final responses = await Future.wait(
  //       procedureList.map((url) => http.get(Uri.parse(url)))
  //   );
  //
  //   final List<Procedure?> procedures = responses.map((response) {
  //     if (response.statusCode == 200) {
  //       final jsonData = jsonDecode(response.body);
  //       return Procedure.fromJson(jsonData);
  //     } else {
  //       return null;
  //     }
  //   }).toList();
  //
  //   for (final procedure in procedures) {
  //     if (procedure != null) {
  //       MyApp.income += procedure.price; // Прибавление к доходам мастера
  //       MyApp.expenses += procedure.expenses; // Прибавление к расходам
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // getRecordingByDate("1-12-2021", "5-12-2021", 2);



    return MaterialApp(
      title: "valencia",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      // initialRoute: autorize ? "/" : "/login",
      // home: autorize ? LoginRoute() : RegistrationRoute(),
      routes: {
        "/": (BuildContext context) => autorize ? ClientHomePage() : LoginRoute() ,
        "/login": (BuildContext context) => LoginRoute(),
        "/signup": (BuildContext context) => RegistrationRoute(),
        "/recovery": (BuildContext context) => RepairPassRoute(),
        "/recDiail": (BuildContext context) => ditailStateful(),
        "/profile": (BuildContext context) => profilePage(),
        "/budget": (BuildContext context) => budgetPage(),
        "/baseClient": (BuildContext context) => ClientBase(),
        "/client": (BuildContext context) => clientCard(),
        "/chats": (BuildContext context) => Chats(),
        "/procedure": (BuildContext context) => Procedures(),
        "/procedureDitail": (BuildContext context) => ProcedureDitail(),
        "/addProcedure": (BuildContext context) => addProcedure(),
        "/graphic": (BuildContext context) => Graphic(),
        "/personal": (BuildContext context) => PersonalData(),
        "/personalEdit": (BuildContext context) => editPersonalData()

      },
    );


  }

}




