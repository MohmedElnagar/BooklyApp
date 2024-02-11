import 'package:bookly_app/core/utils/api_serves.dart';
import 'package:bookly_app/features/home/data/repo/home_reop_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setupServiceLocator() {
  getit.registerSingleton<ApiService>(ApiService(Dio()));
  getit.registerSingleton<HomeRepoImp>(HomeRepoImp(getit.get<ApiService>()));
}
