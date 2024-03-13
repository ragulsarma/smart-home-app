import 'package:flutter/material.dart';
import 'package:smart_home_ui/utils/app_colors.dart';
import 'package:smart_home_ui/widgets/home_page_widgets/list_items_widgets.dart';
import 'package:smart_home_ui/widgets/home_page_widgets/quick_access_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryWhiteColor,
        appBar: AppBar(
            leadingWidth: 70,
            backgroundColor: AppColors.primaryWhiteColor,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: const Icon(
                    Icons.menu,
                    color: AppColors.primaryWhiteColor,
                    size: 35,
                  )),
            ),
            title: const Text('Matrix',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
            actions: const [
              CircleAvatar(
                  radius: 22.0,
                  backgroundImage: NetworkImage(
                    'https://play-lh.googleusercontent.com/C9CAt9tZr8SSi4zKCxhQc9v4I6AOTqRmnLchsu1wVDQL0gsQ3fmbCVgQmOVM1zPru8UH',
                  ),
                  backgroundColor: Colors.transparent),
              SizedBox(width: 16)
            ]),
        body: const SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(height: 10),
              ListItemsWidgets(),
              QuickAccessWidget()
            ])));
  }
}
