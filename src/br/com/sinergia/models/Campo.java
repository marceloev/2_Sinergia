package br.com.sinergia.models;

import java.util.LinkedHashMap;
import java.util.Map;

public class Campo {

    private Integer idxCampo;
    private Integer codCampo;
    private TipoCampos tipoCampo;
    private Integer vlrCampo;
    private String nomeCampo;
    private String descrCampo;
    private String pesqCampo;
    private Boolean Foreign;
    private Boolean Nullable;
    private String Default;
    private Boolean Opcao;
    private Map<String, String> camposOpcao = new LinkedHashMap<>();

    public Campo(Integer idxCampo, Integer codCampo, String nomeCampo, String descrCampo, String pesqCampo,
                 Integer tipoCampo, Integer vlrCampo, Boolean foreign, Boolean nullable,
                 String Default, Boolean opcao, Map<String, String> camposOpcao) {
        super();
        setIdxCampo(idxCampo);
        setCodCampo(codCampo);
        setTipoCampo(TipoCampos.getTipoCampo(tipoCampo));
        setVlrCampo(vlrCampo);
        setNomeCampo(nomeCampo);
        setDescrCampo(descrCampo);
        setPesqCampo(pesqCampo);
        setForeign(foreign);
        setNullable(nullable);
        setDefault(Default);
        setOpcao(opcao);
        setCamposOpcao(camposOpcao);
    }

    public Integer getIdxCampo() {
        return idxCampo;
    }

    public void setIdxCampo(Integer idxCampo) {
        this.idxCampo = idxCampo;
    }

    public Integer getCodCampo() {
        return codCampo;
    }

    public void setCodCampo(Integer codCampo) {
        this.codCampo = codCampo;
    }

    public TipoCampos getTipoCampo() {
        return tipoCampo;
    }

    public void setTipoCampo(TipoCampos tipoCampo) {
        this.tipoCampo = tipoCampo;
    }

    public Integer getVlrCampo() {
        return vlrCampo;
    }

    public void setVlrCampo(Integer vlrCampo) {
        this.vlrCampo = vlrCampo;
    }

    public String getNomeCampo() {
        return nomeCampo;
    }

    public void setNomeCampo(String nomeCampo) {
        this.nomeCampo = nomeCampo;
    }

    public String getDescrCampo() {
        return descrCampo;
    }

    public void setDescrCampo(String descrCampo) {
        this.descrCampo = descrCampo;
    }

    public String getPesqCampo() {
        return pesqCampo;
    }

    public void setPesqCampo(String pesqCampo) {
        this.pesqCampo = pesqCampo;
    }

    public Boolean isForeign() {
        return Foreign;
    }

    public void setForeign(Boolean foreign) {
        Foreign = foreign;
    }

    public Boolean isNullable() {
        return Nullable;
    }

    public void setNullable(Boolean nullable) {
        Nullable = nullable;
    }

    public Object getDefault() {
        return Default;
    }

    public void setDefault(String aDefault) {
        Default = aDefault;
    }

    public Boolean hasOpcao() {
        return Opcao;
    }

    public void setOpcao(Boolean opcao) {
        Opcao = opcao;
    }

    public Map<String, String> getCamposOpcao() {
        return camposOpcao;
    }

    public void setCamposOpcao(Map<String, String> camposOpcao) {
        this.camposOpcao = camposOpcao;
    }
}
