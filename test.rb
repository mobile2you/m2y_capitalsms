require 'm2y_capitalsms'

M2yCapitalsms.configure do |config|
  config.username  = "XXX"
  config.password = "XXX"
end


p M2yCapitalsms::Message.sendSms("XXX", "GEEEEEM???")
