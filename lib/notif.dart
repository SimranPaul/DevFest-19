import 'package:flutter/material.dart';

class Notif extends StatefulWidget {
  @override
  _NotifState createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: status
            ? Icon(Icons.notifications_active)
            : Icon(Icons.notifications_off),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(status
                      ? "Turn Off Notifications?"
                      : "Turn On Notifications?"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("YES"),
                      onPressed: () {
                        setState(() {
                          status = !status;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    FlatButton(
                      child: Text("NO"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
        });
  }
}
