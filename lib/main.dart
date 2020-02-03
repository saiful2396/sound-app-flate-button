import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  void playSound(int soundNumber){
    final AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  void playSound1(){
    final AudioCache player = AudioCache();
    player.play('alvida.mp3');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Sound App'
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.pink,
                  onPressed: (){
                    playSound(1);
                  }, child: Text('song1'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: (){
                    playSound(2);
                  }, child: Text('song2'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: (){
                    playSound(3);
                  }, child: Text('song3'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.black,
                  onPressed: (){
                    playSound(4);
                  }, child: Text('song4',
                style: TextStyle(color: Colors.white),
                ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    playSound(5);
                  }, child: Text('song5'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.grey,
                  onPressed: (){
                    playSound(6);
                  }, child: Text('song6'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: (){
                    playSound(7);
                  }, child: Text('song7'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.brown,
                  onPressed: (){
                    playSound1();
                  }, child: Text('song8'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
