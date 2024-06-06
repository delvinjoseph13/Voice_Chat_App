import 'package:allen/feature_box.dart';
import 'package:allen/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Allen'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Stack(
            children: [
               Center(
                 child: 
                 //virtual assistant picture
                 Container(
                   height: 120,
                   width: 120,
                   margin: EdgeInsets.only(top: 4),
                   decoration: BoxDecoration(color: Pallete.assistantCircleColor,shape: BoxShape.circle),
                  ),
                  
                  ),Container(
                    height: 123,
                    decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(image: AssetImage('assets/images/virtualAssistant.png'))),
                  
                  )
                  ]
           ),
        //helper container


       Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
          ),
          margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(top: 30),
          decoration: BoxDecoration(border: Border.all(color: Pallete.borderColor),
          borderRadius: BorderRadius.circular(20).copyWith(
            topLeft: Radius.zero
          )),
          child:const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0),
            child:  Text("Good morning What task can i do for you?",style: TextStyle(fontFamily: 'Cera Pro',color: Pallete.mainFontColor,fontSize: 25),
                   ),
          )
       ),
       Container(
        padding:const EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        margin:const EdgeInsets.only(
          top: 10,
          left: 22
        ),
         child:const Text("Here are a few features",style: TextStyle(
          fontFamily: 'Cera Pro',
          color: Pallete.mainFontColor,
          fontWeight: FontWeight.bold,
          fontSize: 20),),
       ),
       
       //feature suggestion
        const  Column(
            children: [
              FeatureBox(
              Headertext: 'ChatGpt', 
              color: Pallete.firstSuggestionBoxColor,
              descriptiontext:'A smarter way to stay organized and informed with chatgpt' ,),
             
              FeatureBox(
              Headertext: 'Dall-E', 
              color: Pallete.secondSuggestionBoxColor,
              descriptiontext:'Get inspired and stay creative with your personal assistant powered by Dall-E' ,),
            ],
          )
       ],
      ),
    );
  }
}