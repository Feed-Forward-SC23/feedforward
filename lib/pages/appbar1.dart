import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';
import '../customWidgets.dart/searchBar.dart';

class SilverAppBar1 extends StatelessWidget {
  const SilverAppBar1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SliverAppBar(
        automaticallyImplyLeading: false,
        floating: true,
        snap: true,
        pinned: true,
        actions: [
          buildWidth(20.0),
          Icon(
            Icons.location_on_sharp,
            color: yellow[1],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildHeight(10.0),
                Text(
                  "Address:",
                  style: buildAddress(),
                ),
                Text(
                  "5 star boys hostel, GHRCE",
                  style: buildBody(),
                )
              ],
            ),
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          buildWidth(20.0),
        ],
        bottom: Tab(
          height: 65,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/search');
            },
            child: Container(
              width: width - 40,
              height: 50,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: cyan[0], width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Find your Cravings ...",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: black[2]),
                      ),
                      const Spacer(),
                      const SizedBox(
                        child: Icon(
                          Icons.search_rounded,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class SilverAppBar2 extends StatelessWidget {
  const SilverAppBar2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SliverAppBar(
        automaticallyImplyLeading: false,
        floating: true,
        snap: true,
        pinned: true,
        actions: [
          buildWidth(20.0),
          Icon(
            Icons.location_on_sharp,
            color: yellow[1],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildHeight(10.0),
                Text(
                  "Address:",
                  style: buildAddress(),
                ),
                Text(
                  "5 star boys hostel, GHRCE",
                  style: buildBody(),
                )
              ],
            ),
          ),
          const Spacer(),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          buildWidth(20.0),
        ],
        bottom: Tab(
          height: 65,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: width - 40,
              height: 50,
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: cyan[0], width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20,
                            ),
                          )),
                      buildWidth(10.0),
                      Text(
                        "Find your Cravings ...",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: black[2]),
                      ),
                      const Spacer(),
                      const SizedBox(
                        child: Icon(
                          Icons.search_rounded,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

// class SilverAppBar3 extends StatelessWidget {
//   const SilverAppBar3({
//     // required this.heading,
//     super.key,
//   });
//   // String heading;
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return AppBar(
//       title: Text(
//         "heading",
//         style: buildHeading(),
//       ),
//     );
//   }
// }
