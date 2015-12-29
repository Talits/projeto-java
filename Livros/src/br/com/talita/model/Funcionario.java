
package br.com.talita.model;


public class Funcionario {
    private int cod_func;
    private String nome;
    private String cpf;
    private String email;

    /**
     * @return the cod_func
     */
    public int getCod_func() {
        return cod_func;
    }

    /**
     * @param cod_func the cod_func to set
     */
    public void setCod_func(int cod_func) {
        this.cod_func = cod_func;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the cpf
     */
    public String getCpf() {
        return cpf;
    }

    /**
     * @param cpf the cpf to set
     */
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    
    public void setEmail(String email) {
        this.email = email;
    }
    
}
