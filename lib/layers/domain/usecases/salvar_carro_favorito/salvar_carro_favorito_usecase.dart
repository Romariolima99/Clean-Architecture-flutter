import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';

abstract class SalvarCarroFavoritoUsecase {
  Future <bool> call(CarroEntity carroEntity);
}
