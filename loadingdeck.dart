import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            color: Colors.yellow[100],
            alignment: Alignment.center,
            child: Text('Backgroun')),
        Column(
          children: <Widget>[
            SizedBox(height: 30.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0)
                    ]),
                margin: EdgeInsets.all(48.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://avatars3.githubusercontent.com/u/57723319?s=460&u=2611e684ba21f6465958e5cb72f321aa1d6d8fff&v=4'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            )),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "A Bold Punchline",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Some random text,which can be some sort of description about the app",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey.shade400, fontSize: 14.0),
                    ),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              width: double.infinity,
              child: RaisedButton(
                padding: const EdgeInsets.all(16.0),
                textColor: Colors.white,
                color: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                onPressed: () {
                  Navigator.pushNamed(context, "/second");
                },
                child: Text(
                  " Start",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
                ),
              ),
            ),
            SizedBox(height: 40.0),
          ],
        )
      ],
    );
  }
}
