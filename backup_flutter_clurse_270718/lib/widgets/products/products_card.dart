import 'package:flutter/material.dart';
import './price_tag.dart';
import './address_tag.dart';
import '../ui_elements/title_default.dart';

class ProductCard extends StatelessWidget
  {
    final Map<String, dynamic> product;
    final int productIndex;

    ProductCard(this.product, this.productIndex);

    @override
      Widget build(BuildContext context) 
        {
          return Card(
            child: Column(
              children: <Widget>
                [
                  Image.asset(product['image']),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>
                        [
                          TitleDefault(product['title']),
                          SizedBox(
                            width: 8.0),
                          PriceTag(product[productIndex]['price'].toString())
                        ],
                    ),
                  ),
                  AddressTag('Union Square, San Francisco'),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>
                      [
                        IconButton(
                          icon:Icon(Icons.info),
                          color: Theme.of(context).accentColor,
                          onPressed: () => Navigator
                            .pushNamed<bool>(
                              context, '/product/' + productIndex.toString()),
                        ),
                        IconButton(
                          icon:Icon(Icons.favorite_border),
                          color: Colors.red,
                          onPressed: () => Navigator
                            .pushNamed<bool>(
                              context, '/product/' + productIndex.toString()),
                        )
                      ],
                  )
                ],
            ),
          );
        }
  }