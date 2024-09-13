class Tarefa{
  int _idUsuario = 0;
  int _idTarefa = 0;
  String _titulo = '';
  bool _completed = false;
  
 int get idUsuario => this._idUsuario;

 set idUsuario(int value) => this._idUsuario = value;

  get idTarefa => this._idTarefa;

 set idTarefa( value) => this._idTarefa = value;

  get titulo => this._titulo;

 set titulo( value) => this._titulo = value;

  get completed => this._completed;

 set completed( value) => this._completed = value;

  //Construtor vazio para inicializar
  Tarefa();

  //Construtor usando fromJson -> mapeia json para objeto
  Tarefa.fromJson(Map<String, dynamic> json)
    :
      _idUsuario = json['userId'],
      _idTarefa = json['id'],
      _titulo = json['title'],
      _completed = json['completed']
    ;
}