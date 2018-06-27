.class public Lti/modules/titanium/network/TiAuthenticator;
.super Ljava/net/Authenticator;
.source "TiAuthenticator.java"


# instance fields
.field domain:Ljava/lang/String;

.field password:Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/TiAuthenticator;->domain:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lti/modules/titanium/network/TiAuthenticator;->user:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lti/modules/titanium/network/TiAuthenticator;->password:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 20
    iput-object p1, p0, Lti/modules/titanium/network/TiAuthenticator;->domain:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lti/modules/titanium/network/TiAuthenticator;->user:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lti/modules/titanium/network/TiAuthenticator;->password:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lti/modules/titanium/network/TiAuthenticator;->domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/network/TiAuthenticator;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lti/modules/titanium/network/TiAuthenticator;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/network/TiAuthenticator;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/network/TiAuthenticator;->user:Ljava/lang/String;

    .line 30
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/TiAuthenticator;->password:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lti/modules/titanium/network/TiAuthenticator;->user:Ljava/lang/String;

    iget-object v2, p0, Lti/modules/titanium/network/TiAuthenticator;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    .line 33
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lti/modules/titanium/network/TiAuthenticator;->user:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    goto :goto_0
.end method
