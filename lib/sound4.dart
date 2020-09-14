import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:eye_ear/sound5.dart';
import 'package:eye_ear/main.dart';
class Sound4 extends StatefulWidget {
  @override
  _Sound4State createState() => _Sound4State();
}

class _Sound4State extends State<Sound4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Wait for 5 sec to select option after pressing play',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: FlatButton(onPressed: (){
                final player = AudioCache();
                player.play('1khz.mpeg');
              },
                child:Icon(
                    Icons.play_arrow,
                    size: 80, color:  Colors.grey[800]
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.blueGrey,
                        shape: StadiumBorder(),
                        onPressed: () {
                          //print(counter);
                          counter++;
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sound5()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                              Icons.check,
                              size: 20,
                              color: Colors.white
                          ),
                        ),
                      ),




                      RaisedButton(
                        color: Colors.blueGrey,
                        shape: StadiumBorder(),
                        onPressed: () {
                          //print(counter);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sound5()),
                          );

                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Icon(Icons.close,
                              size: 20,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
