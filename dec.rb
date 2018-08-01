require 'gpgme'

crypto = GPGME::Crypto.new
cipher = GPGME::Data.new(File.read('secret.gpg'))
plain = crypto.decrypt cipher

puts(plain.read)
