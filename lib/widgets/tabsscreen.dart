import 'package:flutter/material.dart';

import '../clinics.dart';
import '../doctors.dart';

class Tabsscreen extends StatefulWidget {
  @override
  State<Tabsscreen> createState() => _Tabsscreen();
}

class _Tabsscreen extends State<Tabsscreen> {
  List<Widget> pages = [Clinicslist(), Doctorslist()];
  int _selectedpageindex = 0;
  _selectedpage(int index) {
    setState(() {
      _selectedpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_selectedpageindex],
        bottomNavigationBar: BottomNavigationBar(onTap: _selectedpage, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "CLINICS"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_hospital), label: "DOCTORS")
        ]));
  }
}
