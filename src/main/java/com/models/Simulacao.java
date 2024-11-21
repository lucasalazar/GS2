package com.models;

public class Simulacao {
    private int idSimulacao;
    private int idEmpresa;
    private String tipoEnergia;
    private double economiaAnual;
    private double custoInvestimento;
    private int retornoInvestimento;

    public Simulacao() {
    }

    public Simulacao(int idEmpresa, String tipoEnergia, double economiaAnual, double custoInvestimento, int retornoInvestimento) {
        this.idEmpresa = idEmpresa;
        this.tipoEnergia = tipoEnergia;
        this.economiaAnual = economiaAnual;
        this.custoInvestimento = custoInvestimento;
        this.retornoInvestimento = retornoInvestimento;
    }

    // Getters e Setters
    public int getIdSimulacao() {
        return idSimulacao;
    }

    public void setIdSimulacao(int idSimulacao) {
        this.idSimulacao = idSimulacao;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public String getTipoEnergia() {
        return tipoEnergia;
    }

    public void setTipoEnergia(String tipoEnergia) {
        this.tipoEnergia = tipoEnergia;
    }

    public double getEconomiaAnual() {
        return economiaAnual;
    }

    public void setEconomiaAnual(double economiaAnual) {
        this.economiaAnual = economiaAnual;
    }

    public double getCustoInvestimento() {
        return custoInvestimento;
    }

    public void setCustoInvestimento(double custoInvestimento) {
        this.custoInvestimento = custoInvestimento;
    }

    public int getRetornoInvestimento() {
        return retornoInvestimento;
    }

    public void setRetornoInvestimento(int retornoInvestimento) {
        this.retornoInvestimento = retornoInvestimento;
    }
}
