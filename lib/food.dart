import 'package:flutter/material.dart';
import 'elements.dart';
import 'fetch.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Питание"),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: FutureBuilder<List<Food>>(
          future: fetchFood(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        child: ExpansionTile(
                          leading: Icon(icons[index]),
                          title: Text(mealtime[index]),
                          subtitle: Text(time[index]),
                            children: <Widget>[
                              if (index == 0)
                                for( Food item in snapshot.data! )
                                  if(item.foodid == 'завтрак')
                                    ListTile(
                                      title: Text(item.title),
                                      subtitle: Text(item.weight.toString()),
                                    ),
                              if (index == 1)
                                for( Food item in snapshot.data! )
                                  if(item.foodid == 'перекус_1')
                                    ListTile(
                                      title: Text(item.title),
                                      subtitle: Text(item.weight.toString()),
                                    ),
                              if (index == 2)
                                for( Food item in snapshot.data! )
                                  if(item.foodid == 'обед')
                                    ListTile(
                                      title: Text(item.title),
                                      subtitle: Text(item.weight.toString()),
                                    ),
                              if (index == 3)
                                for( Food item in snapshot.data! )
                                  if(item.foodid == 'перекус_2')
                                    ListTile(
                                      title: Text(item.title),
                                      subtitle: Text(item.weight.toString()),
                                    ),
                              if (index == 4)
                                for( Food item in snapshot.data! )
                                  if(item.foodid == 'ужин')
                                    ListTile(
                                      title: Text(item.title),
                                      subtitle: Text(item.weight.toString()),
                                    ),
                            ]
                        )
                    );
                  });
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            // By default show a loading spinner.
            return const CircularProgressIndicator();
          },
        )
      ),
    );
  }
}
