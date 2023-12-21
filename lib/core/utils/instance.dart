import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utils/api.dart';
import 'package:flutter_application_1/features/home/domain/usecase/featchbook.dart';
import 'package:flutter_application_1/features/home/domain/usecase/featchnewstbookusecase.dart';

import 'package:get_it/get_it.dart';

import '../../features/home/data/datasource/localdatasource/localdatasource.dart';
import '../../features/home/data/datasource/remotedatasource/remoteimp.dart';
import '../../features/home/data/repos/cleanimp.dart';
import '../../features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
void setup()
{
  getIt.registerSingleton<api>(api(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<api>()));
  getIt.registerSingleton<fatchnewstcase>(fatchnewstcase(home: cleanimp(remimp(api(Dio())), localdatimp())));
}