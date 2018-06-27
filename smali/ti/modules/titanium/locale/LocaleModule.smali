.class public Lti/modules/titanium/locale/LocaleModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "LocaleModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocaleModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 35
    invoke-direct {p0}, Lti/modules/titanium/locale/LocaleModule;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public formatTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "telephoneNumber"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "Ti.Locale"

    return-object v0
.end method

.method public getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localeString"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 63
    :goto_0
    return-object v1

    .line 62
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 63
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencyCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localeString"    # Ljava/lang/String;

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 78
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 79
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getCurrencySymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 118
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 119
    .local v1, "resid":I
    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiApplication;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p2

    .line 129
    .end local v1    # "resid":I
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 124
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v2, "LocaleModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource string with key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found.  Returning default value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v0    # "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LocaleModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to get resource string with key \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\':"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 8
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 93
    :try_start_0
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 96
    .local v3, "locale":Ljava/util/Locale;
    array-length v5, v4

    if-le v5, v6, :cond_0

    .line 97
    new-instance v3, Ljava/util/Locale;

    .end local v3    # "locale":Ljava/util/Locale;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-direct {v3, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .restart local v3    # "locale":Ljava/util/Locale;
    :goto_0
    invoke-static {v3}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 104
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 105
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 107
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 108
    .local v1, "ctx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 112
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "parts":[Ljava/lang/String;
    :goto_1
    return-void

    .line 99
    .restart local v3    # "locale":Ljava/util/Locale;
    .restart local v4    # "parts":[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/Locale;

    .end local v3    # "locale":Ljava/util/Locale;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-direct {v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 109
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "LocaleModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to set language \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\':"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
