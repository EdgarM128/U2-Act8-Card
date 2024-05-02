import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PlayStation",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "PlayStation",
            style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.normal,
                fontSize: 28),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              width: 1000,
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("This card is pressed");
                },
                child: Card(
                  elevation: 40,
                  color: Color(0xffffffff),
                  shadowColor: Color(0xff004892),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/persona3reload.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Persona 3 Reload",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Adentrate en la torre tartaro y explora todos sus secretos con epicos combates por turnos.",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left, // Movido aquí
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Container(
                      child: Text(
                        "Juego",
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Precio",
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Text(
                        "ESRB",
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("Persona 3"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("1,299"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("+17"),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("Bloodborne"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("799"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("+18"),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("Spiderman"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("1,699"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("+15"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
