import 'package:reseller/pages/employee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/employee_provider.dart';

class EmployeeAdd extends StatefulWidget {
  @override
  _EmployeeAddState createState() => _EmployeeAddState();
}

class _EmployeeAddState extends State<EmployeeAdd> {
  //KOMENTAR-3: DEFINE VARIABLE
  final TextEditingController _name = TextEditingController();
  final TextEditingController _salary = TextEditingController();
  final TextEditingController _age = TextEditingController();

  FocusNode salaryNode = FocusNode();
  FocusNode ageNode = FocusNode();
  void submit(BuildContext context) {

    
          //MEMANGGIL FUNGSI YANG SUDAH DIDEFINISIKAN DI PROVIDER
      //DENGAN MENGIRIMKAN VALUE DATA NAME, SALARY DAN AGE

      Provider.of<EmployeeProvider>(context, listen: false)
          .storeEmployee(_name.text, _salary.text, _age.text)
          .then((res) {
        //JIKA TRUE
        if (res) {
          //MAKA REDIRECT KE HALAMAN MENAMPILKAN DATA EMPLOYEE
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Employee()));
        } else {
          //TAMPILKAN ALERT
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Add '),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.save,
              color: Colors.white,
            ),
            onPressed: () => submit(context),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: _name,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  ),
                ),
                hintText: 'Nama Pembeli',
              ),
              //JIKA TOMBOL SUBMIT PADA KEYBOARD DITEKAN
              onSubmitted: (_) {
                //MAKA FOCUSNYA AKAN DIPINDAHKAN PADA FORM INPUT SELANJUTNYA
                FocusScope.of(context).requestFocus(salaryNode);
              },
            ),
            TextField(
              controller: _salary,
              focusNode: salaryNode,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  ),
                ),
                hintText: 'Harga',
              ),
              onSubmitted: (_) {
                FocusScope.of(context).requestFocus(ageNode);
              },
            ),
            TextField(
              controller: _age,
              focusNode: ageNode,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pinkAccent,
                  ),
                ),
                hintText: 'jumlah Buku',
              ),
            ),
          ],
        ),
      ),
    );
  }
}