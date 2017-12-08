/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

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
    }
}
