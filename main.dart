import 'package:flutter/material.dart';
import 'package:reseller/pages/home_screen.dart';
import './pages/employee.dart';
import 'package:provider/provider.dart';
import 'package:reseller/providers/employee_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => EmployeeProvider(),
        )
      ],
      child: MaterialApp(
        
        home: HomeScreen(),
      ),
    );
  }
}