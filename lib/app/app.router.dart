// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:apis/services/models/data_in_list.dart' as _i12;
import 'package:apis/services/models/post_album.dart' as _i11;
import 'package:apis/ui/views/auth/log_in/log_in_view.dart' as _i4;
import 'package:apis/ui/views/auth/sign_up/sign_up_view.dart' as _i5;
import 'package:apis/ui/views/home/home_view.dart' as _i2;
import 'package:apis/ui/views/list_view_data.dart/list_view_data/list_view_data_view.dart'
    as _i8;
import 'package:apis/ui/views/list_view_data.dart/show_list/show_list_view.dart'
    as _i9;
import 'package:apis/ui/views/post_apihit/apiget_data/apiget_data_view.dart'
    as _i7;
import 'package:apis/ui/views/post_apihit/post_api/post_api_view.dart' as _i6;
import 'package:apis/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i13;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const logInView = '/log-in-view';

  static const signUpView = '/sign-up-view';

  static const postApiView = '/post-api-view';

  static const apigetDataView = '/apiget-data-view';

  static const listViewDataView = '/list-view-data-view';

  static const showListView = '/show-list-view';

  static const all = <String>{
    homeView,
    startupView,
    logInView,
    signUpView,
    postApiView,
    apigetDataView,
    listViewDataView,
    showListView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.logInView,
      page: _i4.LogInView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i5.SignUpView,
    ),
    _i1.RouteDef(
      Routes.postApiView,
      page: _i6.PostApiView,
    ),
    _i1.RouteDef(
      Routes.apigetDataView,
      page: _i7.ApigetDataView,
    ),
    _i1.RouteDef(
      Routes.listViewDataView,
      page: _i8.ListViewDataView,
    ),
    _i1.RouteDef(
      Routes.showListView,
      page: _i9.ShowListView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LogInView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LogInView(),
        settings: data,
      );
    },
    _i5.SignUpView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SignUpView(),
        settings: data,
      );
    },
    _i6.PostApiView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.PostApiView(),
        settings: data,
      );
    },
    _i7.ApigetDataView: (data) {
      final args = data.getArgs<ApigetDataViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.ApigetDataView(key: args.key, postAlbum: args.postAlbum),
        settings: data,
      );
    },
    _i8.ListViewDataView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.ListViewDataView(),
        settings: data,
      );
    },
    _i9.ShowListView: (data) {
      final args = data.getArgs<ShowListViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i9.ShowListView(key: args.key, dataInList: args.dataInList),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class ApigetDataViewArguments {
  const ApigetDataViewArguments({
    this.key,
    required this.postAlbum,
  });

  final _i10.Key? key;

  final _i11.PostAlbum postAlbum;

  @override
  String toString() {
    return '{"key": "$key", "postAlbum": "$postAlbum"}';
  }

  @override
  bool operator ==(covariant ApigetDataViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.postAlbum == postAlbum;
  }

  @override
  int get hashCode {
    return key.hashCode ^ postAlbum.hashCode;
  }
}

class ShowListViewArguments {
  const ShowListViewArguments({
    this.key,
    required this.dataInList,
  });

  final _i10.Key? key;

  final _i12.DataInList dataInList;

  @override
  String toString() {
    return '{"key": "$key", "dataInList": "$dataInList"}';
  }

  @override
  bool operator ==(covariant ShowListViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.dataInList == dataInList;
  }

  @override
  int get hashCode {
    return key.hashCode ^ dataInList.hashCode;
  }
}

extension NavigatorStateExtension on _i13.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLogInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.logInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPostApiView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.postApiView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToApigetDataView({
    _i10.Key? key,
    required _i11.PostAlbum postAlbum,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.apigetDataView,
        arguments: ApigetDataViewArguments(key: key, postAlbum: postAlbum),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToListViewDataView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.listViewDataView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToShowListView({
    _i10.Key? key,
    required _i12.DataInList dataInList,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.showListView,
        arguments: ShowListViewArguments(key: key, dataInList: dataInList),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLogInView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.logInView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPostApiView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.postApiView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithApigetDataView({
    _i10.Key? key,
    required _i11.PostAlbum postAlbum,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.apigetDataView,
        arguments: ApigetDataViewArguments(key: key, postAlbum: postAlbum),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithListViewDataView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.listViewDataView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithShowListView({
    _i10.Key? key,
    required _i12.DataInList dataInList,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.showListView,
        arguments: ShowListViewArguments(key: key, dataInList: dataInList),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
