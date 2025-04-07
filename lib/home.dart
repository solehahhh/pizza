import 'package:flutter/material.dart';
import 'package:pizza/pizza.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
          icon: Icon(Icons.search), color: Colors.red,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu), color: Colors.red,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Text(
              'Pizza World',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),),
            SizedBox(height: 5,),
            Text('Pizza At Your Fingertips !',
            style: TextStyle(
              fontSize: 15,
              color: Colors.red,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://static.vecteezy.com/system/resources/previews/019/606/530/non_2x/pizza-graphic-clipart-design-free-png.png',
                  height: 400,
                  width: 300,
                )
              ],
            ),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PizzaPage()));
            },
                child: Text('Get Yours',
                style: TextStyle(
                  color: Colors.white),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),)
          ],
        ),
      ),
    );
  }
}


