import 'package:flutter/material.dart';


class MenuForm extends StatefulWidget {
  const MenuForm({super.key});

  @override
  State<MenuForm> createState() => MenuFormState();
}

class MenuFormState extends State<MenuForm> {
  @override
  Widget build(BuildContext context) {
    const title = 'System Menu';

    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            }),
          ),
        )
      );
  }
}
