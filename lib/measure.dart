import 'package:flutter/material.dart';
import 'elements.dart';
import 'package:flutter/widgets.dart';

class MeasurePage extends StatelessWidget {
  const MeasurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Измерения"),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          showDialog( context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("My Super title"),
              scrollable: true,
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                      labelText: 'Выбор параметра',
                      icon: Icon(Icons.account_box),),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Дата',
                        icon: Icon(Icons.account_box),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(), //get today's date
                            firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101)
                        );

                        // if(pickedDate != null ){
                        //   print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                        //   String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                        //   print(formattedDate); //formatted date output using intl package =>  2022-07-04
                        //   //You can format date as per your need
                        //
                        //   setState(() {
                        //     dateController.text = formattedDate; //set foratted date to TextField value.
                        //   });
                        // }else{
                        //   print("Date is not selected");
                        // }

                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Значение параметра',
                        icon: Icon(Icons.account_box),),
                    ),
                  ],
                ),
              ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Cancel'),
                  ),
                ]
            );
          });
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: measureParameters.length,
            itemBuilder: (BuildContext context, index) {
              return Card(
                  child: ExpansionTile(
                    //leading: Icon(icons[index]),
                    // trailing: Row(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    //     IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                    //     IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
                    //   ],
                    // ),
                    title: Text('${measureParameters[index]}'),
                    //subtitle: Text('${time[index]}'),
                    children: const <Widget>[
                      ListTile( title: Text('85 кг.'), subtitle: Text('03.05.2023')),
                      ListTile( title: Text('85 кг.'), subtitle: Text('03.05.2023')),
                      ListTile( title: Text('85 кг.'), subtitle: Text('03.05.2023')),
                    ],
                  ));
            }),

      ),

    );
  }
}
