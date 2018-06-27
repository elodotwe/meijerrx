.class public Lappcelerator/https/PinningSecurityManager;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "PinningSecurityManager.java"

# interfaces
.implements Lti/modules/titanium/network/SecurityManagerProtocol;


# instance fields
.field private supportedHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lappcelerator/https/PinningSecurityManager;->supportedHosts:Ljava/util/Map;

    return-void
.end method

.method private hostConfigured(Ljava/lang/String;)Z
    .locals 3
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 93
    if-nez p1, :cond_0

    const-string v0, ""

    .line 94
    .local v0, "theHost":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lappcelerator/https/PinningSecurityManager;->supportedHosts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .end local v0    # "theHost":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 93
    goto :goto_0
.end method


# virtual methods
.method protected addProfile(Ljava/lang/String;Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p1, :cond_0

    const-string v0, ""

    .line 76
    .local v0, "theHost":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p2, :cond_2

    .line 77
    invoke-direct {p0, v0}, Lappcelerator/https/PinningSecurityManager;->hostConfigured(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lappcelerator/https/PinningSecurityManager;->supportedHosts:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void

    .end local v0    # "theHost":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 74
    goto :goto_0

    .line 80
    .restart local v0    # "theHost":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Duplicate host configuration."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid arguments passed to addProfile"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "appcelerator.Https.PinningSecurityManager"

    return-object v0
.end method

.method public getKeyManagers(Lti/modules/titanium/network/HTTPClientProxy;)[Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .param p1, "proxy"    # Lti/modules/titanium/network/HTTPClientProxy;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrustManagers(Lti/modules/titanium/network/HTTPClientProxy;)[Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p1, "proxy"    # Lti/modules/titanium/network/HTTPClientProxy;

    .prologue
    .line 46
    :try_start_0
    new-instance v1, Lappcelerator/https/PinningTrustManager;

    iget-object v2, p0, Lappcelerator/https/PinningSecurityManager;->supportedHosts:Ljava/util/Map;

    invoke-direct {v1, p1, v2}, Lappcelerator/https/PinningTrustManager;-><init>(Lti/modules/titanium/network/HTTPClientProxy;Ljava/util/Map;)V

    .line 47
    .local v1, "tm":Lappcelerator/https/PinningTrustManager;
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "tm":Lappcelerator/https/PinningTrustManager;
    :goto_0
    return-object v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HttpsModule"

    const-string v3, "Unable to create PinningTrustManager. Returning null."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public willHandleURL(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lappcelerator/https/PinningSecurityManager;->hostConfigured(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
