.class public Lcom/obscure/keychain/KeychainItemProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "KeychainItemProxy.java"


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "keychain.account"

.field private static final COMMENT_KEY:Ljava/lang/String; = "keychain.comment"

.field private static final DESCRIPTION_KEY:Ljava/lang/String; = "keychain.description"

.field private static final LCAT:Ljava/lang/String; = "KeychainItemProxy"

.field private static final VALUE_DATA_KEY:Ljava/lang/String; = "keychain.valueData"


# instance fields
.field private androidContext:Landroid/content/ContextWrapper;

.field private encryptor:Lcom/obscure/keychain/DesEncryptor;

.field private identifier:Ljava/lang/String;

.field private sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 37
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiContext;->getAndroidContext()Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/obscure/keychain/KeychainItemProxy;->androidContext:Landroid/content/ContextWrapper;

    .line 38
    return-void
.end method

.method private fetchValueForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->encryptor:Lcom/obscure/keychain/DesEncryptor;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->encryptor:Lcom/obscure/keychain/DesEncryptor;

    invoke-virtual {v2, v1}, Lcom/obscure/keychain/DesEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .end local v1    # "value":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 46
    .restart local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private storeValueForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->encryptor:Lcom/obscure/keychain/DesEncryptor;

    if-eqz v2, :cond_0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->encryptor:Lcom/obscure/keychain/DesEncryptor;

    invoke-virtual {v2, p2}, Lcom/obscure/keychain/DesEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 136
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 137
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void

    .line 132
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeychainItemProxy"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "keychain.account"

    invoke-direct {p0, v0}, Lcom/obscure/keychain/KeychainItemProxy;->fetchValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "keychain.comment"

    invoke-direct {p0, v0}, Lcom/obscure/keychain/KeychainItemProxy;->fetchValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "keychain.description"

    invoke-direct {p0, v0}, Lcom/obscure/keychain/KeychainItemProxy;->fetchValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/obscure/keychain/KeychainItemProxy;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getValueData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "keychain.valueData"

    invoke-direct {p0, v0}, Lcom/obscure/keychain/KeychainItemProxy;->fetchValueForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 81
    if-eqz p2, :cond_1

    .line 83
    array-length v2, p2

    if-lez v2, :cond_0

    .line 84
    aget-object v2, p2, v5

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->identifier:Ljava/lang/String;

    .line 85
    const-string v2, "keychain.%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/obscure/keychain/KeychainItemProxy;->identifier:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->androidContext:Landroid/content/ContextWrapper;

    invoke-virtual {v2, v1, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/obscure/keychain/KeychainItemProxy;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 88
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    array-length v2, p2

    if-le v2, v6, :cond_1

    .line 90
    :try_start_0
    new-instance v3, Lcom/obscure/keychain/DesEncryptor;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/obscure/keychain/DesEncryptor;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/obscure/keychain/KeychainItemProxy;->encryptor:Lcom/obscure/keychain/DesEncryptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeychainItemProxy"

    const-string v3, "error creating keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/obscure/keychain/KeychainItemProxy;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "keychain.account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v1, "keychain.valueData"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "keychain.account"

    invoke-direct {p0, v0, p1}, Lcom/obscure/keychain/KeychainItemProxy;->storeValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "keychain.comment"

    invoke-direct {p0, v0, p1}, Lcom/obscure/keychain/KeychainItemProxy;->storeValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "keychain.description"

    invoke-direct {p0, v0, p1}, Lcom/obscure/keychain/KeychainItemProxy;->storeValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setValueData(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "keychain.valueData"

    invoke-direct {p0, v0, p1}, Lcom/obscure/keychain/KeychainItemProxy;->storeValueForKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method
