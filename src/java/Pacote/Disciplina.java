/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pacote;

import java.util.ArrayList;
import org.apache.catalina.core.ApplicationPart;

/**
 *
 * @author cassio
 */
public class Disciplina {
    private String nome;
    private String ementa;
    private String ciclo;
    private Float nota;
    ArrayList<Disciplina> modulo = new ArrayList();
   

    public Disciplina(String nome, String ementa, String ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }

    public String getCiclo() {
        return ciclo;
    }

    public void setCiclo(String ciclo) {
        this.ciclo = ciclo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public Float getNota() {
        return nota;
    }

    public void setNota(Float nota) {
        this.nota = nota;
    }   
    ArrayList disciplinas = new ArrayList();
    
    
   
}
