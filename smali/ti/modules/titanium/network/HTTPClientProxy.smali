.class public Lti/modules/titanium/network/HTTPClientProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "HTTPClientProxy.java"


# static fields
.field public static final DONE:I = 0x4

.field public static final HEADERS_RECEIVED:I = 0x2

.field private static final JELLYBEAN_OR_GREATER:Z

.field public static final LOADING:I = 0x3

.field public static final OPENED:I = 0x1

.field public static final PROPERTY_SECURITY_MANAGER:Ljava/lang/String; = "securityManager"

.field public static final UNSENT:I


# instance fields
.field private client:Lti/modules/titanium/network/TiHTTPClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lti/modules/titanium/network/HTTPClientProxy;->JELLYBEAN_OR_GREATER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 49
    new-instance v0, Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/TiHTTPClient;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 54
    invoke-direct {p0}, Lti/modules/titanium/network/HTTPClientProxy;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->abort()V

    .line 94
    return-void
.end method

.method public addKeyManager(Ljava/lang/Object;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;

    .prologue
    .line 299
    instance-of v0, p1, Ljavax/net/ssl/X509KeyManager;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    check-cast p1, Ljavax/net/ssl/X509KeyManager;

    .end local p1    # "manager":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->addKeyManager(Ljavax/net/ssl/X509KeyManager;)V

    .line 302
    :cond_0
    return-void
.end method

.method public addTrustManager(Ljava/lang/Object;)V
    .locals 1
    .param p1, "manager"    # Ljava/lang/Object;

    .prologue
    .line 291
    instance-of v0, p1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    .end local p1    # "manager":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->addTrustManager(Ljavax/net/ssl/X509TrustManager;)V

    .line 294
    :cond_0
    return-void
.end method

.method public clearCookies(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->clearCookies(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public getAllResponseHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAllResponseHeaders()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    const-string v0, "Ti.Network.HTTPClient"

    return-object v0
.end method

.method public getAutoEncodeUrl()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAutoEncodeUrl()Z

    move-result v0

    return v0
.end method

.method public getAutoRedirect()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getAutoRedirect()Z

    move-result v0

    return v0
.end method

.method public getConnected()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getConnectionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadyState()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getReadyState()I

    move-result v0

    return v0
.end method

.method public getResponseData()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseData()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseXML()Lti/modules/titanium/xml/DocumentProxy;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getResponseXML()Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->getStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsVersion()I
    .locals 2

    .prologue
    .line 315
    const-string v1, "tlsVersion"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    const-string v1, "tlsVersion"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 318
    .local v0, "tlsVersion":I
    if-nez v0, :cond_0

    .line 319
    sget-boolean v1, Lti/modules/titanium/network/HTTPClientProxy;->JELLYBEAN_OR_GREATER:Z

    if-eqz v1, :cond_1

    .line 320
    const/4 v0, 0x3

    .line 327
    .end local v0    # "tlsVersion":I
    :cond_0
    :goto_0
    return v0

    .line 322
    .restart local v0    # "tlsVersion":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "tlsVersion":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValidatesSecureCertificate()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiHTTPClient;->validatesSecureCertificate()Z

    move-result v0

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 61
    const-string v1, "timeout"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    const-string v2, "timeout"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->setTimeout(I)V

    .line 65
    :cond_0
    const-string v1, "autoRedirect"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    const-string v2, "autoRedirect"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->setAutoRedirect(Z)V

    .line 69
    :cond_1
    const-string v1, "autoEncodeUrl"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    const-string v2, "autoEncodeUrl"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->setAutoEncodeUrl(Z)V

    .line 74
    :cond_2
    const-string v1, "securityManager"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    const-string v1, "securityManager"

    invoke-virtual {p0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "prop":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 77
    instance-of v1, v0, Lti/modules/titanium/network/SecurityManagerProtocol;

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    check-cast v0, Lti/modules/titanium/network/SecurityManagerProtocol;

    .end local v0    # "prop":Ljava/lang/Object;
    iput-object v0, v1, Lti/modules/titanium/network/TiHTTPClient;->securityManager:Lti/modules/titanium/network/SecurityManagerProtocol;

    .line 85
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    const-string v2, "tlsVersion"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/HTTPClientProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/network/TiHTTPClient;->setTlsVersion(I)V

    .line 88
    return-void

    .line 80
    .restart local v0    # "prop":Ljava/lang/Object;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid argument passed to securityManager property. Does not conform to SecurityManagerProtocol"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->send(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public setAutoEncodeUrl(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setAutoEncodeUrl(Z)V

    .line 203
    return-void
.end method

.method public setAutoRedirect(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setAutoRedirect(Z)V

    .line 215
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/network/TiHTTPClient;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setTimeout(I)V

    .line 173
    return-void
.end method

.method public setTlsVersion(I)V
    .locals 1
    .param p1, "tlsVersion"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lti/modules/titanium/network/HTTPClientProxy;->client:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v0, p1}, Lti/modules/titanium/network/TiHTTPClient;->setTlsVersion(I)V

    .line 308
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public setValidatesSecureCertificate(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 226
    const-string v0, "validatesSecureCertificate"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/HTTPClientProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void
.end method
