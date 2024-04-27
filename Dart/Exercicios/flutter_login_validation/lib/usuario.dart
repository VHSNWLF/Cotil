class Usuario{
  String username = "";
  String password = "";

  Usuario.v();
  Usuario(this.username, this.password);
  
 String get getUsername => this.username;

 set setUsername(String username) => this.username = username;

  get getPassword => this.password;

 set setPassword( password) => this.password = password;


}