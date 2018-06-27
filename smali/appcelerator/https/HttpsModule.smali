.class public Lappcelerator/https/HttpsModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "HttpsModule.java"


# static fields
.field private static final PROP_CERT:Ljava/lang/String; = "serverCertificate"

.field private static final PROP_URL:Ljava/lang/String; = "url"

.field protected static final TAG:Ljava/lang/String; = "HttpsModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 38
    return-void
.end method

.method public static onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 0
    .param p0, "app"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 44
    return-void
.end method


# virtual methods
.method public createX509CertificatePinningSecurityManager([Ljava/util/HashMap;)Lappcelerator/https/PinningSecurityManager;
    .locals 19
    .param p1, "args"    # [Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v16, Lappcelerator/https/PinningSecurityManager;

    invoke-direct/range {v16 .. v16}, Lappcelerator/https/PinningSecurityManager;-><init>()V

    .line 60
    .local v16, "theManager":Lappcelerator/https/PinningSecurityManager;
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 61
    .local v9, "factory":Ljava/security/cert/CertificateFactory;
    new-instance v15, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 63
    .local v15, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    move-object/from16 v3, p1

    .local v3, "arr$":[Ljava/util/HashMap;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_3

    aget-object v2, v3, v12

    .line 64
    .local v2, "arg":Ljava/util/HashMap;
    const/4 v13, 0x0

    .line 65
    .local v13, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 68
    .local v4, "caughtException":Ljava/lang/Exception;
    :try_start_0
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "host":Ljava/lang/String;
    const-string v17, "serverCertificate"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "certPath":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 72
    .local v11, "hostUri":Landroid/net/Uri;
    new-instance v7, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v7, v6}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;)V

    .line 74
    .local v7, "certUrl":Lorg/appcelerator/titanium/util/TiUrl;
    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v13

    .line 75
    invoke-virtual {v9, v13}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 76
    .local v5, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lappcelerator/https/PinningSecurityManager;->addProfile(Ljava/lang/String;Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v13, :cond_0

    .line 85
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    const/4 v13, 0x0

    .line 92
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v6    # "certPath":Ljava/lang/String;
    .end local v7    # "certUrl":Lorg/appcelerator/titanium/util/TiUrl;
    .end local v10    # "host":Ljava/lang/String;
    .end local v11    # "hostUri":Landroid/net/Uri;
    :cond_0
    :goto_2
    if-eqz v4, :cond_2

    .line 93
    throw v4

    .line 78
    :catch_0
    move-exception v8

    .line 79
    .local v8, "e":Ljava/lang/Exception;
    move-object v4, v8

    .line 83
    if-eqz v13, :cond_0

    .line 85
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    :goto_3
    const/4 v13, 0x0

    goto :goto_2

    .line 83
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    if-eqz v13, :cond_1

    .line 85
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 89
    :goto_4
    const/4 v13, 0x0

    :cond_1
    throw v17

    .line 63
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "arg":Ljava/util/HashMap;
    .end local v4    # "caughtException":Ljava/lang/Exception;
    .end local v13    # "is":Ljava/io/InputStream;
    :cond_3
    const/4 v9, 0x0

    .line 98
    const/4 v15, 0x0

    .line 100
    return-object v16

    .line 86
    .restart local v2    # "arg":Ljava/util/HashMap;
    .restart local v4    # "caughtException":Ljava/lang/Exception;
    .restart local v5    # "cert":Ljava/security/cert/Certificate;
    .restart local v6    # "certPath":Ljava/lang/String;
    .restart local v7    # "certUrl":Lorg/appcelerator/titanium/util/TiUrl;
    .restart local v10    # "host":Ljava/lang/String;
    .restart local v11    # "hostUri":Landroid/net/Uri;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v17

    goto :goto_1

    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v6    # "certPath":Ljava/lang/String;
    .end local v7    # "certUrl":Lorg/appcelerator/titanium/util/TiUrl;
    .end local v10    # "host":Ljava/lang/String;
    .end local v11    # "hostUri":Landroid/net/Uri;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v17

    goto :goto_3

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v18

    goto :goto_4
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "appcelerator.Https"

    return-object v0
.end method
