

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:valencia/datasourse/User.dart';
import 'package:valencia/datasourse/Master.dart';


class profilePage extends StatefulWidget {
  static User user = User(
    Id: 1,
    firstName: "Екатерина",
    secondName: "Иванова",
    patronymic: "Батьковна",
    phone: "8-800-000-00-00",
    password: "password123",
    photoUrl: "https://example.com/photo.jpg",
    telegram: "@br13r13rbwfafw",
  );

  // static Master master = Master(
  //     Id: Id,
  //     procedureId: procedureId,
  //     budget: budget,
  //     userId: userId,
  //     workExp: workExp
  // )

  @override
  State<StatefulWidget> createState() => _profilePageState();

}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
        title: Text("Профиль", style: TextStyle(
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
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 16, 0, 8),
                child: CircleAvatar(
                  child: Image.asset("assets/images/profileAvatar.png"),
                  radius: 39,
                ),
              ),
              Text("${profilePage.user.firstName} ${profilePage.user.secondName}", style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w600
              ),
              ),
              Container(

                margin: EdgeInsets.fromLTRB(16, 54, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Обработчик нажатия для первой кнопки
                        print('Button 1 tapped');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/personal.png"),
                          SizedBox(width: 10),
                          Text('Персональные данные', style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,

                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.fromLTRB(16, 22, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Обработчик нажатия для первой кнопки
                        print('Button 2 tapped');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/book.png"),
                          SizedBox(width: 10),
                          Text('Портфолио', style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,

                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.fromLTRB(16, 22, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Обработчик нажатия для первой кнопки
                        print('Button 3 tapped');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/book.png"),
                          SizedBox(width: 10),
                          Text('Чёрный список', style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,

                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.fromLTRB(16, 22, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // // Обработчик нажатия для первой кнопки
                        // print('Button 4 tapped');

                        Navigator.pushNamed(context, "/budget");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/budget.png"),
                          SizedBox(width: 10),
                          Text('Бюджет', style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,

                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.fromLTRB(16, 22, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Обработчик нажатия для первой кнопки
                        print('Button 5 tapped');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/procedure.png"),
                          SizedBox(width: 10),
                          Text('Процедуры', style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,

                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                margin: EdgeInsets.fromLTRB(16, 22, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Обработчик нажатия для первой кнопки
                        print('Button 6 tapped');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/exit.png"),
                          SizedBox(width: 10),
                          Text('Выйти', style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,

                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )

      ),
    );
  }

}



