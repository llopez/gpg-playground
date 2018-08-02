require 'gpgme'

crypto = GPGME::Crypto.new

GPGME::Key.import(File.read('Public.asc'))

File.open('secret.txt.gpg', 'w') do |f|
  crypto.encrypt File.read('secret.txt'), output: f, recipients: 'nt_amx_asset_detail_G1QB@lumint.com', always_trust: true
end
