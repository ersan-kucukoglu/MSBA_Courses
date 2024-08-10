library(PKI)

# Loading the public key sent over slack

pub.pem.loaded <- scan("id_rsa_ceu.pub", what='list', sep='\n') # Load

# Extracting the key objects from the PEM file
pub.key.loaded <- PKI.load.key(pub.pem.loaded) 

# Writing a message

encrypt <- PKI.encrypt(charToRaw("Hello CEU"), pub.key.loaded)

writeBin(encrypt, 'encoded.bin')

