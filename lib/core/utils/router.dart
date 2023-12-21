import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/presention/view/bookdetails.dart';
import 'package:flutter_application_1/features/home/presention/view/home.dart';
import 'package:flutter_application_1/features/search/presention/view/search.dart';
import 'package:flutter_application_1/features/splash/presenttion/view/splash.dart';
import 'package:go_router/go_router.dart';

abstract class router {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final routerr = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const splash(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => Bookddetales(bookModel: state.extra as BookModel,
         
      ),
    ),
    GoRoute(path: kHomeView, builder: (context, state) => const home()),
    GoRoute(path: kSearchView, builder: (context, state) => const search()),
  ]);
}
