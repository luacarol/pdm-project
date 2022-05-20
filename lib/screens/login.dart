class Login {
  final String email;
  final String senha;

  Login(this.email, this.senha);

  @override
  String toString() {
    return 'Login{name: $email, senha: $senha}';
  }
}
