import 'package:clean_arquiteture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arquiteture/layers/data/datasources/local/get_carros_por_local_datasource_imp.dart';
import 'package:clean_arquiteture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_arquiteture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_arquiteture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arquiteture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_arquiteture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_arquiteture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:clean_arquiteture/layers/presentatiton/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasources
    getIt.registerLazySingleton<GetCarrosPorCorDatasource>(
      () => GetCarrosPorLocalDatasourceImp(),
    );
    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarrosPorCorRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
      () => SalvarCarroFavoritoRepositoryImp(),
    );
    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUsecase>(
      () => GetCarrosPorCorUsecaseImp(getIt()),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(
      () => SalvarCarroFavoritoUsecaseImp(getIt()),
    );

    //controllers
    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
  }
}


  // CarroController controller = CarroController(
  //     GetCarrosPorCorUsecaseImp(
  //       GetCarrosPorCorRepositoryImp(
  //         GetCarrosPorLocalDatasourceImp(),
  //       ),
  //     ),
  //     SalvarCarroFavoritoUsecaseImp(SalvarCarroFavoritoRepositoryImp()
  //      )
  //     );