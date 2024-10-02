import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arquiteture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUsecaseImp implements GetCarrosPorCorUsecase {

  final GetCarrosPorCorRepository _getCarrosPorCorRepository;
  GetCarrosPorCorUsecaseImp(this._getCarrosPorCorRepository);

  @override
  CarroEntity call(String cor) {
  return _getCarrosPorCorRepository(cor);
  }
}
