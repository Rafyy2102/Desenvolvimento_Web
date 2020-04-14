package br.uninove.seguranca;

public class Usuario {
    private String usuario;
    private String senha;

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public boolean autenticaUsuario(){
    boolean autenticado = false;
    
    //normalmente aqui haveria uma consulta no banco de dados.
    //usuario = teste senha=Senha123
    
    if(usuario.equalsIgnoreCase("teste") && (senha.equals("10a9c136d796bab18d3e144092a4f20a"))){ //Senha123       
            autenticado = true;
        }
            
    return autenticado;
  }
}
