import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/colors.dart';
import 'categoriesModel.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ((width - 60) / 3),
      child: GridView.builder(
          itemCount: categories.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: yellow[1], width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 67,
                      width: 74,
                      child: Image(
                        image: AssetImage(categories.elementAt(index).path),
                      ),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    Text(
                      categories.elementAt(index).name,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
