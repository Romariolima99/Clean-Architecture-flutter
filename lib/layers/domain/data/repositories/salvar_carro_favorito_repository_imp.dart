import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}