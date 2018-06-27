.class public Lti/modules/titanium/network/TiSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "TiSocketFactory.java"


# static fields
.field private static final JELLYBEAN_OR_GREATER:Z

.field private static final TAG:Ljava/lang/String; = "TiSocketFactory"

.field private static final TLS_VERSION_1_0_PROTOCOL:Ljava/lang/String; = "TLSv1"

.field private static final TLS_VERSION_1_1_PROTOCOL:Ljava/lang/String; = "TLSv1.1"

.field private static final TLS_VERSION_1_2_PROTOCOL:Ljava/lang/String; = "TLSv1.2"


# instance fields
.field protected enabledProtocols:[Ljava/lang/String;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private tlsVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lti/modules/titanium/network/TiSocketFactory;->JELLYBEAN_OR_GREATER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;I)V
    .locals 6
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "trustManagers"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 45
    packed-switch p3, :pswitch_data_0

    .line 60
    const-string v0, "TiSocketFactory"

    const-string v1, "Incorrect TLS version was set in HTTPClient. Reverting to default TLS version."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :pswitch_0
    sget-boolean v0, Lti/modules/titanium/network/TiSocketFactory;->JELLYBEAN_OR_GREATER:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "TLSv1.2"

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->tlsVersion:Ljava/lang/String;

    .line 64
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TLSv1"

    aput-object v1, v0, v2

    const-string v1, "TLSv1.1"

    aput-object v1, v0, v3

    const-string v1, "TLSv1.2"

    aput-object v1, v0, v4

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    .line 73
    :goto_0
    iget-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->tlsVersion:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 76
    return-void

    .line 48
    :pswitch_1
    const-string v0, "TLSv1"

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->tlsVersion:Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TLSv1"

    aput-object v1, v0, v2

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_2
    const-string v0, "TLSv1.1"

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->tlsVersion:Ljava/lang/String;

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TLSv1"

    aput-object v1, v0, v2

    const-string v1, "TLSv1.1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "TLSv1.2"

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->tlsVersion:Ljava/lang/String;

    .line 57
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TLSv1"

    aput-object v1, v0, v2

    const-string v1, "TLSv1.1"

    aput-object v1, v0, v3

    const-string v1, "TLSv1.2"

    aput-object v1, v0, v4

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, "TLSv1"

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->tlsVersion:Ljava/lang/String;

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TLSv1"

    aput-object v1, v0, v2

    iput-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    .line 68
    const-string v0, "TiSocketFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lti/modules/titanium/network/TiSocketFactory;->tlsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " protocol is being used. It is a less-secure version."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 118
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/network/TiSocketFactory;->setSupportedAndEnabledProtocolsInSocket([Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 92
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/network/TiSocketFactory;->setSupportedAndEnabledProtocolsInSocket([Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 99
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/network/TiSocketFactory;->setSupportedAndEnabledProtocolsInSocket([Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 105
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/network/TiSocketFactory;->setSupportedAndEnabledProtocolsInSocket([Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 111
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/network/TiSocketFactory;->setSupportedAndEnabledProtocolsInSocket([Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 125
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/network/TiSocketFactory;->setSupportedAndEnabledProtocolsInSocket([Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lti/modules/titanium/network/TiSocketFactory;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method protected setSupportedAndEnabledProtocolsInSocket([Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .locals 11
    .param p1, "enabledProtocols"    # [Ljava/lang/String;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    .line 130
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "supportedProtocols":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v7, "supportedAndEnabledProtocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 134
    .local v2, "enabledProtocol":Ljava/lang/String;
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v8, v1, v3

    .line 135
    .local v8, "supportedProtocol":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 136
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v8    # "supportedProtocol":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 134
    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    .restart local v8    # "supportedProtocol":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "enabledProtocol":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "supportedProtocol":Ljava/lang/String;
    .restart local v4    # "i$":I
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 145
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 148
    :cond_3
    return-object p2
.end method
