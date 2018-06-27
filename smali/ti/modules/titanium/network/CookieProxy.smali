.class public Lti/modules/titanium/network/CookieProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "CookieProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CookieProxy"

.field private static final httpExpiryDateFormatter:Ljava/text/SimpleDateFormat;

.field public static final systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

.field private static timezone:Ljava/util/TimeZone;


# instance fields
.field private httpCookie:Ljava/net/HttpCookie;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/network/CookieProxy;->timezone:Ljava/util/TimeZone;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lti/modules/titanium/network/CookieProxy;->httpExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lti/modules/titanium/network/CookieProxy;->systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    .line 38
    sget-object v0, Lti/modules/titanium/network/CookieProxy;->httpExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lti/modules/titanium/network/CookieProxy;->timezone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 39
    sget-object v0, Lti/modules/titanium/network/CookieProxy;->systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lti/modules/titanium/network/CookieProxy;->timezone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 71
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 72
    .local v0, "dict":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "name"

    invoke-virtual {p0, v1, p1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v1, "value"

    invoke-virtual {p0, v1, p2}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    if-eqz p3, :cond_0

    .line 77
    const-string v1, "domain"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "domain"

    invoke-virtual {p0, v1, p3}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_0
    if-eqz p4, :cond_1

    .line 81
    const-string v1, "path"

    invoke-virtual {v0, v1, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "path"

    invoke-virtual {p0, v1, p4}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :cond_1
    invoke-virtual {p0, v0}, Lti/modules/titanium/network/CookieProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpCookie;)V
    .locals 4
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 52
    instance-of v0, p1, Ljava/net/HttpCookie;

    if-eqz v0, :cond_0

    .line 53
    iput-object p1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    .line 54
    const-string v0, "name"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "value"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v0, "domain"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v0, "maxAge"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v0, "comment"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v0, "path"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v0, "secure"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v0, "version"

    iget-object v1, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/CookieProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "CookieProxy"

    const-string v1, "Unable to create CookieProxy. Invalid cookie type."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "Ti.Network.Cookie"

    return-object v0
.end method

.method public getHTTPCookie()Ljava/net/HttpCookie;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 92
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "name":Ljava/lang/String;
    const-string v2, "value"

    invoke-virtual {p0, v2}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "value":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 95
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v0, v1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    .line 101
    const-string v2, "domain"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    const-string v3, "domain"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string v2, "maxAge"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    const-string v3, "maxAge"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 109
    :cond_1
    const-string v2, "comment"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    const-string v3, "comment"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 112
    :cond_2
    const-string v2, "path"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    const-string v3, "path"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 115
    :cond_3
    const-string v2, "secure"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    iget-object v2, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    const-string v3, "secure"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 118
    :cond_4
    const-string v2, "version"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    iget-object v2, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    const-string v3, "version"

    invoke-virtual {p0, v3}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 121
    :cond_5
    :goto_0
    return-void

    .line 97
    :cond_6
    const-string v2, "CookieProxy"

    const-string v3, "Unable to create the http client cookie. Need to provide a valid name."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v0, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v0, "domain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_3
    const-string v0, "maxAge"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpCookie;->setMaxAge(J)V

    goto :goto_0

    .line 140
    :cond_4
    const-string v0, "comment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_5
    const-string v0, "path"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_6
    const-string v0, "secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setSecure(Z)V

    goto :goto_0

    .line 146
    :cond_7
    const-string v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lti/modules/titanium/network/CookieProxy;->httpCookie:Ljava/net/HttpCookie;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    goto/16 :goto_0
.end method
