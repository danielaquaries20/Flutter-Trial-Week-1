import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:week1/detail_screen.dart';
import 'package:week1/my_first_layout.dart';
import 'package:week1/profile.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyFirstLayout(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final data = state.extra;
        if (data is Profile) {
          return DetailScreen(data: data);
        }
        return const Scaffold(
          body: Center(
            child: Text('Not Found'),
          ),
        );
      },
    )
  ],
);
