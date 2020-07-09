import 'package:flutter/material.dart';
import 'package:reseller/pages/employee.dart';
import 'package:reseller/pages/home_screen.dart';
import 'package:reseller/main.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {


  


  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
            //backgroundColor: Colors.blue[100],
            appBar: AppBar(
              //backgroundColor: Colors.blue[100],
              centerTitle: true,
              leading: Icon(
                Icons.favorite,
                color: Colors.green,
              ),
              title: Text('HITUNG BMI',style: TextStyle(color: Colors.blue, fontSize: 15),),
             
              backgroundColor: Colors.black12,
                
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => Employee()),
                         );
                       },
                       
                       color: Colors.blue[900],
                        textColor: Colors.red,
                       child: Text(
                         'Catatan',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),


                   Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.of(context).push(
                           
                           MaterialPageRoute(builder: (context) => HomeScreen()),
                         );
                       },
                       
                       color: Colors.blue[900],
                        textColor: Colors.red,
                       child: Text(
                         'Scan Code',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),
                  


                ],
              ),
            ),
          bottomNavigationBar: BottomAppBar(
            //color: Colors.transparen,
            child: Container(
              height: 30,
              color: Colors.red[900],
              alignment: Alignment.center,
              child: Text(
                'Developed by Ida Ayu Windy Prabawanti',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ),
            //elevation: 0,
          ),
        );
  }
}