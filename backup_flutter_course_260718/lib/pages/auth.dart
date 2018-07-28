import 'package:flutter/material.dart';
import './products.dart';

class AuthPage extends StatelessWidget
  {
    @override
      Widget build(BuildContext context) 
        {
          return Scaffold(
                    appBar:AppBar(
                      title: Text('Login'),
                    ),
                    body: Container(
                      margin: EdgeInsets.all(10.0), 
                      child: ListView(
                        children: <Widget>
                          [
                            TextField(),
                            TextField(),
                            RaisedButton(
                              child: Text('LOGIN'),
                                onPressed: () 
                                  {
                                    Navigator.pushReplacementNamed(
                                      context, '/products');
                                  }
                            ),
                          ],
                      ),
                  ),
                  );
        }
  }