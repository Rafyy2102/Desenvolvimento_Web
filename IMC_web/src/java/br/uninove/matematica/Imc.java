package br.uninove.matematica;

public class Imc {
    private float peso;
    private float altura;
    private float imc;
    private String classificacaoimc;

    /**
     * @return the peso
     */
    public float getPeso() {
        return peso;
    }

    /**
     * @param peso the peso to set
     */
    public void setPeso(float peso) {
        this.peso = peso;
    }

    /**
     * @return the altura
     */
    public float getAltura() {
        return altura;
    }

    /**
     * @param altura the altura to set
     */
    public void setAltura(float altura) {
        this.altura = altura;
    }

    /**
     * @return the imc
     */
    public float getImc() {
        return imc;
    }

    /**
     * @param imc the imc to set
     */
    public void setImc(float imc) {
        this.imc = imc;
    }

    /**
     * @return the classificacao
     */
    public String getClassificacao() {
        return classificacaoimc;
    }

    /**
     * @param classificacao the classificacao to set
     */
    public void setClassificacao(String classificacao) {
        this.classificacaoimc = classificacao;
    }
    
    public float calculaIMC(){
        imc = peso / (altura * altura);
        return imc;
    } 
    public String mentoClassificacao(){
           String classificacao;
           
           if(imc < 18.5){
           classificacao = "Magreza";
           }
           else if(imc < 18.5 && imc > 24.9){
           classificacao = "Peso normal";
           }    
           else if (imc >= 25.0 && imc <= 29.9){
           classificacao = "Sobrepeso I";
           }
           else if (imc >= 30.0 && imc <= 34.9) {
           classificacao = "Obesidade Grau I";
           }
           else if(imc >= 35.0 && imc <= 39.9){
           classificacao = "Obesidade II";
           }
           else{
           classificacao = "Obesidade Grave III";
           }
                      
           return  classificacao;
           
   }
}
