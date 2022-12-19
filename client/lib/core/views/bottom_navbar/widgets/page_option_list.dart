import 'package:client/core/views/events_view/events.view.dart';
import 'package:client/core/views/favorites_view/favorites.view.dart';
import 'package:flutter/material.dart';

import '../../applys_view/applys.view.dart';
import '../../educations_view/educations.view.dart';
import '../../home_view/home.view.dart';

List<Widget> pageOptionList = <Widget>[
  HomeView(),
  const EducationView(),
  const EventsView(),
  FavoritesView(),
  ApplysView()
];
