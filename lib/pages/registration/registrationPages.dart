import 'package:flutter/material.dart';
import 'package:valencia/pages/autorize/mainAutorize.dart';


enum UserGroup {master, user}


class RegistrationRoute extends StatefulWidget{
  const RegistrationRoute({Key? key}) : super(key: key);

  @override
  State<RegistrationRoute> createState() => _FirstStep();


}


class _FirstStep extends State<RegistrationRoute>{
  UserGroup? _group = UserGroup.user;

  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return TextButton(
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 255, 255, 1)),
          foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(147, 80, 255, 1)),
          textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
              fontSize: 18
          )),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: (value == index) ? Color.fromRGBO(147, 80, 255, 1) : Color.fromRGBO(147, 80, 255, 0))
              )
          )
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    var stateValue = false;
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 230, 1.0),
      appBar: AppBar(
        title: Text( "Регистрация"),
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
                child: Text("Шаг 1 из 3", style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: Text("Укажите ваши данные", style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                ),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                child:  SizedBox(
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

                      hintText: 'ФИО',

                    ),
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                child:  SizedBox(
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
                margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                child:  SizedBox(
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
                padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child:  Checkbox(
                          value: stateValue,
                          onChanged: (value) {
                            print("123");
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(width: 1.0, color: Color.fromRGBO(147, 80, 255, 1)),
                          ),
                        ),
                      ),
                    ),
                    Text("Согласен с условиями использования", style: TextStyle(
                        fontSize: 12
                    ),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 24, 0, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: SizedBox(
                          width: 150,
                          height: 94,
                          child: CustomRadioButton(
                              "Я - клиент",
                              0)

                      ),
                    ),
                    SizedBox(
                        width: 150,
                        height: 94,
                        child: CustomRadioButton(
                            "Я - мастер",
                            1)

                    )
                  ],
                ),
              ),
              Container(

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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondStepReg()));
                      },
                      child: Text("Далее")
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );



  }



}


class SecondStepReg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SecondStepRegState();

}

class _SecondStepRegState extends State<SecondStepReg>{

  static List choisedCategories = [];
  static List categoriesNames = ["Ногти", "Макияж", "Брови", "Волосы", "Ресницы", "Массаж"];

  Widget CustomCheckBox(String text, int index, Image icon) {
    // selected = false;
    return TextButton(
      onPressed: () {
        setState(() {
          bool selected = choisedCategories.contains(index);
          if (selected) {
            selected = false;
            choisedCategories.remove(index);
          }
          else {
            selected = true;
            choisedCategories.add(index);
          }
        });
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(255, 255, 255, 1)),
          foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(147, 80, 255, 1)),
          textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
              fontSize: 18
          )),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              )
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
  List categories = [];
  @override
  void initState() {
    super.initState();

    categories.addAll([
      CustomCheckBox("Ногти", 0, Image.asset("assets/images/manicure.png")),
      CustomCheckBox("Макияж", 1, Image.asset("assets/images/makeover.png")),
      CustomCheckBox("Брови", 2, Image.asset("assets/images/eyebrow.png")),
      CustomCheckBox("Волосы", 3, Image.asset("assets/images/cutting.png")),
      CustomCheckBox("Ресницы", 4, Image.asset("assets/images/mascara.png")),
      CustomCheckBox("Массаж", 5, Image.asset("assets/images/massage.png"))

    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Регистрация"),
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
                child: Text("Шаг 2 из 3", style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: Text("Укажите ваши данные", style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                ),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                width: 300,
                height: 450,
                child: GridView.builder(
                  itemCount: categories.length,
                  shrinkWrap: false,
                  itemBuilder: (BuildContext context,  int index) {
                    return  Container(
                      margin: index % 2 == 0 ? EdgeInsets.fromLTRB(0, 0, 16, 16) : EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: categories[index],
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color:  choisedCategories.contains(index) ? Color.fromRGBO(147, 80, 255, 1) : Color.fromRGBO(147, 80, 255, 0),
                              width: 2
                          )
                      ),
                    );
                  },
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                ),
              ),
              Container(

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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirdStepReg()));
                      },
                      child: Text("Далее")
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}


class ThirdStepReg extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_ThirdStepRegState();

}

class _ThirdStepRegState extends State<ThirdStepReg>{
  List v = [];

  List<String> variance = [];
  List<int> selectSpec = [];

  Map<String, List> specializations = {
    "Ногти": ["Кератиновое выпрямление", "Стрижки", "Окрашивание", "укладка"],
    "Макияж": ["Мага", "Стрижки", "Окрашивание", "укладка"],
    "Брови": ["Кератиновое выпрямление", "Стрижки", "Окрашивание", "укладка"],
    "Волосы": ["Кератиновое выпрямление", "Стрижки", "Окрашивание", "укладка"],
    "Ресницы": ["Кератиновое выпрямление", "Стрижки", "Окрашивание", "укладка"],
    "Массаж": ["Кератиновое выпрямление", "Стрижки", "Окрашивание", "укладка"]
  };

  Map<String, List> selectedSpec = {

  };
  @override
  void initState(){
    super.initState();

    for (int i=0; i < _SecondStepRegState.choisedCategories.length; i++){
      v.add(_SecondStepRegState.categoriesNames[i]);
      selectedSpec[_SecondStepRegState.categoriesNames[i]] = [];
    }
    print(v.length);
    variance.addAll(["Кератиновое выпрямление", "Стрижки", "Окрашивание", "укладка"]);
    print((26 * variance.length).toDouble());
    // print(specializations[v[0]]);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text( "Регистрация"),
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
        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
                  child: Text("Шаг 3 из 3", style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(

                  margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                  child: Text("Выберите специализацию\n(Одну или несколько)", style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0,0, 0, 50),
                  width: 300,
                  height: 600,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: v.length,
                    itemBuilder: (BuildContext mainContext, int mainIndex) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(v[mainIndex], style: TextStyle(
                                  color: Color.fromRGBO(147, 80, 255, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text("Выбрано 1", style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(147, 80, 255, 1)
                              ),)
                            ],
                          ),
                          Container(
                            width: 300,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: variance.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                          child: Text(specializations[v[mainIndex]]![index], style: TextStyle(
                                              fontSize: 18
                                          ),)
                                      ),
                                      Container(
                                        width: 25,
                                        height: 25,
                                        child: Checkbox(
                                          value: selectedSpec[v[mainIndex]]!.contains(specializations[v[mainIndex]]![index]),
                                          side: MaterialStateBorderSide.resolveWith(
                                                (Set<MaterialState> states) {
                                              if (states.contains(MaterialState.selected)) {
                                                return const BorderSide(color: Color.fromRGBO(147, 80, 255, 1));
                                              }
                                              return const BorderSide(color: Color.fromRGBO(147, 80, 255, 1));
                                            },
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(3)
                                          ),
                                          checkColor: Color.fromRGBO(147, 80, 255, 1),
                                          activeColor: Colors.white,
                                          onChanged: (selected) {
                                            setState(() {
                                              bool a = selectedSpec[v[mainIndex]]!.contains(specializations[v[mainIndex]]![index]);

                                              if(a){
                                                selectedSpec[v[mainIndex]]!.remove(specializations[v[mainIndex]]![index]);
                                              }
                                              else{
                                                selectedSpec[v[mainIndex]]!.add(specializations[v[mainIndex]]![index]);
                                              }

                                            });

                                          },

                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),

              ],
            ),

          ],
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
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginRoute()
                          ),
                        ModalRoute.withName("/")
                      );
                    },
                    child: Text("Завершить регистрацию")
                ),
              ),
            ),
          ],
        )
    );
  }

}

