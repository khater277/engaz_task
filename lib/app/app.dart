import 'package:engaz_task/app/injector.dart';
import 'package:engaz_task/config/app_theme.dart';
import 'package:engaz_task/core/local_storage/user_storage.dart';
import 'package:engaz_task/features/home/cubit/home_cubit.dart';
import 'package:engaz_task/features/home/presentation/screens/home_screen.dart';
import 'package:engaz_task/features/login/cubit/login_cubit.dart';
import 'package:engaz_task/features/login/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) => di<LoginCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<HomeCubit>()
                  ..homeInit(
                      userToken: di<UserStorage>().getData()!.userToken!),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme(),
              home: di<UserStorage>().hasData()
                  ? const HomeScreen()
                  : const LoginScreen(),
            ),
          );
        });
  }
}
