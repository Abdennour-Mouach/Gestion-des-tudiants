package service;

import javax.xml.ws.Endpoint;

public class ServeurSOAP {

    public static void main(String[] args) {
        String url = "http://localhost:8081/EtudiantService";
        Endpoint.publish(url, new EtudiantServiceImpl());
        System.out.println("Service SOAP démarré : " + url + "?wsdl");
    }
}
