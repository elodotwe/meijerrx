.class public Lappcelerator/https/PinningTrustManager;
.super Ljava/lang/Object;
.source "PinningTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private proxy:Lti/modules/titanium/network/HTTPClientProxy;

.field private standardTrustManager:Ljavax/net/ssl/X509TrustManager;

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
.method protected constructor <init>(Lti/modules/titanium/network/HTTPClientProxy;Ljava/util/Map;)V
    .locals 4
    .param p1, "proxy"    # Lti/modules/titanium/network/HTTPClientProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti/modules/titanium/network/HTTPClientProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "supportedHosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/PublicKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 42
    .local v0, "factory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 43
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 44
    .local v1, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    const-string v3, "no trust manager found"

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    iput-object v2, p0, Lappcelerator/https/PinningTrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 49
    iput-object p1, p0, Lappcelerator/https/PinningTrustManager;->proxy:Lti/modules/titanium/network/HTTPClientProxy;

    .line 50
    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "supportedHosts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/PublicKey;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iput-object p2, p0, Lappcelerator/https/PinningTrustManager;->supportedHosts:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private hostConfigured(Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lappcelerator/https/PinningTrustManager;->supportedHosts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lappcelerator/https/PinningTrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v8, p0, Lappcelerator/https/PinningTrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v8, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 66
    iget-object v8, p0, Lappcelerator/https/PinningTrustManager;->proxy:Lti/modules/titanium/network/HTTPClientProxy;

    if-eqz v8, :cond_0

    .line 67
    const/4 v4, 0x0

    .line 68
    .local v4, "hostPinned":Z
    const-string v3, ""

    .line 69
    .local v3, "host":Ljava/lang/String;
    iget-object v8, p0, Lappcelerator/https/PinningTrustManager;->proxy:Lti/modules/titanium/network/HTTPClientProxy;

    invoke-virtual {v8}, Lti/modules/titanium/network/HTTPClientProxy;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "curLocation":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 72
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-direct {p0, v3}, Lappcelerator/https/PinningTrustManager;->hostConfigured(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 79
    .end local v7    # "uri":Landroid/net/Uri;
    :goto_0
    if-eqz v4, :cond_0

    .line 80
    const/4 v8, 0x0

    aget-object v5, p1, v8

    .line 81
    .local v5, "leaf":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 82
    .local v6, "leafKey":Ljava/security/PublicKey;
    iget-object v8, p0, Lappcelerator/https/PinningTrustManager;->supportedHosts:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    .line 83
    .local v0, "compareKey":Ljava/security/PublicKey;
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 84
    new-instance v8, Ljava/security/cert/CertificateException;

    const-string v9, "Leaf certificate could not be verified with provided public key"

    invoke-direct {v8, v9}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 75
    .end local v0    # "compareKey":Ljava/security/PublicKey;
    .end local v5    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v6    # "leafKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0

    .line 89
    .end local v1    # "curLocation":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "hostPinned":Z
    :cond_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lappcelerator/https/PinningTrustManager;->standardTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
