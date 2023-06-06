import 'package:flutter/material.dart';

class FromWherePage extends StatelessWidget {
  const FromWherePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 15,
              right: 15,
              bottom: 15,
            ),
            child: Row(

              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back)),
                SizedBox(width: 100),
                Text("Откуда выезжаете"),

              ],
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
                hintText: "Откуда",
              ),
            ),
          ),
        ],

      ),
    );
  }
}
