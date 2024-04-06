import 'package:flutter/material.dart';
import 'package:new_resume/providers/current_state.dart';
import 'package:provider/provider.dart';
import 'screen/homescreen/home_page.dart';


void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (context)=>CurrentState()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
