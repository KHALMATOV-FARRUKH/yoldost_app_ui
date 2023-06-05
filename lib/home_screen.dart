import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoldost_app_ui/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.notifications, color: Colors.grey),
                Icon(Icons.messenger_outlined, color: Colors.grey),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "На автомобиле",
              style: TextStyle(
                  color: fontColor3, fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
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
                      child: Icon(Icons.car_crash)),
                  Container(
                      height: 45,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.car_crash)),
                  Container(
                      height: 45,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.car_crash)),
                ],
              ),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(Icons.place),
                      hintText: "Откуда",
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(Icons.place),
                      hintText: "Куда",
                    ),
                  ),
                ),

                Container(
                  height: 80,
                  width: 350,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.red,
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
    );
  }
}
