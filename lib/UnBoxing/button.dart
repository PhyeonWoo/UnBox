import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // 아이콘 선택되었을때
      selectedItemColor: Colors.green,
      selectedLabelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

      // 아이콘 선택안되었을때
      unselectedItemColor: Colors.blue,
      unselectedLabelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
      // 선택안되었을때 Text보여주기
      showUnselectedLabels: true,

      onTap: (int index) {
        switch(index) {
          case 0:
            Navigator.pushNamed(context,'0');
          case 1:
            Navigator.pushNamed(context, '/');
          case 2:
            Navigator.pushNamed(context,'/');
          case 3:
            Navigator.pushNamed(context, '/');
          case 4:
            Navigator.pushNamed(context, '/');
          default:
        }
      },
      items: const[
        BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.green,),label: 'test1'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.map,color: Colors.green),label: 'test2'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.free_breakfast,color: Colors.green),label: 'test3'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined,color: Colors.green,),label: 'test4'
        ),
      ],
    );
  }
}