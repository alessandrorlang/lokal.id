import 'package:flutter/material.dart';
import 'package:submission_dicoding/cashback_banner.dart';
import 'package:submission_dicoding/navigation_bar.dart';
import 'package:submission_dicoding/news_header.dart';
import 'package:submission_dicoding/terlaris_minggu_ini.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'LOKAL.ID',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsHeader(),
            CashbackBanner(),
            TerlarisBanner(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

/*
Row(
        children: <Widget>[
          buildNavBar(Icons.home, 0),
          buildNavBar(Icons.shopping_basket, 1),
          buildNavBar(Icons.account_circle, 2),
        ],
      ),

  Widget buildNavBar(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 3,
        child: Icon(
          icon,
          size: index == _selectedItemIndex ? 35.0 : 30.0,
          color: index == _selectedItemIndex ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Cari Sepatu Compass.."),
    );
  }
}
*/
