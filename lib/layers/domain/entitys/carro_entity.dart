class CarroEntity {
  String placa;
  int qPortas;
  double valor;

  CarroEntity(
      {required this.placa, required this.qPortas, required this.valor});

  double get valorReal {
    return valor * qPortas;
  }

  setValorCarro() {
    if (valorReal > 10000.00) {
     valor *= 2;
    }
  }
}
