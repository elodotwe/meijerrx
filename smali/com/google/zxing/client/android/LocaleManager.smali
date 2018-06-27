.class public final Lcom/google/zxing/client/android/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static final COUNTRY:Ljava/lang/String;

.field private static final DEFAULT_COUNTRY:Ljava/lang/String; = "US"

.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field private static final DEFAULT_TLD:Ljava/lang/String; = "com"

.field private static final GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;
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

.field private static final GOOGLE_COUNTRY_TLD:Ljava/util/Map;
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

.field private static final GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;
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

.field private static final LANGUAGE:Ljava/lang/String;

.field private static final TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 44
    .local v1, "locale":Ljava/util/Locale;
    if-nez v1, :cond_1

    const-string v2, "US"

    :goto_0
    sput-object v2, Lcom/google/zxing/client/android/LocaleManager;->COUNTRY:Ljava/lang/String;

    .line 45
    if-nez v1, :cond_2

    const-string v0, "en"

    .line 47
    .local v0, "language":Ljava/lang/String;
    :goto_1
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/client/android/LocaleManager;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    sput-object v0, Lcom/google/zxing/client/android/LocaleManager;->LANGUAGE:Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    .line 60
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "AR"

    const-string v4, "com.ar"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "AU"

    const-string v4, "com.au"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "BR"

    const-string v4, "com.br"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "BG"

    const-string v4, "bg"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ca"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "CZ"

    const-string v4, "cz"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "DK"

    const-string v4, "dk"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "FI"

    const-string v4, "fi"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "de"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "GR"

    const-string v4, "gr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "HU"

    const-string v4, "hu"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "ID"

    const-string v4, "co.id"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "IL"

    const-string v4, "co.il"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "co.jp"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "co.kr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "NL"

    const-string v4, "nl"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "PL"

    const-string v4, "pl"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "PT"

    const-string v4, "pt"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "RU"

    const-string v4, "ru"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "SK"

    const-string v4, "sk"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "SI"

    const-string v4, "si"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "ES"

    const-string v4, "es"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "SE"

    const-string v4, "se"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tw"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "TR"

    const-string v4, "com.tr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "co.uk"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    .line 99
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "AU"

    const-string v4, "com.au"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fr"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "de"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "co.jp"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "NL"

    const-string v4, "nl"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    const-string v3, "ES"

    const-string v4, "es"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "co.uk"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    sput-object v2, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    .line 116
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "en"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/client/android/LocaleManager;->TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;

    return-void

    .line 44
    .end local v0    # "language":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doGetTLD(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/google/zxing/client/android/LocaleManager;->COUNTRY:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, "tld":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, "com"

    .end local v0    # "tld":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_search_country"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "countryOverride":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, "tld":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 155
    :goto_0
    return-object v3

    .line 154
    .end local v2    # "tld":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/zxing/client/android/LocaleManager;->COUNTRY:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .restart local v2    # "tld":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v3, "com"

    goto :goto_0

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_BOOK_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/zxing/client/android/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/zxing/client/android/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/google/zxing/client/android/LocaleManager;->doGetTLD(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslatedAssetLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->TRANSLATED_HELP_ASSET_LANGUAGES:Ljava/util/Collection;

    sget-object v1, Lcom/google/zxing/client/android/LocaleManager;->LANGUAGE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/zxing/client/android/LocaleManager;->LANGUAGE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method

.method public static isBookSearchUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "http://google.com/books"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://books.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
