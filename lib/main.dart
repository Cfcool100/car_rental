import 'package:car_rental/src/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:car_rental/src/core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/feature/details/bloc/products_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => ProductsBloc(),
          child: MaterialApp.router(
            routerConfig: router,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          ),
        );
      },
    );
  }
}


///
/// CLASSE USER
/// 
/// PROPRIETE
/// - avatar (string)
/// - lieu de residence (string)
/// - name & username (string)
/// - contact & email (string)
/// 
/// EX : User(
/// - avatar 
/// - lieu de residence
/// - name & username
/// - contact & email
/// )
/// 
/// 

///
/// CLASSE PRODUCT
/// 
/// PROPRIETE
/// - image [(string)]
/// - name (string)
/// - price (double)
/// - rate (double)
/// - reviews
/// - description
/// - brand (BRAND)
/// - caracteristique [
///  Caracteristique()
/// 
/// ]
/// 
/// EX : PRODUCT(
/// - image
/// - name
/// - price
/// - rate
/// - brand
/// )
/// 
/// 
/// EX : RENTER(
/// - avatar
/// - name
/// - username
/// - tel
/// )
/// 
/// 
/// /// CLASSE BRAND
/// 
/// - libelle (string)
/// - image (string)
/// 
/// 
/// CLASSE Caracteristique
/// 
/// - libelle (string)
/// - image (string) || iconData
/// 