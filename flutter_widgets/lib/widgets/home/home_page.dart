import 'package:flutter/material.dart';
import 'package:flutter_widgets/constants/app_colors.dart';
import 'package:flutter_widgets/constants/screen_names_list.dart';
import 'package:flutter_widgets/widgets/home/custom_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Widgets",
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      body: Container(
          color: AppColors.snowyMint,
          child:
              CustomListView(screenNames: screenNames, onTapCallback: (s) {})),
    );
  }
}
