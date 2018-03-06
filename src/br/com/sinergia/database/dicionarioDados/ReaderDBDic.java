package br.com.sinergia.database.dicionarioDados;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;

import br.com.sinergia.models.Campo;
import br.com.sinergia.models.Tabela;
import br.com.sinergia.models.TabelaFull;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.stream.Collectors;

import static br.com.sinergia.functions.Natives.ToBoo;

public class ReaderDBDic {

    public static TabelaFull tabelaFull;

    public static Tabela getTabelaByIndex(Integer idxTabela) throws Exception {
        //File fileXML = new File("./br/com/sinergia/database/dicionario/FilesXML/Tabelas/TGFPRO.xml");
        File fileXML = new File("E:\\Projetos\\Sinergia\\src\\br\\com\\sinergia\\database\\dicionario\\FilesXML\\Tabelas\\TGFPRO.xml");
        DocumentBuilderFactory docBuilderFac = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = docBuilderFac.newDocumentBuilder();
        Document doc = (Document) docBuilder.parse(fileXML);
        doc.getDocumentElement().normalize();
        NodeList nodeList = doc.getElementsByTagName("Tabela");
        Node node = nodeList.item(idxTabela);
        if (node == null) {
            throw new Exception("Tabela não encontrada para indíce: " + idxTabela);
        }
        if (node.getNodeType() == Node.ELEMENT_NODE) {
            Element element = (Element) node;
            Integer codTabela = Integer.valueOf(element.getAttribute("nuTab"));
            String nomeTabela = element.getAttribute("nomeTab");
            String descrTabela = element.getAttribute("descrTab");
            return new Tabela(idxTabela, codTabela, nomeTabela, descrTabela);
        } else {
            throw new Exception("Tabela encontrada não é ELEMENT_NODE: " + idxTabela);
        }
    }

    public static TabelaFull getTabelaFullByIndex(Integer idxTabela) throws Exception {
        if (tabelaFull != null && tabelaFull.getIdxTabela() == idxTabela) return tabelaFull;
        //File fileXML = new File("./br/com/sinergia/database/dicionario/FilesXML/Tabelas/TGFPRO.xml");
        File fileXML = new File("E:\\Projetos\\2_Sinergia\\src\\br\\com\\sinergia\\database\\dicionarioDados\\Dicionario.xml");
        DocumentBuilderFactory docBuilderFac = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = docBuilderFac.newDocumentBuilder();
        Document doc = (Document) docBuilder.parse(fileXML);
        doc.getDocumentElement().normalize();
        NodeList nodeList = doc.getElementsByTagName("Tabela");
        Node node = nodeList.item(idxTabela);
        if (node == null) {
            throw new Exception("Tabela não encontrada para indíce: " + idxTabela);
        }
        if (node.getNodeType() == Node.ELEMENT_NODE) {
            Element element = (Element) node;
            Integer codTabela = Integer.valueOf(element.getAttribute("nuTab"));
            String nomeTabela = element.getAttribute("nomeTab");
            String descrTabela = element.getAttribute("descrTab");
            NodeList nodeListCampo = doc.getElementsByTagName("Campo");
            ArrayList<Campo> arrayCampo = new ArrayList<>();
            for (int index = 0; index < nodeListCampo.getLength(); index++) {
                arrayCampo.add(getCampoTab(nodeListCampo, index));
            }
            tabelaFull = new TabelaFull(idxTabela, codTabela, nomeTabela, descrTabela, arrayCampo);
            return tabelaFull;
        } else {
            throw new ClassNotFoundException("Tabela encontrada não é ELEMENT_NODE: " + idxTabela);
        }
    }

    private static Campo getCampoTab(NodeList nodeList, Integer idxCampo) throws Exception {
        Node node = nodeList.item(idxCampo);
        if (node.getNodeType() == Node.ELEMENT_NODE) {
            Element elementCampo = (Element) node;
            Integer codCampo = Integer.valueOf(elementCampo.getAttribute("idCampo"));
            String nomeCampo = elementCampo.getAttribute("nomeCampo");
            String descrCampo = elementCampo.getAttribute("descrCampo");
            String pesqCampo = elementCampo.getAttribute("pesqCampo");
            Element elementTipo = (Element) elementCampo.getElementsByTagName("InfoCampo").item(0);
            Integer tipoCampo = Integer.valueOf(elementTipo.getAttribute("tipoCampo"));
            Integer vlrCampo = Integer.valueOf(elementTipo.getAttribute("vlrCampo"));
            Boolean isForeign = ToBoo(elementTipo.getAttribute("foreign"));
            Boolean isNullable = ToBoo(elementTipo.getAttribute("nullable"));
            String Default = elementTipo.getAttribute("default");
            Element elementOpcoes = (Element) elementCampo.getElementsByTagName("Opcoes").item(0);
            Boolean hasOpcoes;
            try {
                hasOpcoes = elementOpcoes.hasChildNodes();
            } catch (Exception ex) {
                hasOpcoes = false;
            }
            Map<String, String> mapOpcoes = new LinkedHashMap<>();
            if (hasOpcoes) {
                int qtdOpcoes = elementOpcoes.getElementsByTagName("Opcao").getLength();
                for (int indexOpcao = 0; indexOpcao < qtdOpcoes; indexOpcao++) {
                    Element elementOpcao = (Element) (Element) elementOpcoes.getElementsByTagName("Opcao").item(indexOpcao);
                    String valor = elementOpcao.getAttribute("valor");
                    String resultado = elementOpcao.getAttribute("resultado");
                    mapOpcoes.put(valor, resultado);
                }
            }
            return new Campo(idxCampo, codCampo, nomeCampo, descrCampo, pesqCampo,
                    tipoCampo, vlrCampo, isForeign, isNullable, Default, hasOpcoes, mapOpcoes);
        } else {
            throw new Exception("Campo encontrado não é ELEMENT_NODE: " + idxCampo + " x " + node.getNodeType());
        }
    }

    public static Campo getCampo(Integer idxTabela, Integer idCampo) throws Exception, ClassNotFoundException {
        if (tabelaFull != null && tabelaFull.getIdxTabela() == idxTabela) {
            for (Campo campo : tabelaFull.getCampos()) {
                if (campo.getIdxCampo() == idCampo) {
                    return campo;
                }
            }
        } else {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse("E:\\Projetos\\2_Sinergia\\src\\br\\com\\sinergia\\database\\dicionarioDados\\Dicionario.xml");
            doc.getDocumentElement().normalize();
            NodeList nodeList = doc.getElementsByTagName("Tabela");
            Node node = nodeList.item(idxTabela);
            if (node == null) {
                throw new ClassNotFoundException("Campo não encontrada para indíce: " + idxTabela);
            }
            if (node.getNodeType() == Node.ELEMENT_NODE) {
                NodeList nodeListCampo = doc.getElementsByTagName("Campo");
                return getCampoTab(nodeListCampo, idCampo);
            } else {
                throw new ClassNotFoundException("Tabela encontrada não é ELEMENT_NODE: " + idxTabela);
            }
        }
        throw new ClassNotFoundException("Campo não encontrada para indíce: " + idxTabela);
    }

    private static Object getTagValue(Element element, String nomeTag, Integer idxElement) {
        NodeList nlList = element.getElementsByTagName(nomeTag).item(idxElement).getChildNodes();
        Node nValue = (Node) nlList.item(0);
        return nValue.getNodeValue();
    }

    private static Object getTagValue(Element element, String nomeTag, Integer idxElement, Integer idxSubElement) {
        NodeList nlList = element.getElementsByTagName(nomeTag).item(idxElement).getChildNodes();
        Node nValue = (Node) nlList.item(idxSubElement);
        return nValue.getNodeValue();
    }

    public static String readXMLFile(final String urlXML) throws Exception {
        BufferedReader br = new BufferedReader(new FileReader(urlXML));
        String strXML = br.lines().collect(Collectors.joining("\n"));
        return strXML;
    }
}
