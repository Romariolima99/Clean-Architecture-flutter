import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_arquiteture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoUsecaseImp implements SalvarCarroFavoritoUsecase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoUsecaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setValorCarro();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
