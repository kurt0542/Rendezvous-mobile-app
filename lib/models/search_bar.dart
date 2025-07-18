import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search),
      hintText: 'Search',
      backgroundColor: WidgetStateProperty.all(Colors.white),
      shadowColor: WidgetStatePropertyAll(Color.fromRGBO(38, 159, 255, .50)),
      elevation: WidgetStatePropertyAll(12.0),
    );

    // return Container(
    //   height: 50,
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(15),
    //     boxShadow: [
    //       BoxShadow(
    //         color: const Color.fromRGBO(38, 159, 255, .25),
    //         blurRadius: 20,
    //         offset: const Offset(0, 10),
    //       ),
    //     ],
    //   ),
    // );
  }
}
