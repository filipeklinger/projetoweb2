package model;
// Generated 10/12/2017 01:33:24 by Hibernate Tools 4.3.1



/**
 * Participa generated by hbm2java
 */
public class Participa  implements java.io.Serializable {


     private ParticipaId id;
     private Aluno aluno;
     private Turma turma;
     private int idParticipa;

    public Participa() {
    }

    public Participa(ParticipaId id, Aluno aluno, Turma turma, int idParticipa) {
       this.id = id;
       this.aluno = aluno;
       this.turma = turma;
       this.idParticipa = idParticipa;
    }
   
    public ParticipaId getId() {
        return this.id;
    }
    
    public void setId(ParticipaId id) {
        this.id = id;
    }
    public Aluno getAluno() {
        return this.aluno;
    }
    
    public void setAluno(Aluno aluno) {
        this.aluno = aluno;
    }
    public Turma getTurma() {
        return this.turma;
    }
    
    public void setTurma(Turma turma) {
        this.turma = turma;
    }
    public int getIdParticipa() {
        return this.idParticipa;
    }
    
    public void setIdParticipa(int idParticipa) {
        this.idParticipa = idParticipa;
    }




}

