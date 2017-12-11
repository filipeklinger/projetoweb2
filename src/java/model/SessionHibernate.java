/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.util.List;
import static jdk.nashorn.internal.runtime.Context.printStackTrace;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.transform.AliasToBeanResultTransformer;

/**
 *
 * @author filipe
 * Aqui criamos uma classe que se encarrega de levar o nosso objeto
 * para ser salvo no sql pelo Hibernate
 */
public class SessionHibernate {
    
    public static void salvaDados(Object E){
        
        SessionFactory sF;
        sF = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        Session session = sF.openSession();
        session.beginTransaction();
        session.save(E);
        session.getTransaction().commit();
        session.close();
    }
    public static List recuperaAlunos(){
        List<Aluno> list = null;
        SessionFactory sF;
        sF = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        Session session = sF.openSession();
        try{
            String consulta = ("SELECT (id_aluno) as idAluno, identidade, email, (primeiro_nome) as primeiroNome, sobrenome, telefone, celular, bairro, rua, cidade, nascimento, desconto, bolsista, ativo, sexo FROM aluno");
            session.beginTransaction();
            //list = session.createQuery(consulta).list();
            Query query = session.createSQLQuery(consulta);
            query.setResultTransformer(new AliasToBeanResultTransformer(Aluno.class));
            list = query.list();
            session.getTransaction().commit();
        }catch(HibernateException e){
            printStackTrace(e);
        }
        session.close();
        
        return list;
    }
    public static List recuperaIdAlunos(int id){
        List<Aluno> list = null;
        SessionFactory sF;
        sF = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        Session session = sF.openSession();
        try{
            String consulta = ("SELECT (id_aluno) as idAluno, identidade, email, (primeiro_nome) as primeiroNome, sobrenome, telefone, celular, bairro, rua, cidade, nascimento, desconto, bolsista, ativo, sexo FROM aluno where id_aluno = :id");
            session.beginTransaction();
            //list = session.createQuery(consulta).list();
            Query query = session.createSQLQuery(consulta).setParameter("id", id);
            query.setResultTransformer(new AliasToBeanResultTransformer(Aluno.class));
            list = query.list();
            session.getTransaction().commit();
        }catch(HibernateException e){
            printStackTrace(e);
        }
        session.close();
        
        return list;
    }
    
}
