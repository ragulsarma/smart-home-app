import 'package:flutter/material.dart';
import 'package:smart_home_ui/models/home_items_list_model.dart';

class ListItemsWidgets extends StatefulWidget {
  const ListItemsWidgets({super.key});

  @override
  State<ListItemsWidgets> createState() => _ListItemsWidgetsState();
}

class _ListItemsWidgetsState extends State<ListItemsWidgets> {
  static List<HomeItemsListModel> listItems = [
    HomeItemsListModel(name: 'Climate', desc: '23-26*c'),
    HomeItemsListModel(name: 'Lights', desc: '2 on'),
    HomeItemsListModel(name: 'Security', desc: '3/4 CCTV'),
    HomeItemsListModel(name: 'Humidity', desc: '33%')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        child: ListView.builder(
            itemCount: listItems.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                  padding: const EdgeInsets.fromLTRB(20, 5, 40, 5),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          listItems[index].name,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          listItems[index].desc,
                          style: const TextStyle(color: Colors.grey),
                        )
                      ]));
            }));
  }
}
