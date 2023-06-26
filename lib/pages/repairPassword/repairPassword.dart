import 'package:flutter/material.dart';
import 'package:valencia/pages/autorize/mainAutorize.dart';


// class RepairPassRoute extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text( "Восстановить пароль"),
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   begin: Alignment.centerRight,
//                   end: Alignment.centerLeft,
//                   colors: [Color.fromRGBO(102, 0, 165, 1), Color.fromRGBO(232, 0, 240, 1)])
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(child: Text("Забыли пароль блять")),
//     );
//   }
//
//
// }


class RepairPassRoute extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _FirstStepRepPasState();

}


class _FirstStepRepPasState extends State<RepairPassRoute> {

  
  static String phone = "+79134284508";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Восстановление пароля"),
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: Text("Введите номер телефона", style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0, 24, 0, 12),
                child: SizedBox(
                  width: 328,
                  height: 50,
                  child: TextFormField(
                    onChanged: (String text) {
                      String x;
                      try{
                        x = text;
                      }
                      catch(error){
                        print("Ошибка");
                      }

                    },
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(120, 120, 120, 1),
                        fontWeight: FontWeight.w300
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(
                          246, 246, 246, 1),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Color.fromRGBO(246, 246, 246, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Color.fromRGBO(147, 80, 255, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),

                      hintText: 'Телефон',

                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondStepRepPas()));
                      },
                      child: Text("Далее")
                  ),
                ),
              ),
              Container(
                  width: 300,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: Flexible(
                    child: Text("Вам будет отправлен СМС с кодом потверждения", style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
            ],
          )

        ],
      ),
    );
  }

}



class SecondStepRepPas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondStepRepPasState();

}

class _SecondStepRepPasState extends State<SecondStepRepPas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Восстановление пароля"),
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 328,
                margin: EdgeInsets.fromLTRB(0, 124, 0, 16),
                child:  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: "Мы уже отправили сообщение с кодом подтверждения "
                                  "на указанный номер, заканчивающийся на "
                          ),
                          TextSpan(
                              text: "${_FirstStepRepPasState.phone.substring(_FirstStepRepPasState.phone.length - 4, _FirstStepRepPasState.phone.length - 2)} -"
                                  "${_FirstStepRepPasState.phone.substring(_FirstStepRepPasState.phone.length - 2)}",
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              )
                          )
                        ]
                    ),
                  ),

              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: SizedBox(
                  width: 328,
                  height: 50,
                  child: TextFormField(
                    onChanged: (String text) {
                      String x;
                      try{
                        x = text;
                      }
                      catch(error){
                        print("Ошибка");
                      }

                    },
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(120, 120, 120, 1),
                        fontWeight: FontWeight.w300
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(
                          246, 246, 246, 1),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Color.fromRGBO(246, 246, 246, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Color.fromRGBO(147, 80, 255, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),

                      hintText: 'Введите код',

                    ),
                  ),
                ),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirdStepRepPass()));
                      },
                      child: Text("Отправить код потверждения")
                  ),
                ),
              ),
              SizedBox(
                child: TextButton(

                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => RepairPassRoute()));

                    },
                    child: Text("Не пришёл код?", style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(147, 80, 255, 1),
                        decoration: TextDecoration.underline
                    ),)
                ),
              )
            ],
          )

        ],
      ),
    );
  }

}


class ThirdStepRepPass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ThirdStepRepPassState();

}

class _ThirdStepRepPassState extends State<ThirdStepRepPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Восстановление пароля"),
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                width: 328,
                margin: EdgeInsets.fromLTRB(0, 32, 0, 16),
                child:Text(
                    "Введите новый пароль."
                    "Он должен соответствовать следующим требованиям:",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.4
                  ),
                )
              ),
              Container(
                  width: 328,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child:Text(
                  "1. Не менее 8 символов\n"
                  "2. Заглавные и строчные буквы\n"
                  "3. Спец. символы",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                      fontWeight: FontWeight.w400,
                      height: 1.4
                    ),
                  )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: SizedBox(
                  width: 328,
                  height: 50,
                  child: TextFormField(
                    onChanged: (String text) {
                      String x;
                      try{
                        x = text;
                      }
                      catch(error){
                        print("Ошибка");
                      }

                    },
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(120, 120, 120, 1),
                        fontWeight: FontWeight.w300
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(
                          246, 246, 246, 1),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Color.fromRGBO(246, 246, 246, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Color.fromRGBO(147, 80, 255, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),

                      hintText: 'Новый пароль',

                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: SizedBox(
                  width: 328,
                  height: 50,
                  child: TextFormField(
                    onChanged: (String text) {
                      String x;
                      try{
                        x = text;
                      }
                      catch(error){
                        print("Ошибка");
                      }

                    },
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(120, 120, 120, 1),
                        fontWeight: FontWeight.w300
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(
                          246, 246, 246, 1),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0, color: Color.fromRGBO(246, 246, 246, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Color.fromRGBO(147, 80, 255, 1)),
                          borderRadius: BorderRadius.all(Radius.circular(10))//<-- SEE HERE
                      ),

                      hintText: 'Ещё раз новый пароль',

                    ),
                  ),
                ),
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
                                builder: (context) => LoginRoute()
                            ),
                            ModalRoute.withName("/login")
                        );
                      },
                      child: Text("Сохранить пароль")
                  ),
                ),
              )
            ],
          )

        ],
      ),
    );
  }

}




