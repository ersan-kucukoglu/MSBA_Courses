#install.packages('PKI')
library(PKI)

## Create a keypair and save them in PEM format to variables
keypairprovider <- PKI.genRSAkey(bits = 2048L)

prv.pem <- PKI.save.key(keypairprovider, private=TRUE)
pub.pem <- PKI.save.key(keypairprovider, private=FALSE)

print(prv.pem)
# Extract the Public key from the public key's PEM format
ceu.pub.key <- PKI.load.key(pub.pem)
ceu.prv.key <- PKI.load.key(prv.pem)

# Save the keys to a file, then load them back
write(pub.pem, file="id_rsa_ceu.pub") # Save Public key 
write(prv.pem, file="id_rsa_ceu")     # Save Private key


