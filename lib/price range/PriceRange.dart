
import 'package:barbar_app/core/CustomNextButton.dart';
import 'package:barbar_app/providers/PriceRangeScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PriceRange extends StatefulWidget {
  @override
  _ProfessionState createState() => _ProfessionState();
}

class _ProfessionState extends State<PriceRange> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
      return PriceRangeScreenProvider();
    },
    child: SafeArea(
      child: Scaffold(
        body: Consumer<PriceRangeScreenProvider>(
            builder: (context, model, child) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 100.h),
                  child: Center(
                      child: Text(
                        'Price Range',
                        style: GoogleFonts.manrope(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ),
                SizedBox(
                  height: 50.h,
                ),

                ///Custom Container Called...................................................
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('Prices Range (Under 18)',style: TextStyle(fontSize: 16),),
                ),
                SizedBox(
                  height: 15.h,
                ),

                    DropdownButton(

                          // Initial Value
                          value: model.selectedPriceUnder18,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: model.under18PriceList.map((String items) {
                                return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String newValue) {
                              model.setSelectedItem(newValue);
                          },
                    ),

                    /// adult dropdown menus
                    ///
                    ///
                    ///

                    DropdownButton(

                          // Initial Value
                          value: model.selectedPriceAdult,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: model.adultPriceList.map((String items) {
                                return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String newValue) {
                                model.setSelectedAdultPrice(newValue);
                          },
                    ),
                // Container(
                //   height: 50.h,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black.withOpacity(0.3),
                //         blurRadius: 5,
                //         offset: Offset(0, 0), // changes position of shadow
                //       ),
                //     ],
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Padding(
                //     padding: EdgeInsets.only(left: 15),
                //     child: DropdownButton<Item>(
                //       isExpanded: true,
                //       underline: Container(),
                //       hint:  Text("\$16-13"),
                //       value: model.mySelectedUser,
                //       onChanged: (Item value) {
                //             model.setSelectedItem(value);
                //       },
                //       items: model.users.map((Item user) {
                //         return  DropdownMenuItem<Item>(
                //           value: user,
                //           child: Row(
                //             children: <Widget>[
                //               user.icon,
                //               SizedBox(width: 10,),
                //               Text(
                //                 user.name,
                //                 style:  TextStyle(color: Colors.black),
                //               ),
                //             ],
                //           ),
                //         );
                //       }).toList(),
                //     ),
                //   ),
                // ),

                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('Prices Range (Adult)',style: TextStyle(fontSize: 16),),
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Container(
                //   height: 50.h,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black.withOpacity(0.3),
                //         blurRadius: 5,
                //         offset: Offset(0, 0), // changes position of shadow
                //       ),
                //     ],
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Padding(
                //     padding: EdgeInsets.only(left: 15),
                //     child: DropdownButton<Item>(
                //       isExpanded: true,
                //       underline: Container(),
                //       hint:  Text("\$16-13"),
                //       value: selectedUser,
                //       onChanged: (Item Value) {
                //         setState(() {
                //           selectedUser = Value;
                //         });
                //       },
                //       items: users.map((Item user) {
                //         return  DropdownMenuItem<Item>(
                //           value: user,
                //           child: Row(
                //             children: <Widget>[
                //               user.icon,
                //               SizedBox(width: 10,),
                //               Text(
                //                 user.name,
                //                 style:  TextStyle(color: Colors.black),
                //               ),
                //             ],
                //           ),
                //         );
                //       }).toList(),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('Please Select copun',style: TextStyle(fontSize: 16),),
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Container(
                //   height: 50.h,
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.black.withOpacity(0.3),
                //         blurRadius: 5,
                //         offset: Offset(0, 0), // changes position of shadow
                //       ),
                //     ],
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: Padding(
                //     padding: EdgeInsets.only(left: 15),
                //     child: DropdownButton<Item>(
                //       isExpanded: true,
                //       underline: Container(),
                //       hint:  Text("\$16-13"),
                //       value: selectedUser,
                //       onChanged: (Item Value) {
                //         setState(() {
                //           selectedUser = Value;
                //         });
                //       },
                //       items: users.map((Item user) {
                //         return  DropdownMenuItem<Item>(
                //           value: user,
                //           child: Row(
                //             children: <Widget>[
                //               user.icon,
                //               SizedBox(width: 10,),
                //               Text(
                //                 user.name,
                //                 style:  TextStyle(color: Colors.black),
                //               ),
                //             ],
                //           ),
                //         );
                //       }).toList(),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 50.h,
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 50.h,
                    // width: MediaQuery.of(context).size.height * 0.18,
                    child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => PersonalInformation()),
                          // );
                        },
                        child: CustomNextButton()),
                  ),
                )
              ],
            ),
          ),
        );
                }),
      ),
    )
    );
  }
}

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}

