import 'package:clean_arquiteture/layers/domain/data/dto/carro_dto.dart';
import 'package:clean_arquiteture/layers/domain/entitys/carro_entity.dart';
import 'package:clean_arquiteture/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    var json = {
       'placa': 'AAA1122',
      'quantidadePortas': 2,
      'valorFinal': 1000.00,
    };
    return CarroDto.fronMap(json);
  }
}