
#Reading the message using the ceu.edu private key
encrypted_message <- readBin('encoded.bin', what=raw(), n=100000)
decrypt <- rawToChar(PKI.decrypt(decrypted_message, ceu.prv.key))
decrypt