import 'package:clean_arquiteture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arquiteture/layers/data/dto/carro_dto.dart';

class GetCarrosPorLocalDatasourceImp implements GetCarrosPorCorDatasource {
  final jsonVermelho = {
    'placa': 'AAA1122',
    'quantidadePortas': 4,
    'valorFinal': 5000.00,
  };

  final jsonAny = {
    'placa': 'BBB5566',
    'quantidadePortas': 2,
    'valorFinal': 2000.00,
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fronMap(jsonVermelho);
    }
    return CarroDto.fronMap(jsonAny);
  }
}
