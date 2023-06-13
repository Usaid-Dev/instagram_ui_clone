import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
            ),
            hintText: 'Search',
            contentPadding: const EdgeInsets.all(0),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
            fillColor: const Color.fromRGBO(
              220,
              220,
              220,
              1,
            ),
            filled: true,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add,
            ),
          ),
        ],
      ),
    );
  }
}
