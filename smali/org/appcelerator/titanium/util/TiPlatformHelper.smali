.class public Lorg/appcelerator/titanium/util/TiPlatformHelper;
.super Lcom/appcelerator/analytics/APSAnalyticsHelper;
.source "TiPlatformHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiPlatformHelper$1;,
        Lorg/appcelerator/titanium/util/TiPlatformHelper$InstanceHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TiPlatformHelper"

.field private static applicationDisplayInfoInitialized:Z

.field public static applicationLogicalDensity:I

.field public static applicationScaleFactor:F

.field private static final currencyCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currencySymbolsByCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final locales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    .line 46
    const/16 v0, 0xa0

    sput v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;-><init>()V

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lorg/appcelerator/titanium/util/TiPlatformHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/appcelerator/titanium/util/TiPlatformHelper$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;-><init>()V

    return-void
.end method

.method public static final getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper$InstanceHolder;->access$100()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 162
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "code":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 165
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "code":Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencyCodes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, "symbol":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 189
    .end local v0    # "symbol":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 190
    .restart local v0    # "symbol":Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbolsByCode:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getCurrencySymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 174
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    .local v0, "symbol":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 177
    .end local v0    # "symbol":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .restart local v0    # "symbol":Ljava/lang/String;
    sget-object v1, Lorg/appcelerator/titanium/util/TiPlatformHelper;->currencySymbols:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 7

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 200
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 201
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 202
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    .line 203
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 204
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found IP address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v0

    .line 208
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access WifiInfo, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access the WifiManager, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE, failed to get IP address"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .param p1, "localeCode"    # Ljava/lang/String;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v6, 0x0

    .line 156
    :goto_0
    return-object v6

    .line 111
    :cond_0
    const/16 v6, 0x2d

    const/16 v7, 0x5f

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "code":Ljava/lang/String;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 113
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;

    goto :goto_0

    .line 116
    :cond_1
    const-string v3, ""

    .local v3, "language":Ljava/lang/String;
    const-string v1, ""

    .local v1, "country":Ljava/lang/String;
    const-string v5, ""

    .line 117
    .local v5, "variant":Ljava/lang/String;
    const-string v6, "__"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v4, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 154
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v3, v1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v2, "l":Ljava/util/Locale;
    sget-object v6, Lorg/appcelerator/titanium/util/TiPlatformHelper;->locales:Ljava/util/Map;

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 156
    goto :goto_0

    .line 123
    .end local v2    # "l":Ljava/util/Locale;
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_3
    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 125
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "_"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .restart local v4    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 132
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_5
    const-string v6, "__"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 134
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .restart local v4    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 142
    .end local v4    # "tokens":Ljava/util/StringTokenizer;
    :cond_7
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, "__"

    invoke-direct {v4, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .restart local v4    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 144
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 146
    :cond_8
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 147
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 149
    :cond_9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 7

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "netmask":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 225
    .local v2, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 226
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/TiRootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 227
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 229
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    .line 230
    iget v4, v0, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string v4, "TiPlatformHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found netmask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 233
    .restart local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access DhcpInfo, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v0    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_1
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to access the WifiManager, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v4, "TiPlatformHelper"

    const-string v5, "Must have android.permission.ACCESS_WIFI_STATE, failed to get netmask"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getAppGUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->init(Ljava/lang/String;Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public declared-synchronized intializeDisplayMetrics(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 71
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z

    if-nez v4, :cond_0

    .line 72
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    const-class v4, Landroid/content/res/Resources;

    const-string v5, "getCompatibilityInfo"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 78
    .local v3, "gciMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "compatInfo":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "applicationScale"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v0    # "compatInfo":Ljava/lang/Object;
    .end local v3    # "gciMethod":Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    sget v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    .line 85
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    .line 92
    :goto_1
    const/4 v4, 0x1

    sput-boolean v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationDisplayInfoInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "TiPlatformHelper"

    const-string v5, "Unable to get application scale factor, using reported density and its factor"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 71
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 86
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    :try_start_4
    sget v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationScaleFactor:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    .line 87
    const/16 v4, 0xa0

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I

    goto :goto_1

    .line 89
    :cond_2
    const/16 v4, 0x78

    sput v4, Lorg/appcelerator/titanium/util/TiPlatformHelper;->applicationLogicalDensity:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
