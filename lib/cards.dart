import 'package:flutter/material.dart';

class Placard extends StatelessWidget {
  final String to,time,flight;

  Placard(this.to, this.time,this.flight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Color.fromRGBO(0x1f,0x1f, 0x1f, 100),
          ),
          height: MediaQuery.of(context).size.height * 0.12,
          child: ListTile(
            isThreeLine: true,
            leading: CircleAvatar(
                    minRadius: 25.0,
                    maxRadius: 33.0,
                    backgroundImage: AssetImage("assets/images/flight.png"),
                  ),
                  title:Text(
                       to,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(0xe3, 0xe3, 0xe3, 100),
                        ),
                      ),
                     subtitle:Text(
                    flight+'\n'+time,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromRGBO(0x80, 0x80, 0x80, 100),
                    ),
                  ),       ),
          ),
    );
  }
}
