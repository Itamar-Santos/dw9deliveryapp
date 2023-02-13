import 'package:aberturadartweek/app/pages/home/home_controller.dart';
import 'package:aberturadartweek/app/pages/home/home_page.dart';
import 'package:aberturadartweek/app/repositories/products_repository.dart';
import 'package:aberturadartweek/app/repositories/products_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeRouter {
  HomeRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider<ProductsRepository>(
            create: (context) => ProductsRepositoryImpl(
              dio: context.read(),
            ),
          ),
          Provider(
            create: (context) => HomeController(
              context.read(),
            ),
          )
        ],
        child: const HomePage(),
      );
}
