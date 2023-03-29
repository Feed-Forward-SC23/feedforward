import 'package:feedforward/Constants/colors.dart';
import 'package:feedforward/Constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../services/productService/productApi.dart';

class ProductList extends ConsumerWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _data = ref.watch(productListProvider);
    return _data.when(
      data: (data) => ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          // physics: const BouncingScrollPhysics(),
          itemCount: data.length - 17,
          itemBuilder: (context, index) {
            // debugPrint("----->${data.length}");
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: yellow[1], width: 2),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(data.elementAt(index).image),
                        ),
                      ),
                      height: 80,
                      width: 80,
                    ),
                    buildWidth(10.0),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 12.0),
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: yellow[1], width: 2),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    data.elementAt(index).title,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const SizedBox(
                                  height: 15.0,
                                  child: Image(
                                      image: AssetImage(
                                          "assets/logos/veg logo.png")),
                                ),
                                const Spacer(flex: 2),
                              ],
                            ),
                            buildHeight(5.0),
                            Text(
                              "Qty. 5kgs",
                              style: GoogleFonts.poppins(fontSize: 9),
                            ),
                            buildHeight(5.0),
                            Row(
                              children: [
                                Text(
                                  "Exp. 12:00 am, Mar 31, 2023",
                                  style: GoogleFonts.poppins(fontSize: 9),
                                ),
                                const Spacer(),
                                Text(
                                  "Rs.150",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ));
          }),
      error: (error, stackTrace) {
        return Center(
          child: Text(error.toString()),
        );
      },
      loading: () => Center(
        child: CircularProgressIndicator(
          color: yellow[1],
        ),
      ),
    );
  }
}

// ListTile(
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                 ),
//                 tileColor: Colors.deepPurple[600],
//                 title: Text(data.elementAt(index).title),
//               ),
