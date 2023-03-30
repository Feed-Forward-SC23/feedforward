import 'package:feedforward/Constants/colors.dart';
import 'package:feedforward/Constants/constant.dart';
import 'package:feedforward/customWidgets.dart/spotlight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProductList extends StatelessWidget {
  const NewProductList({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: count,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: white[1],
            image: const DecorationImage(
                image: AssetImage(
                  'assets/Noise & Texture.png',
                ),
                fit: BoxFit.fill),
          ),
          child: Row(children: [
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(spotlightList.elementAt(index).img),
                      radius: 35,
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            spotlightList.elementAt(index).title,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        buildWidth(5.0),
                        spotlightList.elementAt(index).veg
                            ? ImageIcon(
                                const AssetImage('assets/logos/veg logo.png'),
                                size: 20,
                                color: Colors.green[700],
                              )
                            : ImageIcon(
                                const AssetImage(
                                    'assets/logos/non-veg logo.png'),
                                size: 20,
                                color: Colors.red[700],
                              ),
                      ],
                    ),
                    buildHeight(5.0),
                    Text(
                      "${spotlightList.elementAt(index).qty} ${spotlightList.elementAt(index).measure} | ${spotlightList.elementAt(index).expDate}",
                      style: buildBody(),
                    ),
                    buildHeight(15.0),
                    Text(
                      "A spicy blend of normal dal and basmati chawal mixed and chamkhofied",
                      maxLines: 2,
                      style: buildBody(),
                    ),
                    buildHeight(15.0),
                    Row(
                      children: [
                        spotlightList.elementAt(index).free
                            ? Text(
                                "Free",
                                style: buildSubheading(),
                              )
                            : Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "Rs. ${spotlightList.elementAt(index).price}",
                                      style: buildSubheading(),
                                    ),
                                    TextSpan(
                                      text:
                                          '/${spotlightList.elementAt(index).measure}',
                                      style: buildBody(),
                                    )
                                  ],
                                ),
                              ),
                        const Spacer(),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: cyan[0]),
                            onPressed: () {},
                            child: Text(
                              "Add Item",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  color: black[3]),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ))
          ]),
        );
      },
    );
  }
}
