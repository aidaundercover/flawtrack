import 'package:flawtrack/views/profile/activity.dart';
import 'package:flutter/material.dart';

import '../const.dart';


class ProfuleCard extends StatefulWidget {
  const ProfuleCard({ Key? key }) : super(key: key);

  @override
  _ProfuleCardState createState() => _ProfuleCardState();
}

class _ProfuleCardState extends State<ProfuleCard> {

  @override

  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children:[
                  Positioned(
                    child: Container(
                    height: width*0.28,
                    width: width*0.28,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    child: Icon(Icons.person, size: width*0.22, color: Color.fromRGBO(255, 235, 164, 1))
                                  ),
                  ),
                  Positioned(
                    right: 4,
                    bottom: 4,
                    child: IconButton(
                      onPressed: () {}, 
                      icon: Icon(Icons.add_a_photo, size: 30, color: Colors.orange[700]))
                    )
                ]
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                    'Aida Abkenova',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    )
                  ),
                  SizedBox(height: 2,),
                  Text(
                    'житель',
                    style: TextStyle(
                      color: Color.fromRGBO(154, 154, 154, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                    )
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  width: width*0.25,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(231, 231, 231, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Пинов',
                            style: TextStyle(
                              color: Color.fromRGBO(154, 154, 154, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 10
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Баллов',
                            style: TextStyle(
                              color: Color.fromRGBO(154, 154, 154, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 10
                            ),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                            ),
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),
              )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Activity()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                      )
                    )
                ),
                child: Container(
                  width: width*0.34,
                  height: 36,
                  alignment:Alignment.center,
                  child: Text(
                    'Активность',
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      )
                    )
                ),
                child: Container(
                  alignment:Alignment.center,
                  width: width*0.34,
                  height: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Изменить',
                        style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                      ),
                      Icon(Icons.arrow_right, size: 30, color: white)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
