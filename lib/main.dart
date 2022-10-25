import 'package:first_app/blocs/wishlist/wishlist_bloc.dart';
import 'package:first_app/config/app_router.dart';
import 'package:first_app/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/theme.dart';

void main() {
  runApp(MyApp()); // came from the import 'package:flutter/material.dart';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist()))
      ],
      child: MaterialApp(
        title: 'E-buy',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
