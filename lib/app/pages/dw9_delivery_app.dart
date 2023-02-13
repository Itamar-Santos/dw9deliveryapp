import 'package:aberturadartweek/app/core/global/global_context.dart';
import 'package:aberturadartweek/app/core/provider/aplication_binding.dart';
import 'package:aberturadartweek/app/core/ui/styles/theme/theme_config.dart';
import 'package:aberturadartweek/app/pages/auth/login/login_router.dart';
import 'package:aberturadartweek/app/pages/auth/login/register_router.dart';
import 'package:aberturadartweek/app/pages/home/home_router.dart';
import 'package:aberturadartweek/app/pages/order/order_completed_page.dart';
import 'package:aberturadartweek/app/pages/order/widget/order_router.dart';
import 'package:aberturadartweek/app/pages/product_detail/details/product_detail_router.dart';
import 'package:aberturadartweek/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';



class Dw9DeliveryApp extends StatelessWidget {
final _navKey = GlobalKey<NavigatorState>();

Dw9DeliveryApp({super.key}){

GlobalContext.i.navigatorKey = _navKey;
}
  @override
  Widget build(BuildContext context) {
    return AplicationBinding(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery App',
        theme: ThemeConfig.theme ,
        navigatorKey: _navKey,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) =>   HomeRouter.page,
          '/productDetail': (context) =>  ProductDetailRouter.page, 
          '/auth/login':(context) =>  LoginRouter.page,
          '/auth/register':(context) =>  RegisterRouter.page,
          '/order':(context) =>  OrderRouter.page,
          '/order/completed':(context) => const OrderCompletedPage(),
         },
      ),
    );
    
  }
}