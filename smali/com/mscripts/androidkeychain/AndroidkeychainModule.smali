.class public Lcom/mscripts/androidkeychain/AndroidkeychainModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidkeychainModule.java"


# static fields
.field private static final DBG:Z

.field private static final LCAT:Ljava/lang/String; = "AndroidkeychainModule"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/kroll/common/TiConfig;->LOGD:Z

    sput-boolean v0, Lcom/mscripts/androidkeychain/AndroidkeychainModule;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 29
    return-void
.end method

.method private getStaticKey(Ljava/lang/String;)[B
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "staticKeyArr":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 86
    .local v1, "key":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 87
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-object v1
.end method

.method public static onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 2
    .param p0, "app"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 33
    const-string v0, "AndroidkeychainModule"

    const-string v1, "inside onAppCreate"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public retrieveSharedPreferences(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "strKey"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "MyPreferences"

    const/4 v11, 0x0

    .line 40
    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 42
    .local v6, "settings":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v9, "encryptionKey"

    const-string v10, ""

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "straKey":[Ljava/lang/String;
    array-length v9, v8

    new-array v5, v9, [B

    .line 44
    .local v5, "keyData":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_0

    .line 45
    aget-object v9, v8, v3

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v5, v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const-string v9, ""

    invoke-interface {v6, p1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mscripts/androidkeychain/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 48
    .local v4, "input":[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v7, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 50
    .local v7, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 51
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 53
    .local v1, "decrypted":[B
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decrypted":[B
    .end local v3    # "i":I
    .end local v4    # "input":[B
    .end local v5    # "keyData":[B
    .end local v7    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v8    # "straKey":[Ljava/lang/String;
    :goto_1
    return-object v9

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, ""

    goto :goto_1
.end method

.method public storeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "strKey"    # Ljava/lang/String;
    .param p2, "strValue"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "MyPreferences"

    const/4 v10, 0x0

    .line 63
    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 65
    .local v5, "settings":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v8, "encryptionKey"

    const-string v9, ""

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "straKey":[Ljava/lang/String;
    array-length v8, v7

    new-array v4, v8, [B

    .line 67
    .local v4, "keyData":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 68
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v4, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 72
    .local v6, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v8, "AES"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 73
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 75
    .local v2, "encrypted":[B
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 76
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/mscripts/androidkeychain/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, p1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "encrypted":[B
    .end local v3    # "i":I
    .end local v4    # "keyData":[B
    .end local v6    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "straKey":[Ljava/lang/String;
    :goto_1
    return-void

    .line 78
    :catch_0
    move-exception v8

    goto :goto_1
.end method
