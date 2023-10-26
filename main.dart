// import 'package:flutter/material.dart';
// // import 'package:flutter_catalog/pages/login_page.dart';
// // import 'package:flutter_catalog/utils/routes.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'pages/home_page.dart';
// import 'pages/login_page.dart';
// import 'utils/routes.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       themeMode: ThemeMode.light,
//       theme: ThemeData(
//         primarySwatch: Colors.deepPurple,
//         fontFamily: GoogleFonts.lato().fontFamily,
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//       ),
//       initialRoute: "/",
//       routes: {
//         "/": (context) => LoginPage(),
//         MyRoutes.homeRoute: (context) => HomePage(),
//         MyRoutes.loginRoute: (context) => LoginPage(),
//
//       },
//     );
//   }
// }
import 'package:ecommerce/pages/Address.dart';
import 'package:ecommerce/pages/check_out.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter_catalog/pages/login_page.dart';
// import 'package:flutter_catalog/utils/routes.dart';
import 'core/store.dart';
//import 'pages/InvoicePage.dart';
import 'pages/cart_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/routes.dart';
import 'widgets/themes.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //themeMode: ThemeMode.light,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        //"/": (context) => invoicePage(address: '', key: null, name: '', mobileNo: '',),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.checkRout:(context) =>  CheckoutPage(key: ValueKey('checkout'), name: '', email: '', mobileNo: '', address: '', flatNo: '', pinCode: '',),
        MyRoutes.addressRoute:(context)=> AddressPage(), MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.checkRout:(context) =>  CheckoutPage(key: ValueKey('checkout'), name: '', email: '', mobileNo: '', address: '', flatNo: '', pinCode: '',),
        MyRoutes.addressRoute:(context)=> AddressPage(),MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.checkRout:(context) =>  CheckoutPage(key: ValueKey('checkout'), name: '', email: '', mobileNo: '', address: '', flatNo: '', pinCode: '',),
        MyRoutes.addressRoute:(context)=> AddressPage(),MyRoutes.cartRoute: (context) => CartPage(),
        MyRoutes.checkRout:(context) =>  CheckoutPage(key: ValueKey('checkout'), name: '', email: '', mobileNo: '', address: '', flatNo: '', pinCode: '',),
        MyRoutes.addressRoute:(context)=> AddressPage(),
        //MyRoutes.invoiceRoute:(context) =>  InvoicePage(key: ValueKey('checkout')),
      },
    );
  }
}
