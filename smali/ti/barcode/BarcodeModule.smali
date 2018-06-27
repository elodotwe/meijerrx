.class public Lti/barcode/BarcodeModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "BarcodeModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/barcode/BarcodeModule$1;
    }
.end annotation


# static fields
.field public static final BOOKMARK:I = 0x9

.field public static final CALENDAR:I = 0x5

.field public static final CONTACT:I = 0x8

.field static final DATA_MATRIX_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMAIL:I = 0x7

.field public static final FORMAT_CODE_128:I = 0x7

.field public static final FORMAT_CODE_39:I = 0x8

.field public static final FORMAT_DATA_MATRIX:I = 0x2

.field public static final FORMAT_EAN_13:I = 0x6

.field public static final FORMAT_EAN_8:I = 0x5

.field public static final FORMAT_ITF:I = 0x9

.field public static final FORMAT_NONE:I = 0x0

.field public static final FORMAT_QR_CODE:I = 0x1

.field private static final FORMAT_STRINGS:[Ljava/lang/String;

.field public static final FORMAT_UPC_A:I = 0x4

.field public static final FORMAT_UPC_E:I = 0x3

.field public static final GEOLOCATION:I = 0x6

.field private static final LCAT:Ljava/lang/String; = "BarcodeModule"

.field static final ONE_D_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final PRODUCT_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field static final QR_CODE_FORMATS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS:I = 0x2

.field public static final TELEPHONE:I = 0x3

.field public static final TEXT:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final URL:I = 0x1

.field public static final WIFI:I = 0xa

.field private static _instance:Lti/barcode/BarcodeModule;


# instance fields
.field private keepOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 79
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const-string v1, "QR_CODE"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "DATA_MATRIX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UPC_E"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UPC_A"

    aput-object v2, v0, v1

    const-string v1, "EAN_8"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "EAN_13"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CODE_128"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CODE_39"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ITF"

    aput-object v2, v0, v1

    sput-object v0, Lti/barcode/BarcodeModule;->FORMAT_STRINGS:[Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v4}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    .line 157
    sget-object v0, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lti/barcode/BarcodeModule;->ONE_D_FORMATS:Ljava/util/Vector;

    .line 163
    sget-object v0, Lti/barcode/BarcodeModule;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lti/barcode/BarcodeModule;->PRODUCT_FORMATS:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 164
    sget-object v0, Lti/barcode/BarcodeModule;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lti/barcode/BarcodeModule;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lti/barcode/BarcodeModule;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lti/barcode/BarcodeModule;->ONE_D_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lti/barcode/BarcodeModule;->QR_CODE_FORMATS:Ljava/util/Vector;

    .line 169
    sget-object v0, Lti/barcode/BarcodeModule;->QR_CODE_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lti/barcode/BarcodeModule;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    .line 171
    sget-object v0, Lti/barcode/BarcodeModule;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/barcode/BarcodeModule;->keepOpen:Z

    .line 105
    return-void
.end method

.method private disableInstructions()V
    .locals 5

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p0}, Lti/barcode/BarcodeModule;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 318
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Lti/barcode/BarcodeModule;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_help_version_shown"

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getContentType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 385
    const-string v2, "QR_CODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    new-instance v2, Lcom/google/zxing/Result;

    new-array v3, v4, [B

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, p2, v3, v4, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 387
    .local v0, "res":Lcom/google/zxing/client/result/ParsedResult;
    sget-object v2, Lti/barcode/BarcodeModule$1;->$SwitchMap$com$google$zxing$client$result$ParsedResultType:[I

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 413
    .end local v0    # "res":Lcom/google/zxing/client/result/ParsedResult;
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 389
    .restart local v0    # "res":Lcom/google/zxing/client/result/ParsedResult;
    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    .line 391
    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    .line 393
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 397
    :pswitch_4
    const/4 v1, 0x6

    goto :goto_0

    .line 399
    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    .line 401
    :pswitch_6
    const/4 v1, 0x2

    goto :goto_0

    .line 403
    :pswitch_7
    const/4 v1, 0x5

    goto :goto_0

    .line 405
    :pswitch_8
    const/16 v1, 0xa

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getInstance()Lti/barcode/BarcodeModule;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lti/barcode/BarcodeModule;->_instance:Lti/barcode/BarcodeModule;

    return-object v0
.end method

.method private parseCalendar(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 8
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "retVal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "\\r\\n"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, "split":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 516
    .local v3, "line":Ljava/lang/String;
    const-string v6, "BEGIN:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "END:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 515
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_1
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "pair":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 521
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 524
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private parseContact(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 10
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "retVal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x1

    .line 503
    const/4 v7, 0x7

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, "split":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 505
    .local v4, "line":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, "pair":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "key":Ljava/lang/String;
    const-string v7, "n"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 508
    const-string v7, "name"

    aget-object v8, v5, v9

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_0
    aget-object v7, v5, v9

    invoke-virtual {p1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "pair":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private parseData(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "contentType"    # I
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "retVal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    packed-switch p1, :pswitch_data_0

    .line 451
    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :goto_0
    return-object v0

    .line 420
    :pswitch_0
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 423
    :pswitch_1
    invoke-direct {p0, v0, p2}, Lti/barcode/BarcodeModule;->parseSMS(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :pswitch_2
    const-string v1, "phonenumber"

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 429
    :pswitch_3
    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 432
    :pswitch_4
    invoke-direct {p0, v0, p2}, Lti/barcode/BarcodeModule;->parseCalendar(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :pswitch_5
    invoke-direct {p0, v0, p2}, Lti/barcode/BarcodeModule;->parseGeo(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :pswitch_6
    invoke-direct {p0, v0, p2}, Lti/barcode/BarcodeModule;->parseEmail(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :pswitch_7
    invoke-direct {p0, v0, p2}, Lti/barcode/BarcodeModule;->parseContact(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :pswitch_8
    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    :pswitch_9
    invoke-direct {p0, v0, p2}, Lti/barcode/BarcodeModule;->parseWifi(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private parseEmail(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 12
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "retVal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 488
    const/4 v8, 0x7

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "parsed":Ljava/lang/String;
    const-string v8, "?"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 490
    const-string v8, "?"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "query":[Ljava/lang/String;
    const-string v8, "email"

    aget-object v9, v7, v10

    invoke-virtual {p1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    aget-object v8, v7, v11

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "addt":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 494
    .local v5, "pairs":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "pair":[Ljava/lang/String;
    aget-object v8, v4, v10

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v4, v11

    invoke-virtual {p1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "addt":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pair":[Ljava/lang/String;
    .end local v5    # "pairs":Ljava/lang/String;
    .end local v7    # "query":[Ljava/lang/String;
    :cond_0
    const-string v8, "email"

    invoke-virtual {p1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_1
    return-void
.end method

.method private parseGeo(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "retVal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 460
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    if-ne v4, v7, :cond_1

    .line 462
    aget-object v0, v3, v8

    .line 463
    .local v0, "latitude":Ljava/lang/String;
    aget-object v1, v3, v6

    .line 464
    .local v1, "longitude":Ljava/lang/String;
    const-string v4, "\\?"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "qSplit":[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v7, :cond_0

    .line 466
    aget-object v1, v2, v8

    .line 467
    const-string v4, "query"

    aget-object v5, v2, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_0
    const-string v4, "latitude"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v4, "longitude"

    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .end local v0    # "latitude":Ljava/lang/String;
    .end local v1    # "longitude":Ljava/lang/String;
    .end local v2    # "qSplit":[Ljava/lang/String;
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string v4, "text"

    invoke-virtual {p1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseSMS(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "retVal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "parsed":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "split":[Ljava/lang/String;
    const-string v2, "phonenumber"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v2, "message"

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v1    # "split":[Ljava/lang/String;
    :goto_0
    return-void

    .line 483
    :cond_0
    const-string v2, "phonenumber"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseWifi(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .param p2, "contents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "retVal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x5

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, "parsed":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "split":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 530
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 529
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_0
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 534
    .local v4, "pair":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 536
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private populateHints(Ljava/util/HashMap;)Ljava/util/Hashtable;
    .locals 11
    .param p1, "args"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 188
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 189
    .local v4, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 190
    .local v5, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    const-string v9, "acceptedFormats"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 191
    const-string v9, "acceptedFormats"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v1, v9

    check-cast v1, [Ljava/lang/Object;

    .line 192
    .local v1, "acceptedFormats":[Ljava/lang/Object;
    array-length v9, v1

    if-lez v9, :cond_3

    .line 193
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v0, v3, v6

    .line 194
    .local v0, "acceptedFormat":Ljava/lang/Object;
    sget-object v9, Lti/barcode/BarcodeModule;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-static {v9}, Lcom/google/zxing/BarcodeFormat;->valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "acceptedFormat":Ljava/lang/Object;
    .end local v1    # "acceptedFormats":[Ljava/lang/Object;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 199
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 200
    .local v8, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/util/Vector;

    .end local v4    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 201
    .restart local v4    # "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    const-string v9, "preferences_decode_1D"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 202
    sget-object v9, Lti/barcode/BarcodeModule;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_1
    const-string v9, "preferences_decode_QR"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 205
    sget-object v9, Lti/barcode/BarcodeModule;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_2
    const-string v9, "preferences_decode_Data_Matrix"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 208
    sget-object v9, Lti/barcode/BarcodeModule;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v4, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 211
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    sget-object v9, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v5, v9, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-object v5
.end method

.method private populateYUVLuminanceFromRGB([I[BII)V
    .locals 7
    .param p1, "rgb"    # [I
    .param p2, "yuv420sp"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    mul-int v5, p3, p4

    if-ge v2, v5, :cond_0

    .line 178
    aget v5, p1, v2

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v4, v5

    .line 179
    .local v4, "red":F
    aget v5, p1, v2

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v1, v5

    .line 180
    .local v1, "green":F
    aget v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    int-to-float v0, v5

    .line 181
    .local v0, "blue":F
    const v5, 0x3e839581    # 0.257f

    mul-float/2addr v5, v4

    const v6, 0x3f010625    # 0.504f

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    const v6, 0x3dc8b439

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    const/high16 v6, 0x41800000    # 16.0f

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 182
    .local v3, "luminance":I
    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "blue":F
    .end local v1    # "green":F
    .end local v3    # "luminance":I
    .end local v4    # "red":F
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput-object v0, Lti/barcode/BarcodeModule;->_instance:Lti/barcode/BarcodeModule;

    .line 118
    invoke-static {}, Lcom/google/zxing/client/android/CaptureActivity;->getInstance()Lcom/google/zxing/client/android/CaptureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->cancel()V

    .line 119
    return-void
.end method

.method public capture(Ljava/util/HashMap;)V
    .locals 17
    .param p1, "args"    # Ljava/util/HashMap;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 254
    sput-object p0, Lti/barcode/BarcodeModule;->_instance:Lti/barcode/BarcodeModule;

    .line 256
    new-instance v10, Landroid/content/Intent;

    const-string v13, "com.google.zxing.client.android.SCAN"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v10, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_5

    .line 259
    new-instance v6, Lorg/appcelerator/kroll/KrollDict;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 262
    .local v6, "argsDict":Lorg/appcelerator/kroll/KrollDict;
    const-string v13, "animate"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 263
    .local v5, "animate":Z
    if-nez v5, :cond_0

    .line 266
    const/high16 v13, 0x10000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    :cond_0
    const-string v13, "overlay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 270
    const-string v13, "overlay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    sput-object v13, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 275
    :goto_0
    const-string v13, "acceptedFormats"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 276
    const-string v13, "acceptedFormats"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object v2, v13

    check-cast v2, [Ljava/lang/Object;

    .line 277
    .local v2, "acceptedFormats":[Ljava/lang/Object;
    array-length v13, v2

    if-lez v13, :cond_3

    .line 278
    const-string v8, ""

    .line 279
    .local v8, "formats":Ljava/lang/String;
    move-object v7, v2

    .local v7, "arr$":[Ljava/lang/Object;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_2

    aget-object v1, v7, v9

    .line 280
    .local v1, "acceptedFormat":Ljava/lang/Object;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lti/barcode/BarcodeModule;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v15

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 279
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 272
    .end local v1    # "acceptedFormat":Ljava/lang/Object;
    .end local v2    # "acceptedFormats":[Ljava/lang/Object;
    .end local v7    # "arr$":[Ljava/lang/Object;
    .end local v8    # "formats":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    :cond_1
    const/4 v13, 0x0

    sput-object v13, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0

    .line 282
    .restart local v2    # "acceptedFormats":[Ljava/lang/Object;
    .restart local v7    # "arr$":[Ljava/lang/Object;
    .restart local v8    # "formats":Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v11    # "len$":I
    :cond_2
    const-string v13, "BarcodeModule"

    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v13, "SCAN_FORMATS"

    const/4 v14, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    .end local v2    # "acceptedFormats":[Ljava/lang/Object;
    .end local v7    # "arr$":[Ljava/lang/Object;
    .end local v8    # "formats":Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    :cond_3
    const-string v13, "SHOW_RECTANGLE"

    const-string v14, "showRectangle"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const-string v13, "KEEP_OPEN"

    const-string v14, "keepOpen"

    const/4 v15, 0x0

    invoke-virtual {v6, v14, v15}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    .end local v5    # "animate":Z
    .end local v6    # "argsDict":Lorg/appcelerator/kroll/KrollDict;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/barcode/BarcodeModule;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v14, "allowInstructions"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_4

    .line 297
    invoke-direct/range {p0 .. p0}, Lti/barcode/BarcodeModule;->disableInstructions()V

    .line 300
    :cond_4
    const-string v13, "ALLOW_MENU"

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/barcode/BarcodeModule;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v15, "allowMenu"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    const-string v13, "ALLOW_INSTRUCTIONS"

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/barcode/BarcodeModule;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v15, "allowInstructions"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string v13, "PROMPT_MESSAGE"

    move-object/from16 v0, p0

    iget-object v14, v0, Lti/barcode/BarcodeModule;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v15, "displayedMessage"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v13

    invoke-virtual {v13}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v13

    invoke-virtual {v13}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/google/zxing/client/android/CaptureActivity;->PACKAGE_NAME:Ljava/lang/String;

    .line 309
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .local v3, "activity":Landroid/app/Activity;
    move-object v4, v3

    .line 310
    check-cast v4, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 311
    .local v4, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-interface {v4}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v12

    .line 312
    .local v12, "resultCode":I
    move-object/from16 v0, p0

    invoke-interface {v4, v10, v12, v0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 313
    return-void

    .line 291
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    .end local v12    # "resultCode":I
    :cond_5
    const/4 v13, 0x0

    sput-object v13, Lcom/google/zxing/client/android/Intents$Scan;->overlayProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 292
    const-string v13, "SHOW_RECTANGLE"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    const-string v13, "KEEP_OPEN"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2
.end method

.method public getUseFrontCamera()Z
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p0}, Lti/barcode/BarcodeModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getFrontCamera()Z

    move-result v0

    return v0
.end method

.method public getUseLED()Z
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p0}, Lti/barcode/BarcodeModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getTorch()Z

    move-result v0

    return v0
.end method

.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v0, "errdict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "message"

    const-string v2, "Scan Failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lti/barcode/BarcodeModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 363
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_1

    .line 364
    invoke-virtual {p0, p3}, Lti/barcode/BarcodeModule;->processFailed(I)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    if-nez p3, :cond_2

    .line 367
    invoke-virtual {p0, p3}, Lti/barcode/BarcodeModule;->processCanceled(I)V

    goto :goto_0

    .line 372
    :cond_2
    :try_start_0
    const-string v1, "SCAN_RESULT_FORMAT"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT"

    invoke-virtual {p4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lti/barcode/BarcodeModule;->processResult(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_1
    iget-boolean v1, p0, Lti/barcode/BarcodeModule;->keepOpen:Z

    if-nez v1, :cond_0

    .line 380
    const/4 v1, 0x0

    sput-object v1, Lti/barcode/BarcodeModule;->_instance:Lti/barcode/BarcodeModule;

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BarcodeModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hit exception while processing barcode! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    invoke-virtual {p0, p3}, Lti/barcode/BarcodeModule;->processFailed(I)V

    goto :goto_1
.end method

.method public parse(Ljava/util/HashMap;)V
    .locals 26
    .param p1, "args"    # Ljava/util/HashMap;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = false
        .end annotation
    .end param

    .prologue
    .line 218
    sput-object p0, Lti/barcode/BarcodeModule;->_instance:Lti/barcode/BarcodeModule;

    .line 222
    :try_start_0
    const-string v5, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/appcelerator/titanium/TiBlob;

    .line 223
    .local v17, "blob":Lorg/appcelerator/titanium/TiBlob;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v23

    .line 224
    .local v23, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual/range {v23 .. v23}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 226
    .local v3, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .local v6, "w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 227
    .local v10, "h":I
    mul-int v5, v6, v10

    new-array v4, v5, [I

    .line 228
    .local v4, "rgb":[I
    mul-int v5, v6, v10

    new-array v0, v5, [B

    move-object/from16 v25, v0

    .line 230
    .local v25, "yuv":[B
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1, v6, v10}, Lti/barcode/BarcodeModule;->populateYUVLuminanceFromRGB([I[BII)V

    .line 233
    new-instance v7, Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, v25

    move v9, v6

    move v13, v6

    move v14, v10

    invoke-direct/range {v7 .. v15}, Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 234
    .local v7, "source":Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;
    new-instance v16, Lcom/google/zxing/BinaryBitmap;

    new-instance v5, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v5, v7}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 235
    .local v16, "bitmap":Lcom/google/zxing/BinaryBitmap;
    new-instance v22, Lcom/google/zxing/MultiFormatReader;

    invoke-direct/range {v22 .. v22}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 236
    .local v22, "reader":Lcom/google/zxing/MultiFormatReader;
    invoke-direct/range {p0 .. p1}, Lti/barcode/BarcodeModule;->populateHints(Ljava/util/HashMap;)Ljava/util/Hashtable;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 238
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v21

    .line 239
    .local v21, "rawResult":Lcom/google/zxing/Result;
    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v20

    .line 240
    .local v20, "format":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v24

    .line 241
    .local v24, "result":Ljava/lang/String;
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5}, Lti/barcode/BarcodeModule;->processResult(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v3    # "image":Landroid/graphics/Bitmap;
    .end local v4    # "rgb":[I
    .end local v6    # "w":I
    .end local v7    # "source":Lcom/google/zxing/client/android/PlanarYUVLuminanceSource;
    .end local v10    # "h":I
    .end local v16    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v17    # "blob":Lorg/appcelerator/titanium/TiBlob;
    .end local v20    # "format":Ljava/lang/String;
    .end local v21    # "rawResult":Lcom/google/zxing/Result;
    .end local v22    # "reader":Lcom/google/zxing/MultiFormatReader;
    .end local v23    # "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    .end local v24    # "result":Ljava/lang/String;
    .end local v25    # "yuv":[B
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v18

    .line 244
    .local v18, "e":Lcom/google/zxing/NotFoundException;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v19, "errdict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "message"

    const-string v8, "Scan Failed"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v5, "exception"

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/NotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v5, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lti/barcode/BarcodeModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processCanceled(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 343
    const-string v1, "BarcodeModule"

    const-string v2, "Result for scan was CANCELED"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v0, "cancelDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "message"

    const-string v2, "Scan Canceled"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v1, "cancel"

    invoke-virtual {p0, v1, v0}, Lti/barcode/BarcodeModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public processFailed(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .prologue
    .line 334
    const-string v1, "BarcodeModule"

    const-string v2, "Result for scan was not OK: 0"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v0, "errdict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "message"

    const-string v2, "Scan Failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lti/barcode/BarcodeModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public processResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "contents"    # Ljava/lang/String;
    .param p3, "resultCode"    # I

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lti/barcode/BarcodeModule;->getContentType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 352
    .local v0, "contentType":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v1, "dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "format"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "result"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "contentType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v2, "data"

    invoke-direct {p0, v0, p2}, Lti/barcode/BarcodeModule;->parseData(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v2, "success"

    invoke-virtual {p0, v2, v1}, Lti/barcode/BarcodeModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method public setUseFrontCamera(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 130
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p0}, Lti/barcode/BarcodeModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setFrontCamera(Z)V

    .line 131
    invoke-static {}, Lcom/google/zxing/client/android/CaptureActivity;->getInstance()Lcom/google/zxing/client/android/CaptureActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/google/zxing/client/android/CaptureActivity;->getInstance()Lcom/google/zxing/client/android/CaptureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->reset()V

    .line 134
    :cond_0
    return-void
.end method

.method public setUseLED(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 145
    new-instance v0, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {p0}, Lti/barcode/BarcodeModule;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 146
    invoke-static {}, Lcom/google/zxing/client/android/CaptureActivity;->getInstance()Lcom/google/zxing/client/android/CaptureActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/google/zxing/client/android/CaptureActivity;->getInstance()Lcom/google/zxing/client/android/CaptureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->reset()V

    .line 149
    :cond_0
    return-void
.end method
