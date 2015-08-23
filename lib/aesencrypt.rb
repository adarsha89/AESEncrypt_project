
class AESEncrypt

  require "base64"
  require 'rubygems'
  require 'openssl'

  def self.aesEncrypt(key , data)

  cipher = OpenSSL::Cipher::AES.new(128, :CFB)
  cipher.encrypt
  cipher.key = key
  encrypted = cipher.update data
  encoded = Base64.encode64(encrypted)
  puts encoded

  return encoded
  end

  def self.aesDecrypt(key , data)

    decoded = Base64.decode64(data)
    cipher = OpenSSL::Cipher::AES.new(128, :CFB)
    cipher.decrypt
    cipher.key = key
    decrypted = cipher.update(decoded)
    puts decrypted

    return decrypted
  end

end