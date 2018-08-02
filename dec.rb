require 'gpgme'

crypto = GPGME::Crypto.new
cipher = GPGME::Data.new(File.read('secret.txt.gpg'))
plain = crypto.decrypt cipher, password: "NewP4ssC0", passphrase_callback_value: "NewP4ssC0"

puts(plain.read)
