import 'package:feedforward/customWidgets.dart/itemCard.dart';
import 'package:feedforward/customWidgets.dart/spotlight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';
import '../customWidgets.dart/searchBar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          // buildWidth(20.0),
          SizedBox(
              height: 60,
              width: width - 40,
              child: TextField(
                // onChanged: (value) => _runSearch(value),
                decoration: InputDecoration(
                  prefixIcon: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'Find your cravings',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: black[2],
                  ),
                  label: Row(
                    children: [
                      buildWidth(10.0),
                      Text(
                        "Search your cravings...",
                        style:
                            GoogleFonts.poppins(fontSize: 12, color: black[1]),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.search,
                        size: 20,
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: black[0],
                      width: 2,
                    ),
                  ),
                ),
              )),
          buildWidth(20.0),
        ],
      ),
    );
  }
}
