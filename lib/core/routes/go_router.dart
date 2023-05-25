
import 'package:app_flutter_produkt_bestellen/features/category/presentation/page/category_page.dart';
import 'package:go_router/go_router.dart';


enum AppGoRouter
{
  root('/'),
  categoryPage('Category');
  const AppGoRouter(this.title);
  final String title;

  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
    GoRoute(path: root.title,
    builder: (context,state)=> const Category())
  ],
);

  static GoRouter get router => _router;
}