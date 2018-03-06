package br.com.sinergia.models;

public enum TipoCampos {
    NUMBER, DATE, FLOAT, DECIMAL, DOUBLE, VARCHAR2, BLOB, BOOLEAN, NENHUM;

    public static TipoCampos getTipoCampo(Integer idx) {
        TipoCampos retorno;
        switch (idx) {
            case 1:
                retorno = NUMBER;
                break;
            case 2:
                retorno = DATE;
                break;
            case 3:
                retorno = FLOAT;
                break;
            case 4:
                retorno = DECIMAL;
                break;
            case 5:
                retorno = DOUBLE;
                break;
            case 6:
                retorno = VARCHAR2;
                break;
            case 7:
                retorno = BLOB;
            case 8:
                retorno = BOOLEAN;
                break;
            default:
                retorno = NENHUM;
                break;
        }
        return retorno;
    }
}
