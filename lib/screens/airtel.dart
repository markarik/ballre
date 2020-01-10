import 'package:flutter/material.dart';

class AirtelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Center(
              child: Image.asset("assets/airtelhero.png",
                  width: 300.0, height: 200.0),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.5),
              child: Text("Recharge histroy",
                  style: Theme.of(context).textTheme.title),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text("1234 5678 1234 9876"),
                    subtitle: Text("12th Nov 2019"),
                    trailing: Icon(Icons.check_box_outline_blank),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: RawMaterialButton(
                  fillColor: Colors.black,
                  splashColor: Colors.white,
                  elevation: 7.0,
                  constraints:
                      BoxConstraints(minHeight: 40, minWidth: double.infinity),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Scan",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    showAlertDialog(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
  void showAlertDialog(BuildContext context) {

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Choose one: "),
            actions: <Widget>[
              FlatButton(
                child: Text("Camera"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("Gallery"),
                onPressed: () {},
              )
            ],
          );
        });
  }
}
