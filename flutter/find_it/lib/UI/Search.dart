import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../app_theme.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              // Container(
              //   padding: EdgeInsets.only(
              //       top: MediaQuery.of(context).padding.top,
              //       left: 16,
              //       right: 16),
              //   child: Text(""),
              // ),
              SizedBox(
                height: 0.08*MediaQuery.of(context).size.height,
              ),
              getAppBarUI(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: <Widget>[
                        getSearchBarUI(),

                        // Flexible(
                        //   child: getPopularCourseUI(),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget getCategoryUI() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Padding(
  //         padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
  //         child: Text(
  //           'Category',
  //           textAlign: TextAlign.left,
  //           style: TextStyle(
  //             fontWeight: FontWeight.w600,
  //             fontSize: 22,
  //             letterSpacing: 0.27,
  //             color: AppTheme.darkerText,
  //           ),
  //         ),
  //       ),
  //       const SizedBox(
  //         height: 16,
  //       ),
  //       Padding(
  //         padding: const EdgeInsets.only(left: 16, right: 16),
  //         child: Row(
  //           children: <Widget>[
  //
  //             const SizedBox(
  //               width: 16,
  //             ),
  //             getButtonUI(
  //                 CategoryType.coding, categoryType == CategoryType.coding),
  //             const SizedBox(
  //               width: 16,
  //             ),
  //             getButtonUI(
  //                 CategoryType.basic, categoryType == CategoryType.basic),
  //           ],
  //         ),
  //       ),
  //       const SizedBox(
  //         height: 16,
  //       ),
  //       CategoryListView(
  //         callBack: () {
  //           moveTo();
  //         },
  //       ),
  //     ],
  //   );
  // }

  // Widget getPopularCourseUI() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text(
  //           'Popular Course',
  //           textAlign: TextAlign.left,
  //           style: TextStyle(
  //             fontWeight: FontWeight.w600,
  //             fontSize: 22,
  //             letterSpacing: 0.27,
  //             color: AppTheme.darkerText,
  //           ),
  //         ),
  //         Flexible(
  //           child: PopularCourseListView(
  //             callBack: () {
  //               moveTo();
  //             },
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // void moveTo() {
  //   Navigator.push<dynamic>(
  //     context,
  //     MaterialPageRoute<dynamic>(
  //       builder: (BuildContext context) => CourseInfoScreen(),
  //     ),
  //   );
  // }

  // Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
  //   String txt = '';
  //   if (CategoryType.ui == categoryTypeData) {
  //     txt = 'Ui/Ux';
  //   } else if (CategoryType.coding == categoryTypeData) {
  //     txt = 'Coding';
  //   } else if (CategoryType.basic == categoryTypeData) {
  //     txt = 'Basic UI';
  //   }
  //   return Expanded(
  //     child: Container(
  //       decoration: BoxDecoration(
  //           color: isSelected
  //               ? AppTheme.nearlyBlue
  //               : AppTheme.nearlyWhite,
  //           borderRadius: const BorderRadius.all(Radius.circular(24.0)),
  //           border: Border.all(color: DesignCourseAppTheme.nearlyBlue)),
  //       child: Material(
  //         color: Colors.transparent,
  //         child: InkWell(
  //           splashColor: Colors.white24,
  //           borderRadius: const BorderRadius.all(Radius.circular(24.0)),
  //           onTap: () {
  //             setState(() {
  //               categoryType = categoryTypeData;
  //             });
  //           },
  //           child: Padding(
  //             padding: const EdgeInsets.only(
  //                 top: 12, bottom: 12, left: 18, right: 18),
  //             child: Center(
  //               child: Text(
  //                 txt,
  //                 textAlign: TextAlign.left,
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.w600,
  //                   fontSize: 12,
  //                   letterSpacing: 0.27,
  //                   color: isSelected
  //                       ? DesignCourseAppTheme.nearlyWhite
  //                       : DesignCourseAppTheme.nearlyBlue,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18,right: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width *0.9,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: TextFormField(
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppTheme.nearlyBlue,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Search for course',
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: HexColor('#B9BABC'),
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: HexColor('#B9BABC'),
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.search, color: HexColor('#B9BABC')),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Choose your',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: AppTheme.grey,
                  ),
                ),
                Text(
                  'Design Course',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 0.27,
                    color: AppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            child: Image.asset('assets/design_course/userImage.png'),
          )
        ],
      ),
    );
  }
}