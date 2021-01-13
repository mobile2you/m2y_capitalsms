module M2yCapitalsms

  require "savon"
  require 'digest/md5'

  class Message

    def self.sendSms(phone, message)

      phone = phone.gsub(/[^0-9]/, '')
      phone = '55' + phone if phone.length <= 11

      client = Savon.client(
        wsdl: WSDL,
        log: true,
        log_level: :debug,
        pretty_print_xml: true,
        open_timeout: 25,
        read_timeout: 25
      )

      response = client.call(:enviar_sms, xml: "#{SOAP_HEADER}#{LOGIN_KEY}#{M2yCapitalsms.configuration.username}#{LOGIN_KEY_END}#{PASSWORD_KEY}#{Digest::MD5.hexdigest(M2yCapitalsms.configuration.password).upcase}#{PASSWORD_KEY_END}#{MESSAGE_KEY}#{message}#{MESSAGE_KEY_END}#{PHONE_KEY}#{phone}#{PHONE_KEY_END}#{SOAP_TAIL}")
      response.body

    end


  end
end
