import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/Constants/colors.dart';
import 'package:foodapp_ui/Pages/bg.dart';
import 'package:foodapp_ui/Pages/product1.dart';
import '../Components/text.dart';

class Products extends StatefulWidget {
  const Products({Key? key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final search = TextEditingController();
  List<int> selectedValues = [];
  List<int> selectedValues1 = []; // List to store selected indices

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            size: 25,
            color: AppColors.selected,
          ),
        ),
      ),
      body: Stack(
        children: [
          const BgForProduct(),
          Container(
            padding: const EdgeInsets.only(top: 138),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: BoldText(
                    text: 'Vegetables',
                    size: 25,
                    color: AppColors.primaryColor,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: TextFormField(
                    controller: search,
                    showCursor: false,
                    cursorColor: AppColors.borderColor,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                        color: AppColors.primaryColor,
                        size: 25,
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: AppColors.borderColor,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: AppColors.borderColor),
                      ),
                      fillColor: AppColors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.borderColor,
                        ),
                      ),
                      filled: true,
                      focusColor: AppColors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.borderColor),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Wrap(
                      spacing: 8,
                      children: List<Widget>.generate(
                        5,
                        (int index) {
                          return ChoiceChip(
                            disabledColor: AppColors.white,
                            selectedColor:
                                AppColors.secTextColor.withOpacity(0.5),
                            label: Text(
                              'Cabbage and lettuce (14)',
                              style: TextStyle(
                                color: selectedValues.contains(index)
                                    ? AppColors.primaryColor
                                    : AppColors.secTextColor,
                              ),
                            ),
                            selected: selectedValues.contains(index),
                            onSelected: (bool selected) {
                              setState(() {
                                if (selected) {
                                  selectedValues.add(index);
                                } else {
                                  selectedValues.remove(index);
                                }
                              });
                            },
                            avatar: selectedValues.contains(index)
                                ? Icon(
                                    Icons.check,
                                    color: AppColors.primaryColor,
                                  )
                                : null,
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Wrap(
                      spacing: 8,
                      children: List<Widget>.generate(
                        5,
                        (int index) {
                          return ChoiceChip(
                            disabledColor: AppColors.white,
                            selectedColor:
                                AppColors.secTextColor.withOpacity(0.5),
                            label: Text(
                              'Onions and garlic (8)',
                              style: TextStyle(
                                color: selectedValues1.contains(index)
                                    ? AppColors.primaryColor
                                    : AppColors.secTextColor,
                              ),
                            ),
                            selected: selectedValues1.contains(index),
                            onSelected: (bool selected) {
                              setState(() {
                                if (selected) {
                                  selectedValues1.add(index);
                                } else {
                                  selectedValues1.remove(index);
                                }
                              });
                            },
                            avatar: selectedValues1.contains(index)
                                ? Icon(
                                    Icons.check,
                                    color: AppColors.primaryColor,
                                  )
                                : null,
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Material(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      height: 100,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  'Assets/Images/veg.png'),
                                              alignment: Alignment.centerLeft,
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Product1()));
                                            },
                                            child: BoldText(
                                                text: 'Boston Lettuce',
                                                size: 18,
                                                color: AppColors.primaryColor),
                                          ),
                                          Row(
                                            children: [
                                              BoldText(
                                                  text: '1.10',
                                                  size: 14,
                                                  color:
                                                      AppColors.primaryColor),
                                              ModifiedText(
                                                  text: '€ / piece',
                                                  size: 14,
                                                  color: AppColors.secTextColor)
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 8),
                                            child: Row(
                                              children: [
                                                Container(
                                                    height: 40,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                            elevation: 0,
                                                            backgroundColor:
                                                                AppColors.white,
                                                            side: BorderSide(
                                                                color: AppColors
                                                                    .borderColor)),
                                                        onPressed: () {},
                                                        child: Icon(
                                                          CupertinoIcons.heart,
                                                          color: AppColors
                                                              .secTextColor,
                                                        ))),
                                                const SizedBox(
                                                  width: 30,
                                                ),
                                                Container(
                                                    height: 40,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    AppColors
                                                                        .btnColor),
                                                        onPressed: () {},
                                                        child: const Icon(
                                                            CupertinoIcons
                                                                .cart))),
                                                const SizedBox(
                                                  width: 20,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
