import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_arquiteture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_arquiteture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test('Espero que salvar o carro com sucesso', () async {
    SalvarCarroFavoritoUsecase useCase = SalvarCarroFavoritoUsecaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );
    var carro = CarroEntity(placa: 'placa', qPortas: 2, valor: 1);
    var result = await useCase(carro);
    expect(result, true);
  });
}
