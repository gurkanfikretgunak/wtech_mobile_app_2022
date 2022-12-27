import 'package:client/app/views/applys_view/applys.view.dart';
import 'package:client/app/views/educations_view/educations.view.dart';
import 'package:client/app/views/favorites_view/favorites.view.dart';
import 'package:client/app/views/home_view/home.view.dart';
import 'package:flutter/material.dart';

List<Widget> pageOptionList = <Widget>[
  HomeView(),
  EducationView(),
  FavoritesView(),
  ApplysView()
];
