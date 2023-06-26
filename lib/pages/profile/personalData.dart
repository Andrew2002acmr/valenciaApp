


import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valencia/datasourse/User.dart';
import 'package:valencia/datasourse/Master.dart';

class editPersonalData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _editPersonalDataState();

}

class _editPersonalDataState extends State<editPersonalData> {

  final TextEditingController _secondNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _expController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _secondNameController.text = PersonalData.userMaster.secondName.toString();
    _firstNameController.text = PersonalData.userMaster.firstName.toString();
    _cityController.text = PersonalData.master.city.toString();
    _addressController.text = PersonalData.master.address.toString();
    _phoneNumberController.text = PersonalData.userMaster.phone.toString();
    _emailController.text = PersonalData.master.email.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text("Персональные данные"),
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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: TextField(

                    controller: _cityController,
                    readOnly: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: TextField(

                    controller: _addressController,
                    readOnly: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: TextField(

                    controller: _phoneNumberController,
                    readOnly: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: TextField(

                    controller: _emailController,
                    readOnly: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 1,
                          color: Color.fromRGBO(202, 210, 210, 1.0)
                      ),
                      borderRadius: BorderRadius.circular(8), // Округление углов
                    ),
                    height: 110, // Фиксированная высота
                    child: CupertinoTextField(
                      textAlignVertical: TextAlignVertical.top,
                      controller: _expController,
                      maxLines: null, // Многострочный ввод
                      placeholder: 'Введите текст',
                      padding: EdgeInsets.all(8), // Отступы внутри текстового поля
                      decoration: BoxDecoration(
                        color: Colors.transparent, // Прозрачный фон для текстового поля
                      ),
                    )
                )
              ],
            ),
          )

    ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
          ],
        )
    );
  }

  TextEditingController textController = TextEditingController(text: "123");
}

class PersonalData extends StatefulWidget {
  static User userMaster = User(
      Id: 0,
      firstName: "Иванова",
      secondName: "Екатерина",
      patronymic: "Ивановна",
      phone: "89000000000",
      password: "123456",
      photoUrl: "photoUrl",
      telegram: "telegram"
  );

  static Master master = Master(
      Id: 0,
      procedureId: 0,
      budget: 100,
      userId: 0,
      workExp: "Я занимаюсь ноготочками на протяжении 5 лет. Делаю дизайны любой сложности, работаю с любыми ногтями.",
      address: "Ул. Соборная 19 офис 120",
      email: "stalker228@mail.ru",
      city: "г.Кемерово"
  );

  @override
  State<StatefulWidget> createState() => _peronalDataState();
}

class _peronalDataState extends State<PersonalData> {

  final TextEditingController _secondNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _expController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _secondNameController.text = PersonalData.userMaster.secondName.toString();
    _firstNameController.text = PersonalData.userMaster.firstName.toString();
    _cityController.text = PersonalData.master.city.toString();
    _addressController.text = PersonalData.master.address.toString();
    _phoneNumberController.text = PersonalData.userMaster.phone.toString();
    _emailController.text = PersonalData.master.email.toString();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {

              Navigator.pushNamed(context, "/personalEdit");
            },
            icon: Icon(Icons.edit))
        ],
        title: Text("Персональные данные"),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(

                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(right: 28),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset("assets/images/profileAvatar.png"),
                    ),
                  ),
                  Column(
                    children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 16 ),
                      child: DottedBorder(
                          color: Colors.grey,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(4),
                          child: SizedBox(
                            width: 202,
                            height: 46,
                            child:
                            TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(221, 221, 221, 1)),
                                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),

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
                                child: Text("Загрузить фото", style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color.fromRGBO(123, 123, 123, 1)
                                ),)
                            ),
                          )),
                    ),
                      SizedBox(
                        width: 202,
                        height: 46,
                        child:
                        TextButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(246, 246, 246, 0)),
                                foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 123, 123, 1)),
                                textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        side: BorderSide(color: Color.fromRGBO(255, 123, 123, 1))
                                    )
                                )
                            ),
                            onPressed: () {
                              // Navigator.pushNamed(context, "/signup");
                            },
                            child: Text("УДАЛИТЬ ФОТО", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Nunito"
                            ),)
                        ),
                      ),
                    ],
                  ),

                ],

              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
              child: TextField(

                controller: _secondNameController,
                readOnly: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide.none
                    )
                ),
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  controller: _firstNameController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  controller: _cityController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  controller: _addressController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  controller: _phoneNumberController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  controller: _emailController,
                  readOnly: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(202, 210, 210, 1.0)
                  ),
                  borderRadius: BorderRadius.circular(8), // Округление углов
                ),
                height: 110, // Фиксированная высота
                child: CupertinoTextField(
                  textAlignVertical: TextAlignVertical.top,
                  controller: _expController,
                  maxLines: null, // Многострочный ввод
                  placeholder: 'Введите текст',
                  padding: EdgeInsets.all(8), // Отступы внутри текстового поля
                  decoration: BoxDecoration(
                    color: Colors.transparent, // Прозрачный фон для текстового поля
                  ),
                )
              )
              // Expanded(
              //   child: ,
              // )
            ],

          ),
        ),
      )

    );
  }

  // TextEditingController textController = TextEditingController(text: "123");
}

