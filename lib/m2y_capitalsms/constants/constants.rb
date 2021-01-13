module M2yCapitalsms
  WSDL = "http://sms.capitalmidia.com.br/ws/wsEnviaSms.php?wsdl"
  SOAP_HEADER = '<?xml version="1.0" encoding="UTF-8"?>
<soapenv:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:sms.webservices">
   <soapenv:Body>
      <urn:enviarSMS soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
         <entrada xsi:type="urn:entrada">'

  LOGIN_KEY = '<login xsi:type="xsd:string">'
  LOGIN_KEY_END = '</login>'

  PASSWORD_KEY = '<senha xsi:type="xsd:string">'
  PASSWORD_KEY_END = '</senha>'

  PHONE_KEY = '<telefone xsi:type="xsd:string">'
  PHONE_KEY_END = '</telefone>'

  MESSAGE_KEY = '<mensagem xsi:type="xsd:string">'
  MESSAGE_KEY_END = '</mensagem>'

  SOAP_TAIL = '</entrada>
      </urn:enviarSMS>
   </soapenv:Body>
</soapenv:Envelope>'

end
