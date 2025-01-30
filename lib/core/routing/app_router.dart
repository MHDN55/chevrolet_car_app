import 'package:chevrolet_car_app/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/details/presentation/pages/details_page.dart';
import 'routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: Routes.homePage,
        path: '/',
        // path: '/home_page',
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        name: Routes.detailsPage,
        // path: '/',
        path: '/details_page:index',
        builder: (context, state) {
          return DetailsPage(
            indexString: state.pathParameters['index']!,
          );
        },
      ),
    ],
  );
}
