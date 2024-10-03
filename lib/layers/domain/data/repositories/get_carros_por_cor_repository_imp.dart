import 'package:clean_arquiteture/layers/domain/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDatasource _getCarrosPorCorDatasource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDatasource);

  @override
  CarroEntity call(String cor) {
   
    return _getCarrosPorCorDatasource(cor);
  }
}