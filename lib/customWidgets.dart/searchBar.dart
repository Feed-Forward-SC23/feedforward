import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
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
