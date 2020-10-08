import 'package:flutter/material.dart';

class TerlarisBanner extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Container ItemList(String imageSrc, String heading, String subHeading) {
    return Container(
      decoration: BoxDecoration(),
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageSrc, fit: BoxFit.fitWidth),
            ListTile(
              title:
                  Text(heading, style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(subHeading),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
            height: 280,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ItemList(
                      "https://cf.shopee.co.id/file/f55bb46841684326b6df730535eaa30b",
                      'Patroban Ivan Black White Low',
                      'Rp. 200.000'),
                  ItemList(
                      "https://ecs7.tokopedia.net/img/cache/700/product-1/2020/2/13/52356228/52356228_c5783b61-321b-44db-b311-8bacb29f3ce5_1000_1000",
                      'Animous Coach Jacket Toori',
                      'Rp. 250.000'),
                  ItemList(
                      "https://cdn.shopify.com/s/files/1/0018/4480/5689/products/FR2_XlargeRabbitsTeeWhite_300x.jpg?v=1583488090",
                      'Fxxking Rabbits Jacket',
                      'Rp. 400.000'),
                  ItemList(
                      "https://cdn.shopify.com/s/files/1/0054/6737/3638/products/FaleSlingBagBlack_1_30984380-6a56-463c-b940-c0df55ba6d0b_grande.jpg?v=1595822807",
                      'LIVEHAF Fale Sling Bag Black',
                      'Rp. 125.000'),
                  ItemList(
                      "https://thanksinsomniastore.com/wp-content/uploads/2020/09/thxnsmncatalog_119425407_350882656100642_8162091074964263280_n.jpg",
                      'Hoodie Valentine Black - THXNSMNIA',
                      'Rp. 275.000'),
                  ItemList(
                      "https://s0.bukalapak.com/img/02164161641/large/Hoodie_Box_Green_White.jpg",
                      'Erigo Coach Jacket Feel Free',
                      'Rp. 450.000'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
