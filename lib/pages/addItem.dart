import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Constants/constant.dart';
import '../customWidgets.dart/tag.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            Text(
              "Feed Others",
              style: buildHeading(),
            ),
            buildHeight(20.0),
            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Product Name",
                hintStyle: buildAddItem(),
                label: Text(
                  "Product Name",
                  style: buildAddItem(),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            buildHeight(10.0),
            Row(
              children: [
                Tag(
                  onTap: true,
                  text: 'Veg',
                ),
                buildWidth(10.0),
                Tag(
                  onTap: false,
                  text: 'Non-Veg',
                ),
              ],
            ),
            buildHeight(30.0),
            Text(
              "Produt Quantity",
              style: buildAddress(),
            ),
            buildHeight(10.0),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Number",
                      hintStyle: buildAddItem(),
                      label: Text(
                        "Number",
                        style: buildAddItem(),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                buildWidth(15.0),
                Text(
                  'kg',
                  style: buildTag(),
                ),
              ],
            ),
            buildHeight(30.0),
            Text(
              "Expiry Date & Time",
              style: buildAddress(),
            ),
            buildHeight(10.0),
            TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: "DD/MM/YYYY   HH:MM",
                hintStyle: buildAddItem(),
                label: Text(
                  "Date & Time",
                  style: buildAddItem(),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            buildHeight(30.0),
            Text(
              "Product Category",
              style: buildAddress(),
            ),
            buildHeight(10.0),
            Row(
              children: [
                Tag(
                  onTap: true,
                  text: "Home Food",
                ),
                buildWidth(10.0),
                Tag(onTap: false, text: 'Caterer Food'),
                buildWidth(10.0),
                Tag(onTap: false, text: 'Bakery Item')
              ],
            ),
            buildHeight(30.0),
            Text(
              "Product Image",
              style: buildAddress(),
            ),
            buildHeight(10.0),
            Container(
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: yellow[1], width: 2),
              ),
              child: Center(
                child: Text(
                  "Make sure the image is from top angle",
                  style: buildAddItem(),
                ),
              ),
            ),
            buildHeight(30.0),
            Text(
              "Product Price",
              style: buildAddress(),
            ),
            buildHeight(10.0),
            Row(
              children: [
                Tag(onTap: true, text: "Free"),
                buildWidth(10.0),
                Tag(onTap: false, text: 'Paid'),
              ],
            ),
            buildHeight(30.0),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15.0),
                    backgroundColor: cyan[0],
                    foregroundColor: black[4],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                onPressed: () {},
                child: Text("Submit Add Item")),
            buildHeight(20.0),
          ],
        ),
      ),
    );
  }
}
