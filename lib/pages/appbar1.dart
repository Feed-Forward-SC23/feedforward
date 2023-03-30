import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';
import '../customWidgets.dart/searchBar.dart';

// AppBar buildMainAppBar() {
//   return AppBar(
//     toolbarHeight: 80,
//     actions: [
//       buildWidth(20.0),
//       Icon(
//         Icons.location_on_sharp,
//         color: yellow[1],
//       ),
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           buildHeight(10.0),
//           Text(
//             "Address:",
//             style: GoogleFonts.poppins(
//               fontWeight: FontWeight.w700,
//               fontSize: 12,
//               color: black[4],
//             ),
//           ),
//           Text(
//             "5 star boys hostel, GHRCE",
//             style: GoogleFonts.poppins(
//               fontWeight: FontWeight.w300,
//               fontSize: 10,
//             ),
//           )
//         ],
//       ),
//       const Spacer(),
//       const CircleAvatar(
//         backgroundImage: AssetImage('assets/profile.png'),
//       ),
//       buildWidth(20.0),
//     ],
//   );
// }

class SilverAppBar extends StatelessWidget {
  const SilverAppBar({
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
                  Text(
                    "Find your Cravings ...",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: black[2]),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
