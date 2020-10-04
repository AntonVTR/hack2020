import 'package:edo_app/services/dialog_service.dart';
import 'package:edo_app/services/navigation_service.dart';
import 'package:edo_app/ui/router.dart';
import 'package:edo_app/ui/views/role_select.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'locator.dart';
import 'managers/dialog_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salary',
      theme: ThemeData(
        primaryColor: Color(0xff19c7c1),
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            ),
      ),
      builder: (context, child) => Navigator(
        key: locator<DialogService>().dialogNavigationKey,
        onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => DialogManager(child: child)),
      ),
      navigatorKey: locator<NavigationService>().navigationKey,
      home: RoleSelectView(),
      onGenerateRoute: generateRoute,
    );
  }
}
