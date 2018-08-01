require 'gpgme'

crypto = GPGME::Crypto.new

File.open('secret.gpg', 'w') do |f|
  crypto.encrypt File.read('secret.txt'), output: f
end
