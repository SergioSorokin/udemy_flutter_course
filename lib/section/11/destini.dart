import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter_course/section/11/story_brain.dart';

class Destini extends StatelessWidget {
  static const String routName = '/destini';
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          centerTitle: true,
          title: const Text(
            'Destini',
            style: TextStyle(color: Colors.orange, fontSize: 32),
          ),
        ),
        body: const StoryPage(),
    );
  }
}
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding:const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      constraints:const BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyBrain.getStory(),
                  style:const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(1);
                  });
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child:  Text(
                 storyBrain.getChoice1(),
                  style:const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storyBrain.buttonShouldBeVisible(),
                child: ElevatedButton(
                  onPressed: () {
                   setState(() {
                      storyBrain.nextStory(2);
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child:  Text(
                    storyBrain.getChoice2(),
                    style:const TextStyle(
                      fontSize: 20.0,
                    ),
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
