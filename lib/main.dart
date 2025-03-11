import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/routes/routes.dart';
import 'package:bankee/presentation/utils/service_locator.dart';
import 'package:bankee/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ServiceLocator.setContext(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: Utils.scaffoldMessengerKey,
        title: Constants.appName,
        initialRoute: RouteNames.splashScreen,
        onGenerateRoute: Routes.generateRoute,
        themeMode: ThemeMode.light,
        theme: lightTheme,
        // darkTheme: darkTheme,
      ),
    );
  }
}
