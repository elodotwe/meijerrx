.class public Lti/modules/titanium/network/NetworkModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "NetworkModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/network/NetworkModule$NetInfo;,
        Lti/modules/titanium/network/NetworkModule$State;
    }
.end annotation


# static fields
.field public static final EVENT_CONNECTIVITY:Ljava/lang/String; = "change"

.field public static final NETWORK_LAN:I = 0x3

.field public static final NETWORK_MOBILE:I = 0x2

.field public static final NETWORK_NONE:I = 0x0

.field public static final NETWORK_UNKNOWN:I = 0x4

.field public static final NETWORK_USER_AGENT:Ljava/lang/String;

.field public static final NETWORK_WIFI:I = 0x1

.field public static final PROGRESS_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TiNetwork"

.field public static final TLS_DEFAULT:I = 0x0

.field public static final TLS_VERSION_1_0:I = 0x1

.field public static final TLS_VERSION_1_1:I = 0x2

.field public static final TLS_VERSION_1_2:I = 0x3

.field private static cookieManager:Ljava/net/CookieManager;


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private isListeningForConnectivity:Z

.field private lastNetInfo:Lti/modules/titanium/network/NetworkModule$NetInfo;

.field private messageHandler:Landroid/os/Handler;

.field private networkListener:Lti/modules/titanium/network/TiNetworkListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "http.agent"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/network/NetworkModule;->NETWORK_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 100
    new-instance v0, Lti/modules/titanium/network/NetworkModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/NetworkModule$1;-><init>(Lti/modules/titanium/network/NetworkModule;)V

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->messageHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lti/modules/titanium/network/NetworkModule$NetInfo;

    invoke-direct {v0, p0}, Lti/modules/titanium/network/NetworkModule$NetInfo;-><init>(Lti/modules/titanium/network/NetworkModule;)V

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->lastNetInfo:Lti/modules/titanium/network/NetworkModule$NetInfo;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 144
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/network/NetworkModule;)Lti/modules/titanium/network/NetworkModule$NetInfo;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/NetworkModule;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->lastNetInfo:Lti/modules/titanium/network/NetworkModule$NetInfo;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/network/NetworkModule;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/NetworkModule;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lti/modules/titanium/network/NetworkModule;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cookieDomain"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 597
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v4

    .line 600
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v4, v5

    .line 601
    goto :goto_0

    .line 604
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "lower_cookieDomain":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "lower_domain":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 607
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 608
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 609
    .local v0, "cookieLen":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 610
    .local v1, "domainLen":I
    add-int/lit8 v6, v0, -0x1

    if-le v1, v6, :cond_0

    .line 612
    sub-int v6, v1, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    .end local v0    # "cookieLen":I
    .end local v1    # "domainLen":I
    :cond_4
    move v4, v5

    .line 616
    goto :goto_0

    .line 618
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 5

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 286
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 287
    .local v0, "a":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 288
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 293
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v1

    .line 290
    :cond_0
    const-string v2, "TiNetwork"

    const-string v3, "Activity is null when trying to retrieve the connectivity service"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCookieManagerInstance()Ljava/net/CookieManager;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lti/modules/titanium/network/NetworkModule;->cookieManager:Ljava/net/CookieManager;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lti/modules/titanium/network/NetworkModule;->cookieManager:Ljava/net/CookieManager;

    .line 307
    sget-object v0, Lti/modules/titanium/network/NetworkModule;->cookieManager:Ljava/net/CookieManager;

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 309
    :cond_0
    sget-object v0, Lti/modules/titanium/network/NetworkModule;->cookieManager:Ljava/net/CookieManager;

    return-object v0
.end method

.method private networkTypeToTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_0

    .line 247
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 243
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 244
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 245
    :pswitch_2
    const-string v0, "MOBILE"

    goto :goto_0

    .line 246
    :pswitch_3
    const-string v0, "LAN"

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private pathMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cookiePath"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 631
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v2

    .line 634
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 635
    :cond_2
    const-string p2, "/"

    .line 638
    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 640
    .local v0, "cookieLen":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 641
    .local v1, "pathLen":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_0

    if-le v1, v0, :cond_0

    .line 643
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "cookieLen":I
    .end local v1    # "pathLen":I
    :cond_4
    move v2, v3

    .line 647
    goto :goto_0
.end method

.method private stringEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "isCaseSensitive"    # Z

    .prologue
    const/4 v0, 0x1

    .line 659
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 667
    :cond_0
    :goto_0
    return v0

    .line 662
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 663
    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addHTTPCookie(Lti/modules/titanium/network/CookieProxy;)V
    .locals 5
    .param p1, "cookieProxy"    # Lti/modules/titanium/network/CookieProxy;

    .prologue
    .line 322
    invoke-virtual {p1}, Lti/modules/titanium/network/CookieProxy;->getHTTPCookie()Ljava/net/HttpCookie;

    move-result-object v0

    .line 323
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "cookieDomain":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .local v3, "uriDomain":Ljava/net/URI;
    :goto_0
    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 333
    .end local v3    # "uriDomain":Ljava/net/URI;
    :cond_0
    return-void

    .line 328
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "uriDomain":Ljava/net/URI;
    goto :goto_0
.end method

.method public addSystemCookie(Lti/modules/titanium/network/CookieProxy;)V
    .locals 9
    .param p1, "cookieURLConnectionProxy"    # Lti/modules/titanium/network/CookieProxy;

    .prologue
    .line 475
    invoke-virtual {p1}, Lti/modules/titanium/network/CookieProxy;->getHTTPCookie()Ljava/net/HttpCookie;

    move-result-object v0

    .line 476
    .local v0, "cookie":Ljava/net/HttpCookie;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "cookieString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "domain":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 479
    const-string v7, "TiNetwork"

    const-string v8, "Unable to add system cookie. Need to provide domain."

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 482
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; domain="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v6

    .line 487
    .local v6, "secure":Z
    const-string v7, "httponly"

    invoke-virtual {p1, v7}, Lti/modules/titanium/network/CookieProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v4

    .line 488
    .local v4, "httponly":Z
    if-eqz v5, :cond_1

    .line 489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    :cond_1
    if-eqz v6, :cond_2

    .line 497
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; secure"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    :cond_2
    if-eqz v4, :cond_3

    .line 500
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " httponly"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    :cond_3
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 503
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 504
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, v3, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/CookieSyncManager;->sync()V

    goto/16 :goto_0
.end method

.method public decodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 159
    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->manageConnectivityListener(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 170
    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->manageConnectivityListener(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    const-string v0, "Ti.Network"

    return-object v0
.end method

.method public getHTTPCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lti/modules/titanium/network/CookieProxy;
    .locals 10
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 346
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 347
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 348
    const-string v8, "TiNetwork"

    const-string v9, "Unable to get the HTTP cookies. Need to provide a valid domain."

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1
    :goto_0
    return-object v7

    .line 352
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 353
    :cond_3
    const-string p2, "/"

    .line 355
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v2, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/network/CookieProxy;>;"
    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v8

    invoke-interface {v8}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v5

    .line 357
    .local v5, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 358
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "cookieName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "cookieDomain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "cookiePath":Ljava/lang/String;
    if-eqz p3, :cond_6

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_6
    invoke-direct {p0, v1, p1}, Lti/modules/titanium/network/NetworkModule;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v4, p2}, Lti/modules/titanium/network/NetworkModule;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 363
    new-instance v8, Lti/modules/titanium/network/CookieProxy;

    invoke-direct {v8, v0}, Lti/modules/titanium/network/CookieProxy;-><init>(Ljava/net/HttpCookie;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 366
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "cookieDomain":Ljava/lang/String;
    .end local v3    # "cookieName":Ljava/lang/String;
    .end local v4    # "cookiePath":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 367
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lti/modules/titanium/network/CookieProxy;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lti/modules/titanium/network/CookieProxy;

    goto :goto_0
.end method

.method public getHTTPCookiesForDomain(Ljava/lang/String;)[Lti/modules/titanium/network/CookieProxy;
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 380
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 381
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    const-string v6, "TiNetwork"

    const-string v7, "Unable to get the HTTP cookies. Need to provide a valid domain."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    :goto_0
    return-object v5

    .line 386
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v2, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/network/CookieProxy;>;"
    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v6

    invoke-interface {v6}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v3

    .line 388
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 389
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "cookieDomain":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lti/modules/titanium/network/NetworkModule;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 391
    new-instance v6, Lti/modules/titanium/network/CookieProxy;

    invoke-direct {v6, v0}, Lti/modules/titanium/network/CookieProxy;-><init>(Ljava/net/HttpCookie;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "cookieDomain":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 395
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lti/modules/titanium/network/CookieProxy;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lti/modules/titanium/network/CookieProxy;

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 6

    .prologue
    .line 213
    const/4 v2, 0x4

    .line 216
    .local v2, "type":I
    iget-object v3, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 217
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 221
    :cond_0
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 222
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/network/NetworkModule;->networkTypeToTitanium(ZI)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 230
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 225
    .restart local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "TiNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission has been removed. Cannot determine network type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lti/modules/titanium/network/NetworkModule;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/network/NetworkModule;->networkTypeToTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnline()Z
    .locals 6

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, "result":Z
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 181
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Lti/modules/titanium/network/NetworkModule;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 184
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v2, 0x1

    .line 190
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 188
    :cond_1
    const-string v3, "TiNetwork"

    const-string v4, "ConnectivityManager was null"

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSystemCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lti/modules/titanium/network/CookieProxy;
    .locals 12
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 520
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 521
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 522
    const-string v9, "TiNetwork"

    const-string v10, "Unable to get the HTTP cookies. Need to provide a valid domain."

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_1
    const/4 v9, 0x0

    .line 550
    :goto_0
    return-object v9

    .line 526
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    .line 527
    :cond_3
    const-string p2, "/"

    .line 530
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v0, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/network/CookieProxy;>;"
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v9

    invoke-virtual {v9}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 532
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 533
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 534
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "cookieString":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 537
    const-string v9, "; "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, "cookieValues":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v4

    if-ge v5, v9, :cond_8

    .line 539
    aget-object v9, v4, v5

    const-string v10, "="

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "pair":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v2, v6, v9

    .line 541
    .local v2, "cookieName":Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    const/4 v9, 0x1

    aget-object v8, v6, v9

    .line 542
    .local v8, "value":Ljava/lang/String;
    :goto_2
    if-eqz p3, :cond_5

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 543
    :cond_5
    new-instance v9, Lti/modules/titanium/network/CookieProxy;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v2, v8, v10, v11}, Lti/modules/titanium/network/CookieProxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 541
    .end local v8    # "value":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 547
    .end local v2    # "cookieName":Ljava/lang/String;
    .end local v4    # "cookieValues":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "pair":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lti/modules/titanium/network/CookieProxy;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lti/modules/titanium/network/CookieProxy;

    goto :goto_0

    .line 550
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollModule;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 152
    const-string v0, "userAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lti/modules/titanium/network/NetworkModule;->NETWORK_USER_AGENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Titanium/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getTiBuildVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/network/NetworkModule;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method protected manageConnectivityListener(Z)V
    .locals 3
    .param p1, "attach"    # Z

    .prologue
    .line 262
    if-eqz p1, :cond_2

    .line 263
    iget-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    if-nez v0, :cond_1

    .line 264
    const-string v0, "change"

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lti/modules/titanium/network/TiNetworkListener;

    iget-object v1, p0, Lti/modules/titanium/network/NetworkModule;->messageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lti/modules/titanium/network/TiNetworkListener;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    .line 268
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/network/TiNetworkListener;->attach(Landroid/content/Context;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    .line 270
    const-string v0, "TiNetwork"

    const-string v1, "Adding connectivity listener"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    iget-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lti/modules/titanium/network/NetworkModule;->networkListener:Lti/modules/titanium/network/TiNetworkListener;

    invoke-virtual {v0}, Lti/modules/titanium/network/TiNetworkListener;->detach()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/network/NetworkModule;->isListeningForConnectivity:Z

    .line 277
    const-string v0, "TiNetwork"

    const-string v1, "Removing connectivity listener."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected networkTypeToTitanium(ZI)I
    .locals 1
    .param p1, "online"    # Z
    .param p2, "androidType"    # I

    .prologue
    .line 194
    const/4 v0, 0x4

    .line 195
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 196
    packed-switch p2, :pswitch_data_0

    .line 203
    const/4 v0, 0x4

    .line 208
    :goto_0
    return v0

    .line 198
    :pswitch_0
    const/4 v0, 0x1

    .line 199
    goto :goto_0

    .line 201
    :pswitch_1
    const/4 v0, 0x2

    .line 202
    goto :goto_0

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 298
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/network/NetworkModule;->manageConnectivityListener(Z)V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/network/NetworkModule;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 301
    return-void
.end method

.method public removeAllHTTPCookies()V
    .locals 2

    .prologue
    .line 463
    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    .line 464
    .local v0, "cookieStore":Ljava/net/CookieStore;
    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 465
    return-void
.end method

.method public removeAllSystemCookies()V
    .locals 2

    .prologue
    .line 582
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 583
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 584
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 585
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 586
    return-void
.end method

.method public removeHTTPCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 408
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 409
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 410
    const-string v9, "TiNetwork"

    const-string v10, "Unable to remove the HTTP cookie. Need to provide a valid domain / name."

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1
    return-void

    .line 414
    :cond_2
    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v4

    .line 415
    .local v4, "cookieStore":Ljava/net/CookieStore;
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v9

    invoke-interface {v9}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    .local v5, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v4}, Ljava/net/CookieStore;->removeAll()Z

    .line 417
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 418
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "cookieName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "cookieDomain":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "cookiePath":Ljava/lang/String;
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    invoke-direct {p0, p1, v1, v9}, Lti/modules/titanium/network/NetworkModule;->stringEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    invoke-direct {p0, p2, v3, v9}, Lti/modules/titanium/network/NetworkModule;->stringEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_3

    .line 424
    :cond_4
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .local v8, "uriDomain":Ljava/net/URI;
    :goto_1
    invoke-interface {v4, v8, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_0

    .line 425
    .end local v8    # "uriDomain":Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 426
    .local v6, "e":Ljava/net/URISyntaxException;
    const/4 v8, 0x0

    .restart local v8    # "uriDomain":Ljava/net/URI;
    goto :goto_1
.end method

.method public removeHTTPCookiesForDomain(Ljava/lang/String;)V
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v2

    .line 441
    .local v2, "cookieStore":Ljava/net/CookieStore;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lti/modules/titanium/network/NetworkModule;->getCookieManagerInstance()Ljava/net/CookieManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v7

    invoke-interface {v7}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    .local v3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    invoke-interface {v2}, Ljava/net/CookieStore;->removeAll()Z

    .line 443
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 444
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "cookieDomain":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lti/modules/titanium/network/NetworkModule;->domainMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 448
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .local v6, "uriDomain":Ljava/net/URI;
    :goto_1
    invoke-interface {v2, v6, v0}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_0

    .line 449
    .end local v6    # "uriDomain":Ljava/net/URI;
    :catch_0
    move-exception v4

    .line 450
    .local v4, "e":Ljava/net/URISyntaxException;
    const/4 v6, 0x0

    .restart local v6    # "uriDomain":Ljava/net/URI;
    goto :goto_1

    .line 455
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v1    # "cookieDomain":Ljava/lang/String;
    .end local v4    # "e":Ljava/net/URISyntaxException;
    .end local v6    # "uriDomain":Ljava/net/URI;
    :cond_1
    return-void
.end method

.method public removeSystemCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 562
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 563
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    const-string v3, "TiNetwork"

    const-string v4, "Unable to remove the system cookie. Need to provide a valid domain / name."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 568
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "lower_domain":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=; domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; expires="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lti/modules/titanium/network/CookieProxy;->systemExpiryDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, "cookieString":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 571
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 572
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0, v2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method
