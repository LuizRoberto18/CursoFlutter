import 'package:aula01/Widgets/blue_button.dart';
import 'package:aula01/pages/hello_page1.dart';
import 'package:aula01/pages/hello_page2.dart';
import 'package:aula01/pages/hello_page3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello world Flutter"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img(
              "http://1.bp.blogspot.com/_IJOJEPD2sns/TUbXJzcoYTI/AAAAAAAAADQ/6BC82iCziPg/s1600/pointer_200.png"),
          _img(
              "https://www.pets4homes.co.uk/images/articles/727/what-is-a-spitz-dog-5971dbf4204d0.jpg"),
          _img(
              "https://www.pets4homes.co.uk/images/articles/2577/thumbs/finnish-spitz-hereditary-health-and-longevity-54cfb29477eb8.jpg"),
          _img(
              "https://www.pets4homes.co.uk/images/articles/3036/training-the-alaskan-malamute-successfully-559a6a5d88066.jpg"),
          _img(
              "https://www.pets4homes.co.uk/images/articles/4474/why-the-alaskan-malamute-is-so-well-suited-to-work-in-cold-weather-5a12ca2ddb6e2.jpg"),
        ],
      ),
    );
  }

  _buttons(context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton("List View", onPressed: () => _onClickNavigator(context, HelloPage1())),
            BlueButton("Page 2", onPressed:() => _onClickNavigator(context, HelloPage2())),
            BlueButton("Page 3", onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton("Snack", onPressed: _onClickSnack),
            BlueButton("Dialog", onPressed: _onClickDialog),
            BlueButton("Toast", onPressed: _onClickToast),
          ],
        )
      ],
    );
  }
  
  void _onClickNavigator(BuildContext context, Widget page) async{
   String s = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));

    print(">> $s");
  }

  _onClickSnack() {

  }

  _onClickDialog() {

  }

  _onClickToast() {
    
  }

  _text() {
    return Text(
      "Hello  world",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }

  _img(String img) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Image.network(
        img,
        fit: BoxFit.cover,
      ),
    );
  }


}
