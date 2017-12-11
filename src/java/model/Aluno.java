package model;
// Generated 10/12/2017 01:33:24 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Aluno generated by hbm2java
 */
public class Aluno  implements java.io.Serializable {


     private Integer idAluno;
     private String identidade;
     private String email;
     private String primeiroNome;
     private String sobrenome;
     private String telefone;
     private String celular;
     private String bairro;
     private String rua;
     private String cidade;
     private String complemento;
     private byte[] foto;
     private Date nascimento;
     private int desconto;
     private Byte bolsista;
     private Character sexo;
     private Byte ativo;
     private Set participas = new HashSet(0);

    public Aluno() {
    }

	
    public Aluno(String identidade, String email, String primeiroNome, String sobrenome, String telefone, String celular, String bairro, String rua, String cidade, Date nascimento, int desconto, Byte bolsista, Byte ativo, Character sexo) {
        this.identidade = identidade;
        this.email = email;
        this.primeiroNome = primeiroNome;
        this.sobrenome = sobrenome;
        this.telefone = telefone;
        this.celular = celular;
        this.bairro = bairro;
        this.rua = rua;
        this.cidade = cidade;
        this.nascimento = nascimento;
        this.desconto = desconto;
        this.bolsista = bolsista;
        this.ativo = ativo;
        this.sexo = sexo;
    }
    public Aluno(String identidade, String email, String primeiroNome, String sobrenome, String telefone, String celular, String bairro, String rua, String cidade, String complemento, byte[] foto, Date nascimento, int desconto, Byte bolsista, Character sexo, Byte ativo, Set participas) {
       this.identidade = identidade;
       this.email = email;
       this.primeiroNome = primeiroNome;
       this.sobrenome = sobrenome;
       this.telefone = telefone;
       this.celular = celular;
       this.bairro = bairro;
       this.rua = rua;
       this.cidade = cidade;
       this.complemento = complemento;
       this.foto = foto;
       this.nascimento = nascimento;
       this.desconto = desconto;
       this.bolsista = bolsista;
       this.sexo = sexo;
       this.ativo = ativo;
       this.participas = participas;
    }
   
    public Integer getIdAluno() {
        return this.idAluno;
    }
    
    public void setIdAluno(Integer idAluno) {
        this.idAluno = idAluno;
    }
    public String getIdentidade() {
        return this.identidade;
    }
    
    public void setIdentidade(String identidade) {
        this.identidade = identidade;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPrimeiroNome() {
        return this.primeiroNome;
    }
    
    public void setPrimeiroNome(String primeiroNome) {
        this.primeiroNome = primeiroNome;
    }
    public String getSobrenome() {
        return this.sobrenome;
    }
    
    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }
    public String getTelefone() {
        return this.telefone;
    }
    
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    public String getCelular() {
        return this.celular;
    }
    
    public void setCelular(String celular) {
        this.celular = celular;
    }
    public String getBairro() {
        return this.bairro;
    }
    
    public void setBairro(String bairro) {
        this.bairro = bairro;
    }
    public String getRua() {
        return this.rua;
    }
    
    public void setRua(String rua) {
        this.rua = rua;
    }
    public String getCidade() {
        return this.cidade;
    }
    
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }
    public String getComplemento() {
        return this.complemento;
    }
    
    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }
    public byte[] getFoto() {
        return this.foto;
    }
    
    public void setFoto(byte[] foto) {
        this.foto = foto;
    }
    public Date getNascimento() {
        return this.nascimento;
    }
    public String getIdade(){
        //Date data = new Date(this.nascimento);
        return "";
    }
    
    public void setNascimento(Date nascimento) {
        this.nascimento = nascimento;
    }
    public int getDesconto() {
        return this.desconto;
    }
    
    public void setDesconto(int desconto) {
        this.desconto = desconto;
    }
    public String getBolsista() {
        if(this.bolsista == '1'){
            return "Sim";
        }else{
            return "Não";
        }
    }
    
    public void setBolsista(Byte bolsista) {
        this.bolsista = bolsista;
    }
    public String getSexo() {
        if(this.sexo == 'm'){
            return "Masculino";
        }else{
            return "Feminino";
        }
    }
    
    public void setSexo(Character sexo) {
        this.sexo = sexo;
    }
    public String getAtivo() {
        if(this.ativo == 1){
            return "Ativo";
        }else{
            return "Inativo";
        }
    }
    
    public void setAtivo(Byte ativo) {
        this.ativo = ativo;
    }
    public Set getParticipas() {
        return this.participas;
    }
    
    public void setParticipas(Set participas) {
        this.participas = participas;
    }




}


