# AESEncrypt_project
Ruby project for AES-CFB encryption with Base64 encoding

## Include the gem
require 'aesencrypt'

##To encrypt and encode a string : data
encoded=AESEncrypt.aesEncrypt(key,data)

##To get the plain string from the encoded data : encoded
plain=AESEncrypt.aesDecrypt(key,encoded)
