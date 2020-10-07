import 'package:flutter/material.dart';

class TerlarisBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Terlaris Minggu Ini',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.network(
                              "https://cf.shopee.co.id/file/f55bb46841684326b6df730535eaa30b"),
                          ListTile(
                            title: Text('Heading 1'),
                            subtitle: Text('SubHeading 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.network(
                              "https://cf.shopee.co.id/file/f55bb46841684326b6df730535eaa30b"),
                          ListTile(
                            title: Text('Heading 1'),
                            subtitle: Text('SubHeading 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.network(
                              "https://cf.shopee.co.id/file/f55bb46841684326b6df730535eaa30b"),
                          ListTile(
                            title: Text('Heading 1'),
                            subtitle: Text('SubHeading 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.network(
                              "https://cf.shopee.co.id/file/f55bb46841684326b6df730535eaa30b"),
                          ListTile(
                            title: Text('Heading 1'),
                            subtitle: Text('SubHeading 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.network(
                              "https://cf.shopee.co.id/file/f55bb46841684326b6df730535eaa30b"),
                          ListTile(
                            title: Text('Heading 1'),
                            subtitle: Text('SubHeading 1'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
