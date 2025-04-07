import 'package:flutter/material.dart';

class PizzaPage extends StatefulWidget {
  const PizzaPage({super.key});

  @override
  State<PizzaPage> createState() => _PizzaState();
}

class _PizzaState extends State<PizzaPage> {

  final List<Map<String, String>> pizzas = [
    {
      'name':'Margherita Pizza',
      'description': 'Tomato sauce, mozzarella, basil',
      'price': 'RM18',
      'image': 'https://png.pngtree.com/png-clipart/20230912/original/pngtree-top-view-of-pizza-margherita-delicious-picture-image_13032122.png',
    },
    {
      'name':'Pepperoni Pizza',
      'description': 'Mozzarella, tomato sauce, pepperoni',
      'price': 'RM22',
      'image': 'https://png.pngtree.com/png-clipart/20230928/original/pngtree-pepperoni-pizza-isolated-with-clipping-path-png-image_13007895.png',
    },
    {
      'name':'Hawaiian Pizza',
      'description': 'Pineapple, ham, mozzarella.',
      'price': 'RM20',
      'image': 'https://png.pngtree.com/png-clipart/20240914/original/pngtree-hawaiian-pizza-with-pineapple-png-image_16007610.png',
    },
    {
      'name':'Mushroom Pizza',
      'description': 'Mozzarella, mushrooms, garlic, tomato sauce.',
      'price': 'RM25',
      'image': 'https://png.pngtree.com/png-clipart/20240308/original/pngtree-mushroom-pizza-food-png-image_14541292.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.red),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text('Explore Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.red),),
            SizedBox(height: 5),
            Text("Fresh, cheesy, and delicious! Pick your favorite and enjoy"),
            SizedBox(height: 30),
            Expanded(
                child: ListView.builder(
                  itemCount: pizzas.length,
                itemBuilder: (context, index){
                    final pizza = pizzas[index];

                    return Card(
                      child: ListTile(
                        leading: Image.network(
                          pizza['image']!,
                          fit: BoxFit.contain,
                        ),
                        title: Text('${pizza['name']}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(pizza['description']!),
                            SizedBox(height: 5),
                            Text(pizza['price']!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green,
                              ),)
                          ],
                        ),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next)),
                      ),
                    );
                }
            )
            ),
          ],
        ),
      ),
    );
  }
}
