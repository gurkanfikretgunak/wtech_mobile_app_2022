import 'package:client/core/views/applys_view/applys.view.dart';
import 'package:client/core/views/educations_view/educations.view.dart';
import 'package:client/core/views/favorites_view/favorites.view.dart';
import 'package:client/core/views/home_view/home.view.dart';
import 'package:flutter/material.dart';

List<Widget> pageOptionList = <Widget>[
  HomeView(),
  const EducationView(),
  FavoritesView(),
  ApplysView()
];
