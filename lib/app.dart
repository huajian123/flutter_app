import 'package:fluro/fluro.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/common/provider/index.dart';
import 'package:flutterapp/common/router/application.dart';
import 'package:flutterapp/common/router/routes.dart';
import 'package:flutterapp/global.dart';

import 'common/provider/provider.dart';
import 'common/values/values.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //
    // 路由
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
    return Store.init(
        context: context,
        // 修改状态栏字体为黑色
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: MaterialApp(
            title: Global.appName,
            onGenerateRoute: Application.router.generator,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.theme,
            home:IndexPage(),
          ),
        ));
  }
}
