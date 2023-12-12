import 'package:flutter/material.dart';
import 'home.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  AppBar _buildAppBar(){
    return AppBar(
        backgroundColor: Colors.deepOrangeAccent[400],
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.cast),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.notification_add),
          SizedBox(
            width: 40,
          )
          ],
        title:   SizedBox(
          height: 100,
          child: Image.asset('lib/images/YouTube-03.png')),
      );
  }

int index = 0;

BottomNavigationBar _bottomTab() {
  return BottomNavigationBar(
    onTap: (int currentIndex)  {
      index = currentIndex;
      setState(() {});
    },
    currentIndex: index,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.subscriptions),
        label: 'Subscriptions',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.library_add_sharp),
        label: 'library',
      ),
    ],
  );
}

  List<Widget> _screen(){
    return const [
      home(),
      Text('Subscriptions'),
      Text('Library')
      ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _screen()[index],
      bottomNavigationBar: _bottomTab(),
    );
  }
}