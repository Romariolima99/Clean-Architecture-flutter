import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';

abstract class SalvarCarroFavoritoRepository {
Future<bool> call(CarroEntity carroEntity);
}