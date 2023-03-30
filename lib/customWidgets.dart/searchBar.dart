import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: 'Find your cravings',
        hintStyle: buildBody(),
        label: Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: ImageIcon(
                const AssetImage('assets/logos/search 1.png'),
                color: black[1],
              ),
            ),
            Text(
              "Search your cravings...",
              style: GoogleFonts.poppins(fontSize: 12, color: black[1]),
            )
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
    );
  }
}
