import "package:afro_app/bloc_observer.dart";
import "package:afro_app/constants.dart";
import "package:afro_app/core/functions/service_locator.dart";
import "package:afro_app/core/nertwork/cacheNetwork.dart";
import "package:afro_app/core/utilies/api_keys.dart";
import "package:afro_app/features/authuntcation/presentation/view_model/log_in_cubit.dart";
import "package:afro_app/features/home_screen/data/home_repo_impl.dart";
import "package:afro_app/features/home_screen/presentation/view_model/courses_cubit.dart";
import "package:afro_app/features/home_screen/presentation/views/widgets/bottom_nav_body,.dart";
import "package:afro_app/features/splash_screen/presentation/views/splash_view.dart";
import "package:device_preview/device_preview.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  setUp();
  Stripe.publishableKey = ApiKeys.publishableKey;
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.cachInstialization();
  
  token = await CacheNetwork.getCacheData(key: "token");
  debugPrint("Token retrieved from cache: $token");
  Bloc.observer = MyBlocObserver();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // Widget homeScreen = (prefs.getBool('watched') ?? false) ? const BottomNavBody() : const SplashView();
  
  // await prefs.setString('token', token!);

//remove await
  
  debugPrint("tokeeenn : $token");
  runApp(
    const MyApp(),
  );
}

// void main() {
//   Stripe.publishableKey = ApiKeys.publishableKey;
//   runApp(
//   DevicePreview(
//     builder: (BuildContext context) => const MyApp(),
//   ),
// );
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => LoginCubit(),
          ),
          BlocProvider(
            create: (context) => CoursesCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchCourses(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // ignore: deprecated_member_use
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            textTheme: GoogleFonts.josefinSansTextTheme(),
            useMaterial3: true,
          ),
          home: token != "empty" ? const BottomNavBody(): const  SplashView() ,
        ),
      ),
    );
  }
}
