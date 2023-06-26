import 'package:flutter/material.dart';
import 'package:valencia/pages/registration/registrationPages.dart';
import 'package:valencia/pages/repairPassword/repairPassword.dart';



class LoginRoute extends StatelessWidget{
  const LoginRoute({super.key});


  @override
  Widget build(BuildContext context) {
    final Shader _linearGradient = const LinearGradient(
      colors: [Colors.pink, Colors.deepPurple],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(const Rect.fromLTWH(0.0, 0.0, 320.0, 80.0));

    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
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
      body: Container(
        padding: EdgeInsets.all(32),
        alignment: AlignmentDirectional.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 56),
                  child: Text("Valencia", style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = _linearGradient,
                      fontFamily: "Nunito"
                  ),),
                ),
                Text("Добро пожаловать", style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Nunito"
                ), ),
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
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: SizedBox(
                    width: 328,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(120, 120, 120, 1),
                          fontWeight: FontWeight.w300
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {

                          },
                          icon: Icon(Icons.remove_red_eye),
                        ),
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
                        hintText: 'Пароль',

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
                              ModalRoute.withName("/")
                          );

                        },
                        child: Text("ВХОД")
                    ),
                  ),
                ),
                Container(
                  child:
                  SizedBox(
                    width: 324,
                    height: 46,
                    child:
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(246, 246, 246, 0)),
                            foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(147, 80, 255, 1)),
                            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Color.fromRGBO(147, 80, 255, 1))
                                )
                            )
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text("РЕГИСТРАЦИЯ")
                    ),
                  ),
                ),
                SizedBox(
                  child: TextButton(

                      onPressed: () {
                        Navigator.pushNamed(context, "/recovery");
                      },
                      child: Text("Забыли пароль?", style: TextStyle(
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
      ),

    );
  }



}