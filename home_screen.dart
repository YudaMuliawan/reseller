import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:reseller/pages/employee.dart';

import 'webview_screen.dart';





class HomeScreen extends StatefulWidget {

  @override

  _HomeScreenState createState() => _HomeScreenState();

}



class _HomeScreenState extends State<HomeScreen> {

  String kode = "";

  var getKode;

  Future scanBarcode() async {

    getKode = await BarcodeScanner.scan();

    setState(() {

      kode = "https://www.instagram.com/yuda_muliawan/";

    });

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text("Reseller Yuda Muliawan"),

        centerTitle: true,

        backgroundColor: Colors.blueGrey,

        elevation: 0.0,

      ),

      body: Column(

        children: [

          Container(

            height: 10,

            decoration: BoxDecoration(

              color: Colors.blueGrey,

            ),

          ),



          Image.network(

              "https://jualbukubisnis.net/wp-content/uploads/2017/03/reseller-milyarder-zain-fikri.png"),

          SizedBox(

            height: 20.0,

          ),

          FlatButton(

            onPressed: () {

              scanBarcode();

            },

            child: Container(

              child: Padding(

                padding: const EdgeInsets.all(40.0),

                child: Center(

                  child: Text(

                    "Info Website, Scan QR",

                    style: TextStyle(

                      color: Colors.white,

                      fontWeight: FontWeight.bold,

                      fontSize: 22,

                    ),

                  ),

                ),

              ),

              decoration: BoxDecoration(

                color: Colors.green,

                borderRadius: BorderRadius.all(Radius.circular(5.0)),

              ),

            ),

          ),

          FlatButton(

            onPressed: kode == ""

                ? () {}

                : () {

              Navigator.push(

                context,

                MaterialPageRoute(

                  builder: (context) => WebScreen(kode),

                ),

              );

            },

            child: Container(

              width: double.infinity,

              child: Padding(

                padding: EdgeInsets.all(10.0),

                child: Center(

                  child: kode == ""

                      ? Text(

                    "Open Website",

                    style: TextStyle(

                      color: Colors.black26,

                      fontStyle: FontStyle.italic,

                      fontSize: 14,

                    ),

                  )

                      : Text(

                    kode,

                    style: TextStyle(

                      color: Colors.teal,

                      fontWeight: FontWeight.w300,

                      fontSize: 16,

                    ),

                  ),

                ),

              ),

              decoration: BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.all(Radius.circular(5.0)),

              ),

            ),
            

          ),
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
                         'Data Pembeli',
                         style:
                         TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),

        ],

      ),

    );

  }

}