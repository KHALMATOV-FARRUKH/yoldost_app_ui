import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoldost_app_ui/colors.dart';
import 'package:yoldost_app_ui/from_where_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child:
                      Icon(Icons.notifications, color: Colors.black, size: 25),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: Icon(Icons.message, color: Colors.black, size: 25),
                ),
              ],
            ),

            Container(
              // color: Colors.greenAccent,

              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "На автомобиле",
                      style: TextStyle(
                          color: fontColor3,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: 44,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(Icons.car_crash, color: Colors.blue)),
                          Container(
                              height: 45,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(Icons.bus_alert_outlined)),
                          Container(
                              height: 45,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(Icons.markunread_mailbox)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Container(
                          // color: Colors.red,
                          height: 70,
                          width: 350,
                          child: TextFormField(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return FromWherePage();
                              }));
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 2.0,
                                ),
                              ),
                              prefixIcon: Icon(Icons.place),
                              labelText: "Откуда",
                              hintText: "Откуда",
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 2.0,
                                ),
                              ),
                              prefixIcon: Icon(Icons.place),
                              hintText: "Куда",
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 2.0,
                                ),
                              ),
                              prefixIcon: Icon(Icons.place),
                              hintText: "Дата",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Найти",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 55),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
