import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/const.dart';
import 'package:flutter_application_1/core/utils/api.dart';
import 'package:flutter_application_1/core/utils/instance.dart';
import 'package:flutter_application_1/core/utils/router.dart';
import 'package:flutter_application_1/features/home/data/datasource/localdatasource/localdatasource.dart';
import 'package:flutter_application_1/features/home/data/datasource/remotedatasource/remoteimp.dart';
import 'package:flutter_application_1/features/home/data/repos/cleanimp.dart';
import 'package:flutter_application_1/features/home/domain/entity/bookenity.dart';
import 'package:flutter_application_1/features/home/domain/usecase/featchbook.dart';
import 'package:flutter_application_1/features/home/domain/usecase/featchnewstbookusecase.dart';
import 'package:flutter_application_1/features/home/presention/manager/cubit/similercubit_cubit.dart';

import 'package:flutter_application_1/features/home/presention/manager/feutther_boolk/fuether_cubit.dart';
import 'package:flutter_application_1/features/home/presention/manager/newsbook/newstbook_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'features/home/data/repos/home_repo_impl.dart';
import 'features/splash/presenttion/view/splash.dart';
import 'package:bloc/bloc.dart';
void main() async{
  Hive.registerAdapter(bookentityAdapter());
  await Hive.initFlutter();
  
  await Hive.openBox<bookentity>(febox);
  await Hive.openBox<bookentity>(newsbox);

  runApp(const MyApp());
  setup();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(
          create: (context) => FuetherCubit(getIt.get<HomeRepoImpl>())..fatchfuterbook(),
          
         ),
            BlocProvider(
          create: (context) => NewstbookCubit(getIt.get<HomeRepoImpl>())..getfuther(),
          
         ),
          BlocProvider(
          create: (context) => SimilercubitCubit(getIt.get<HomeRepoImpl>())..getfuther(),
          
         ),
      ],
      child: MaterialApp.router(
        
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimecolor,
            textTheme: GoogleFonts.montagaTextTheme(ThemeData.dark().textTheme)),
        routerConfig: router.routerr,
      ),
    );
  }
}
