.class public Lcom/obscure/keychain/DesEncryptor;
.super Ljava/lang/Object;
.source "DesEncryptor.java"


# instance fields
.field dcipher:Ljavax/crypto/Cipher;

.field ecipher:Ljavax/crypto/Cipher;

.field salt:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "passPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/obscure/keychain/DesEncryptor;->salt:[B

    .line 29
    const/4 v0, 0x2

    .line 30
    .local v0, "iterationCount":I
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v5, p0, Lcom/obscure/keychain/DesEncryptor;->salt:[B

    invoke-direct {v2, v4, v5, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BI)V

    .line 31
    .local v2, "keySpec":Ljava/security/spec/KeySpec;
    const-string v4, "PBEWithMD5AndDES"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 32
    .local v1, "key":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lcom/obscure/keychain/DesEncryptor;->ecipher:Ljavax/crypto/Cipher;

    .line 33
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lcom/obscure/keychain/DesEncryptor;->dcipher:Ljavax/crypto/Cipher;

    .line 35
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v4, p0, Lcom/obscure/keychain/DesEncryptor;->salt:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 37
    .local v3, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iget-object v4, p0, Lcom/obscure/keychain/DesEncryptor;->ecipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 38
    iget-object v4, p0, Lcom/obscure/keychain/DesEncryptor;->dcipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    return-void

    .line 26
    :array_0
    .array-data 1
        -0x57t
        -0x65t
        -0x38t
        0x32t
        0x56t
        0x35t
        -0x1dt
        0x3t
    .end array-data
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/obscure/keychain/DesEncryptor;->dcipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/obscure/keychain/DesEncryptor;->ecipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
