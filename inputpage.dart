import 'package:flutter/material.dart';
import 'container.dart';
import 'icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const back=Color(0xFF1D1E33);
const backin=Color(0xFF111328);
const bottom=Color(0xFFEB1555);
int weight=60;
int heightuser=70;
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height=120;
Color a=backin;
Color b=backin;
void updatecol(int num){
  if(num==1){
    if(a==backin){
      a=back;
      b=backin;
    }
    else{
      a=backin;
    }
  }
  else{
    if(b==backin){
      b=back;
      a=backin;
    }
    else{
      b=backin;
    }
  }
}
  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: back,
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child:
                  GestureDetector(

                    onTap: (){
setState(() {
  updatecol(1);
});
                      //print('button is tapped');
                    },
                    child:
                    container(
                    colour: a,
                    cardchild: icon(iconsym: FontAwesomeIcons.mars,gender: 'MALE',),
                ),
                  ),

                ),
                Expanded(
                  child:
                GestureDetector(
                  onTap: (){
                    setState(() {
                      updatecol(2);
                    });
                  },
                  child: container(
                    colour: b,
                    cardchild: icon(iconsym: FontAwesomeIcons.venus, gender: 'FEMALE',),
                  ),
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: container(
              colour: back,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[

  Text('HEIGHT',style: TextStyle(
    color: Colors.white,
  ),),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: [
      Text( height.toString(),
      style: TextStyle(
        fontSize: 50.0,
        color: Colors.white,
        fontWeight: FontWeight.w900,
      ),
      ),
      Text('cm',
      style: TextStyle(
        color: Colors.white,
      ),
      ),

    ],
  ),
SliderTheme(
    data: SliderTheme.of(context).copyWith(

      activeTrackColor: Colors.white,
      thumbColor: Color(0xFFEB1555),
      overlayColor: Color(0x29EB1555),
thumbShape:
      RoundSliderThumbShape(enabledThumbRadius: 15.0),
      overlayShape:
        RoundSliderOverlayShape(overlayRadius: 32.0),
    ),
    child:Slider(
      value: height.toDouble(),
      min: 120,
      max: 220,
      activeColor: bottom,
      inactiveColor: Color(0xFF8D8E98),
      onChanged: (double newval){
        setState(() {
          height=newval.round();
        });
      },
    ),
),

],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: container(
                  colour: back,
                  cardchild: Column(
mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: TextStyle(
color: Colors.white,
                        ),
                      ),
                      Text(
                        weight.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     FloatingActionButton(
                       backgroundColor: Color(0xFF4C4F5E),

child: Icon(
  Icons.plus_one,
),
                       onPressed: (){
  setState(() {
    weight++;
  });
                       },
                     ),
                     SizedBox(
                       width: 10.0,
                     ),
                     FloatingActionButton(
                       backgroundColor: Color(0xFF4C4F5E),

                       child: Icon(
                         Icons.exposure_minus_1,
                       ),
                       onPressed: (){
                         setState(() {
                           weight--;
                         });
                       },
                     ),
                   ],
                 ),

                    ],
                  ),
                ),
                ),
                Expanded(
                  child: container(
                  colour: back,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            color: Colors.white,

                          ),

                        ),
                        Text(
                          heightuser.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),

                              child: Icon(
                                Icons.plus_one,
                              ),
                              onPressed: (){
                                setState(() {
                                  heightuser++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            FloatingActionButton(
                              backgroundColor: Color(0xFF4C4F5E),

                              child: Icon(
                                Icons.exposure_minus_1,
                              ),
                              onPressed: (){
                                setState(() {
                                  heightuser--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: bottom,
            width: double.infinity,
            height: 80.0,
            child: Text(
              'press me',
              textAlign: TextAlign.center,

            ),
          ),
        ],
      ),

    );
  }
}

