// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class HomePageWidget extends StatefulWidget {
//   const HomePageWidget({Key key}) : super(key: key);

//   @override
//   _HomePageWidgetState createState() => _HomePageWidgetState();
// }

// class _HomePageWidgetState extends State<HomePageWidget> {
//   PageController pageViewController;
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Expanded(
//                 child: ListView(
//                   padding: EdgeInsets.zero,
//                   shrinkWrap: true,
//                   scrollDirection: Axis.vertical,
//                   children: [
//                     Column(
//                       mainAxisSize: MainAxisSize.max,
//                       children: [
//                         Container(
//                           width: double.infinity,
//                           height: 860,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Container(
//                                 width: 400,
//                                 height: 530,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xFFC0A3FF),
//                                   borderRadius: BorderRadius.only(
//                                     bottomLeft: Radius.circular(0),
//                                     bottomRight: Radius.circular(400),
//                                     topLeft: Radius.circular(0),
//                                     topRight: Radius.circular(0),
//                                   ),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Align(
//                                       alignment: AlignmentDirectional(0, -1),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     10, 3, 0, 0),
//                                             child: Container(
//                                               width: 50,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                 color: Color(0x00B48F8F),
//                                                 image: DecorationImage(
//                                                   fit: BoxFit.cover,
//                                                   image: Image.asset(
//                                                     'assets/images/zyro-image_(10).png',
//                                                   ).image,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     270, 3, 0, 0),
//                                             child: Container(
//                                               width: 40,
//                                               height: 40,
//                                               decoration: BoxDecoration(
//                                                 color: Color(0x00EEEEEE),
//                                                 image: DecorationImage(
//                                                   fit: BoxFit.cover,
//                                                   image: Image.asset(
//                                                     'assets/images/ml88i_4.png',
//                                                   ).image,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment:
//                                           AlignmentDirectional(0.05, -0.15),
//                                       child: Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             0, 35, 0, 0),
//                                         child: Row(
//                                           mainAxisSize: MainAxisSize.max,
//                                           children: [
//                                             Align(
//                                               alignment:
//                                                   AlignmentDirectional(0, 0),
//                                               child: Padding(
//                                                 padding: EdgeInsetsDirectional
//                                                     .fromSTEB(25, 0, 0, 0),
//                                                 child: Container(
//                                                   width: 150,
//                                                   height: 440,
//                                                   decoration: BoxDecoration(
//                                                     color: Color(0x00C0A3FF),
//                                                     borderRadius:
//                                                         BorderRadius.only(
//                                                       bottomLeft:
//                                                           Radius.circular(0),
//                                                       bottomRight:
//                                                           Radius.circular(30),
//                                                       topLeft:
//                                                           Radius.circular(0),
//                                                       topRight:
//                                                           Radius.circular(0),
//                                                     ),
//                                                   ),
//                                                   child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Align(
//                                                         alignment:
//                                                             AlignmentDirectional(
//                                                                 -1, 0),
//                                                         child: Text(
//                                                           'Betta Fish',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .subtitle2
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Marko One',
//                                                                 color: Color(
//                                                                     0xA5FFFFFF),
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w500,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                       Padding(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .fromSTEB(0, 20,
//                                                                     0, 0),
//                                                         child: Text(
//                                                           'Rosetail Lavender',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .title3
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Ovo',
//                                                                 color: Color(
//                                                                     0xC8FFFFFF),
//                                                                 fontSize: 37,
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w100,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                       Align(
//                                                         alignment:
//                                                             AlignmentDirectional(
//                                                                 -1, 0.05),
//                                                         child: Padding(
//                                                           padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(0,
//                                                                       40, 0, 0),
//                                                           child: Text(
//                                                             'Color',
//                                                             style: FlutterFlowTheme
//                                                                     .of(context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                                   fontFamily:
//                                                                       'Marko One',
//                                                                   color: Color(
//                                                                       0x80FFFFFF),
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .normal,
//                                                                 ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Row(
//                                                         mainAxisSize:
//                                                             MainAxisSize.max,
//                                                         children: [
//                                                           Padding(
//                                                             padding:
//                                                                 EdgeInsetsDirectional
//                                                                     .fromSTEB(
//                                                                         0,
//                                                                         5,
//                                                                         0,
//                                                                         0),
//                                                             child: Text(
//                                                               'Multicolor',
//                                                               style: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .bodyText1
//                                                                   .override(
//                                                                     fontFamily:
//                                                                         'Montaga',
//                                                                     color: Color(
//                                                                         0x77101213),
//                                                                     fontSize:
//                                                                         19,
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w200,
//                                                                   ),
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       Align(
//                                                         alignment:
//                                                             AlignmentDirectional(
//                                                                 -1, 0),
//                                                         child: Padding(
//                                                           padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(0,
//                                                                       20, 0, 0),
//                                                           child: Text(
//                                                             'Harga',
//                                                             style: FlutterFlowTheme
//                                                                     .of(context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                                   fontFamily:
//                                                                       'Marko One',
//                                                                   color: Colors
//                                                                       .white,
//                                                                   fontSize: 15,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .normal,
//                                                                 ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Align(
//                                                         alignment:
//                                                             AlignmentDirectional(
//                                                                 -1, 0),
//                                                         child: Padding(
//                                                           padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(0,
//                                                                       5, 0, 0),
//                                                           child: Text(
//                                                             'Rp.50,000',
//                                                             style: FlutterFlowTheme
//                                                                     .of(context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                                   fontFamily:
//                                                                       'Lora',
//                                                                   color: Color(
//                                                                       0x90FF0000),
//                                                                   fontSize: 19,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w300,
//                                                                 ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Align(
//                                                         alignment:
//                                                             AlignmentDirectional(
//                                                                 -1, 0),
//                                                         child: Padding(
//                                                           padding:
//                                                               EdgeInsetsDirectional
//                                                                   .fromSTEB(95,
//                                                                       95, 0, 0),
//                                                           child: Container(
//                                                             width: 100,
//                                                             height: 60,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: Color(
//                                                                   0x00EEEEEE),
//                                                               image:
//                                                                   DecorationImage(
//                                                                 fit: BoxFit
//                                                                     .cover,
//                                                                 image:
//                                                                     Image.asset(
//                                                                   'assets/images/zyro-image_(4).png',
//                                                                 ).image,
//                                                               ),
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           0),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             Align(
//                                               alignment: AlignmentDirectional(
//                                                   -0.1, -0.15),
//                                               child: Container(
//                                                 width: 240,
//                                                 height: 440,
//                                                 decoration: BoxDecoration(
//                                                   color: Color(0x00EEEEEE),
//                                                   image: DecorationImage(
//                                                     fit: BoxFit.cover,
//                                                     image: Image.asset(
//                                                       'assets/images/zyro-image.png',
//                                                     ).image,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 width: 400,
//                                 height: 320,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(0),
//                                 ),
//                                 child: Column(
//                                   mainAxisSize: MainAxisSize.max,
//                                   children: [
//                                     Align(
//                                       alignment:
//                                           AlignmentDirectional(-0.8, -0.1),
//                                       child: Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 20, 0, 0),
//                                         child: Text(
//                                           'Detail',
//                                           style: FlutterFlowTheme.of(context)
//                                               .subtitle1
//                                               .override(
//                                                 fontFamily: 'Advent Pro',
//                                                 color: Color(0xFFF98531),
//                                               ),
//                                         ),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           0, 10, 0, 0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         children: [
//                                           Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     100, 0, 0, 0),
//                                             child: Container(
//                                               width: 70,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                               ),
//                                               child: Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Align(
//                                                     alignment:
//                                                         AlignmentDirectional(
//                                                             -1, 0),
//                                                     child: Text(
//                                                       'Weight',
//                                                       style: FlutterFlowTheme
//                                                               .of(context)
//                                                           .bodyText1
//                                                           .override(
//                                                             fontFamily:
//                                                                 'Advent Pro',
//                                                             color: Color(
//                                                                 0x7E000000),
//                                                             fontSize: 17,
//                                                             fontWeight:
//                                                                 FontWeight.w800,
//                                                           ),
//                                                     ),
//                                                   ),
//                                                   Align(
//                                                     alignment:
//                                                         AlignmentDirectional(
//                                                             -0.9, 0),
//                                                     child: Padding(
//                                                       padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   0, 4, 0, 0),
//                                                       child: Text(
//                                                         '1,5cm',
//                                                         style: FlutterFlowTheme
//                                                                 .of(context)
//                                                             .bodyText1
//                                                             .override(
//                                                               fontFamily:
//                                                                   'Advent Pro',
//                                                               color:
//                                                                   Colors.black,
//                                                               fontSize: 12,
//                                                             ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     20, 0, 0, 0),
//                                             child: Container(
//                                               width: 70,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                               ),
//                                               child: Align(
//                                                 alignment: AlignmentDirectional(
//                                                     -0.4, -0.3),
//                                                 child: Column(
//                                                   mainAxisSize:
//                                                       MainAxisSize.max,
//                                                   children: [
//                                                     Align(
//                                                       alignment:
//                                                           AlignmentDirectional(
//                                                               -1, 0),
//                                                       child: Text(
//                                                         'Lenght',
//                                                         style:
//                                                             FlutterFlowTheme.of(
//                                                                     context)
//                                                                 .bodyText1
//                                                                 .override(
//                                                                   fontFamily:
//                                                                       'Advent Pro',
//                                                                   color: Color(
//                                                                       0x7D000000),
//                                                                   fontSize: 17,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w800,
//                                                                 ),
//                                                       ),
//                                                     ),
//                                                     Align(
//                                                       alignment:
//                                                           AlignmentDirectional(
//                                                               -0.9, 0),
//                                                       child: Padding(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .fromSTEB(
//                                                                     0, 4, 0, 0),
//                                                         child: Text(
//                                                           '3cm',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .bodyText1
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Advent Pro',
//                                                                 color: Colors
//                                                                     .black,
//                                                                 fontSize: 12,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 EdgeInsetsDirectional.fromSTEB(
//                                                     20, 0, 0, 0),
//                                             child: Container(
//                                               width: 70,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                               ),
//                                               child: Column(
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Align(
//                                                     alignment:
//                                                         AlignmentDirectional(
//                                                             -1, 0),
//                                                     child: Text(
//                                                       'Age',
//                                                       style: FlutterFlowTheme
//                                                               .of(context)
//                                                           .bodyText1
//                                                           .override(
//                                                             fontFamily:
//                                                                 'Advent Pro',
//                                                             color: Color(
//                                                                 0x7D050505),
//                                                             fontSize: 15,
//                                                             fontWeight:
//                                                                 FontWeight.w800,
//                                                           ),
//                                                     ),
//                                                   ),
//                                                   Align(
//                                                     alignment:
//                                                         AlignmentDirectional(
//                                                             -0.9, 0),
//                                                     child: Padding(
//                                                       padding:
//                                                           EdgeInsetsDirectional
//                                                               .fromSTEB(
//                                                                   0, 4, 0, 0),
//                                                       child: Text(
//                                                         '2 Bulan',
//                                                         style: FlutterFlowTheme
//                                                                 .of(context)
//                                                             .bodyText1
//                                                             .override(
//                                                               fontFamily:
//                                                                   'Advent Pro',
//                                                               color:
//                                                                   Colors.black,
//                                                               fontSize: 12,
//                                                             ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                     Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Container(
//                                           width: 393,
//                                           height: 200,
//                                           decoration: BoxDecoration(
//                                             color: Colors.white,
//                                             borderRadius:
//                                                 BorderRadius.circular(0),
//                                           ),
//                                           child: Container(
//                                             width: 400,
//                                             height: double.infinity,
//                                             child: Stack(
//                                               children: [
//                                                 PageView(
//                                                   controller:
//                                                       pageViewController ??=
//                                                           PageController(
//                                                               initialPage: 0),
//                                                   scrollDirection:
//                                                       Axis.horizontal,
//                                                   children: [
//                                                     Image.asset(
//                                                       'assets/images/zyro-image_(2).png',
//                                                       width: 100,
//                                                       height: 100,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                     Image.asset(
//                                                       'assets/images/zyro-image_(3).png',
//                                                       width: 100,
//                                                       height: 100,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                     Image.asset(
//                                                       'assets/images/zyro-image.png',
//                                                       width: 100,
//                                                       height: 100,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 Align(
//                                                   alignment:
//                                                       AlignmentDirectional(
//                                                           0, 0.95),
//                                                   child: Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 0, 0, 0, 5),
//                                                     child: SmoothPageIndicator(
//                                                       controller:
//                                                           pageViewController ??=
//                                                               PageController(
//                                                                   initialPage:
//                                                                       0),
//                                                       count: 3,
//                                                       axisDirection:
//                                                           Axis.horizontal,
//                                                       onDotClicked: (i) {
//                                                         pageViewController
//                                                             .animateToPage(
//                                                           i,
//                                                           duration: Duration(
//                                                               milliseconds:
//                                                                   500),
//                                                           curve: Curves.ease,
//                                                         );
//                                                       },
//                                                       effect:
//                                                           ExpandingDotsEffect(
//                                                         expansionFactor: 1.5,
//                                                         spacing: 5,
//                                                         radius: 15,
//                                                         dotWidth: 30,
//                                                         dotHeight: 10,
//                                                         dotColor:
//                                                             Color(0xFF9E9E9E),
//                                                         activeDotColor:
//                                                             Color(0xFFC0A3FF),
//                                                         paintStyle:
//                                                             PaintingStyle.fill,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
