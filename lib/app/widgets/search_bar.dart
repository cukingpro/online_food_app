import 'package:flutter/material.dart';
import 'package:online_food_app/generated/locales.g.dart';
import 'package:get/get.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextField(
        decoration: InputDecoration(
          hintText: LocaleKeys.search_store.tr,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          fillColor: Color.fromRGBO(242, 243, 242, 1),
          filled: true,
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromRGBO(24, 27, 25, 1),
          ),
        ),
      ),
    );
  }
}
