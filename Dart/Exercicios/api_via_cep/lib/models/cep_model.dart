class Cep_Model{
  String _cep = '';
  String _logradouro = '';
  String _estado = '';
  String _bairro = '';
  
 String get cep => this._cep;

 set cep(String value) => this._cep = value;

  get logradouro => this._logradouro;

 set logradouro( value) => this._logradouro = value;

  get estado => this._estado;

 set estado( value) => this._estado = value;

  get bairro => this._bairro;

 set bairro( value) => this._bairro = value;

  Cep_Model();

  Cep_Model.fromJson(Map<String, dynamic> json)
    :
      _cep = json['cep'],
      _logradouro = json['logradouro'],
      _estado = json['estado'],
      _bairro = json['bairro']
    ;

}