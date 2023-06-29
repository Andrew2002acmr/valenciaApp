import 'package:flutter/material.dart';
import 'package:valencia/datasourse/Master.dart';
import 'package:valencia/datasourse/User.dart';
import 'package:valencia/pages/procedure/procedureDitail.dart';
import 'package:valencia/client/masterPage.dart';


class ProcedureCatalog extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ProcedureCatalogState();

}

class _ProcedureCatalogState extends State<ProcedureCatalog>{

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


          _clientProcedureDetailState.index = index;
          _clientProcedureDetailState.name = text;
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClientProcedureDetail()));
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
  static List categories = [];
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
        title: Text( "Каталог услуг"),
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
      body: Container(
        padding: EdgeInsets.only(top: 16),
        color: Color.fromRGBO(230, 230, 230, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [

                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  width: 300,
                  height: 450,
                  child: GridView.builder(
                    itemCount: categories.length,
                    shrinkWrap: false,

                    itemBuilder: (BuildContext context,  int index) {
                      return  GestureDetector(
                        onTap: () {
                          setState(() {
                          });
                        },
                        child: Container(
                          margin: index % 2 == 0 ? EdgeInsets.fromLTRB(0, 0, 16, 16) : EdgeInsets.fromLTRB(0, 0, 0, 16),
                          child: categories[index],
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                          ),
                        ),
                      );
                    },
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }

}

class ClientProcedureDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _clientProcedureDetailState();

}

class _clientProcedureDetailState extends State<ClientProcedureDetail> {
  static int index = 0;
  static String name = "Ногти";
  List categories = ["Кератиновое выпрямление", "Стрижки", "Окрашивание", "укладка"];
  String desc = "Покрытие гель-лаком, маникюр и т.д.";
  List selectedSpec = [];
  List images = [];
  @override
  void initState() {
    super.initState();

    images.addAll([
      Image.asset("assets/images/manicure.png"),
      Image.asset("assets/images/makeover.png"),
      Image.asset("assets/images/eyebrow.png"),
      Image.asset("assets/images/cutting.png"),
      Image.asset("assets/images/mascara.png"),
      Image.asset("assets/images/massage.png")

    ]);
    print("index = ${index}");
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text( "Каталог услуг"),
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
      body: Container(
        color: Color.fromRGBO(230, 230, 230, 1),
        padding: EdgeInsets.all(16),
        child: Column(

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 70,
                  margin: EdgeInsets.only(right: 16),
                  child: images[index],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${name}", style: TextStyle(
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w700,
                        fontSize: 24
                    ),),
                    Text("${desc}", style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Nunito"
                    ),
                      softWrap: true,),

                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              height: 300,
              width: 300,
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    String category = categories[index];
                    return Container(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${category}", style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 18
                          ),),
                          Container(
                            width: 25,
                            height: 25,
                            child: Checkbox(
                              value: selectedSpec.contains(category),
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
                                  bool a = selectedSpec.contains(category);

                                  if(a){
                                    selectedSpec.remove(category);
                                  }
                                  else{
                                    selectedSpec.add(category);
                                  }

                                });

                              },

                            ),
                          )
                        ],
                      ),
                    );
                  }
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),

              child: SizedBox(
                width: 250,
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
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => clientCard()
                      //   ),
                      // );

                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchMasters()));
                    },
                    child: Text("ПОКАЗАТЬ МАСТЕРОВ")
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

}


class SearchMasters extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _searchMastersState();

}

class _searchMastersState extends State<SearchMasters>{
  List<User> masters = [
    User(
        Id: 0,
        firstName: "Виктория",
        secondName: "Колесникова",
        patronymic: "patronymic",
        phone: "",
        password: "",
        photoUrl: "",
        telegram: ''
    ),
    User(
        Id: 1,
        firstName: "Ирина",
        secondName: "Любимова",
        patronymic: "patronymic",
        phone: "",
        password: "",
        photoUrl: "",
        telegram: ''
    ),
    User(
        Id: 2,
        firstName: "Валентина",
        secondName: "Шкерц",
        patronymic: "patronymic",
        phone: "",
        password: "",
        photoUrl: "",
        telegram: ''
    ),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text( "Каталог услуг"),
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
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Всего мастеров - 3", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: "Nunito"
            ),),
            Text("Ногти - Покрытие гель-лаком", style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 20
            ),),
            Expanded(
                child: Container(
                  height: 70,
                  child: ListView.builder(
                      itemCount: masters.length,
                      itemBuilder: (context, index) {
                        User master = masters[index];
                        return ListTile(
                          leading: Image.asset("assets/images/profileAvatar.png"),

                          title: Text("${master.secondName} ${master.firstName}", style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                          ),),
                          subtitle: RichText(
                            text: TextSpan(
                                text: "На платформе 2 месяца\n",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Nunito",
                                    color: Colors.grey
                                ),
                                children: [
                                  TextSpan(
                                      text: "Стоимость услуги: ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Nunito"
                                      )
                                  ),
                                  TextSpan(
                                      text: "1000 рублей",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Nunito",
                                          color: Colors.green
                                      )
                                  )
                                ]
                            ),

                          ),
                          onTap: () {

                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MasterPage()));
                          },
                        );
                      }
                  ),
                )
            )
          ],
        ),
      )
        
    );
  }

}
