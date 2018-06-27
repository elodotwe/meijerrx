.class public Lorg/appcelerator/titanium/proxy/IntentProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "IntentProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiIntent"

.field public static final TYPE_ACTIVITY:I = 0x0

.field public static final TYPE_BROADCAST:I = 0x2

.field public static final TYPE_SERVICE:I = 0x1

.field protected static escapeChars:[C


# instance fields
.field protected intent:Landroid/content/Intent;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/appcelerator/titanium/proxy/IntentProxy;->escapeChars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x5cs
        0x2fs
        0x20s
        0x2es
        0x24s
        0x26s
        0x40s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    .line 56
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    .line 57
    return-void
.end method

.method protected static getURLClassName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    const-string v0, "Activity"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_1
    const-string v0, "Service"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    const-string v0, "Broadcast"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static getURLClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appendage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 75
    const-string v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x0

    .line 98
    :goto_0
    return-object v7

    .line 78
    :cond_0
    const/4 v6, 0x0

    .line 79
    .local v6, "start":I
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "app:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    .line 80
    const/4 v6, 0x2

    .line 83
    :cond_1
    const-string v7, "_"

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v5, v6, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "className":Ljava/lang/String;
    const-string v7, ".js"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :goto_1
    sget-object v0, Lorg/appcelerator/titanium/proxy/IntentProxy;->escapeChars:[C

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-char v2, v0, v3

    .line 95
    .local v2, "escapeChar":C
    const/16 v7, 0x5f

    invoke-virtual {v1, v2, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 91
    .end local v0    # "arr$":[C
    .end local v2    # "escapeChar":C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 98
    .restart local v0    # "arr$":[C
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    const-string v0, "TiIntent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_0
    return-void
.end method

.method public addFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    const-string v0, "Ti.Android.Intent"

    return-object v0
.end method

.method public getBlobExtra(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 15
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 291
    const/4 v5, 0x0

    .line 292
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 295
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v12, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .line 296
    .local v8, "returnData":Landroid/os/Parcelable;
    instance-of v12, v8, Landroid/net/Uri;

    if-eqz v12, :cond_5

    .line 298
    move-object v0, v8

    check-cast v0, Landroid/net/Uri;

    move-object v10, v0

    .line 299
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v12

    invoke-virtual {v12}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 301
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    .line 305
    .local v9, "size":I
    :try_start_1
    new-array v3, v9, [B

    .line 306
    .local v3, "buf":[B
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {v5, v3, v12, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_2

    .line 307
    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 318
    .end local v3    # "buf":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 319
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "returnData":Landroid/os/Parcelable;
    .end local v9    # "size":I
    .end local v10    # "uri":Landroid/net/Uri;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v12, "TiIntent"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error getting blob extra: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    if-eqz v5, :cond_0

    .line 324
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 329
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 331
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 337
    :cond_1
    :goto_3
    return-object v11

    .line 309
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buf":[B
    .restart local v6    # "len":I
    .restart local v8    # "returnData":Landroid/os/Parcelable;
    .restart local v9    # "size":I
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 311
    invoke-static {v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v11

    .line 322
    if-eqz v5, :cond_3

    .line 324
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 329
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 331
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_5
    move-object v1, v2

    .line 334
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 325
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v4

    .line 326
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 332
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 312
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buf":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    .end local v9    # "size":I
    .end local v10    # "uri":Landroid/net/Uri;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :try_start_8
    instance-of v12, v8, Landroid/graphics/Bitmap;

    if-eqz v12, :cond_7

    .line 314
    move-object v0, v8

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    .line 315
    .local v7, "returnBitmapData":Landroid/graphics/Bitmap;
    invoke-static {v7}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v11

    .line 322
    if-eqz v5, :cond_6

    .line 324
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 329
    :cond_6
    :goto_6
    if-eqz v1, :cond_1

    .line 331
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 332
    :catch_3
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 325
    .end local v4    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 326
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 322
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "returnBitmapData":Landroid/graphics/Bitmap;
    :cond_7
    if-eqz v5, :cond_8

    .line 324
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 329
    :cond_8
    :goto_7
    if-eqz v1, :cond_1

    .line 331
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 332
    :catch_5
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 325
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 326
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 325
    .end local v8    # "returnData":Landroid/os/Parcelable;
    .local v4, "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 326
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 332
    .end local v4    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 322
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_8
    if-eqz v5, :cond_9

    .line 324
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 329
    :cond_9
    :goto_9
    if-eqz v1, :cond_a

    .line 331
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 334
    :cond_a
    :goto_a
    throw v11

    .line 325
    :catch_9
    move-exception v4

    .line 326
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 332
    .end local v4    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "TiIntent"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v12, v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 322
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "returnData":Landroid/os/Parcelable;
    .restart local v9    # "size":I
    .restart local v10    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v11

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 318
    .end local v8    # "returnData":Landroid/os/Parcelable;
    .end local v9    # "size":I
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_b
    move-exception v4

    goto/16 :goto_1
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 285
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    return v0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getInternalType()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    return v0
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 279
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const/4 v1, 0x0

    .line 261
    :cond_0
    :goto_0
    return-object v1

    .line 246
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 255
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 256
    .local v0, "parcelable":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 104
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    .line 107
    const-string v9, "action"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v9, "url"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "url":Ljava/lang/String;
    const-string v9, "data"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "data":Ljava/lang/String;
    const-string v9, "className"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "className":Ljava/lang/String;
    const-string v9, "packageName"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "packageName":Ljava/lang/String;
    const-string v9, "type"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "type":Ljava/lang/String;
    const/4 v5, 0x0

    .line 115
    .local v5, "flags":I
    const-string v9, "flags"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 116
    const-string v9, "flags"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    .line 117
    const-string v9, "TiIntent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting flags: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    :goto_0
    if-eqz v0, :cond_0

    .line 124
    const-string v9, "TiIntent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_0
    if-eqz v6, :cond_1

    .line 129
    const-string v9, "TiIntent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :cond_1
    if-eqz v8, :cond_2

    .line 134
    const-string v9, "TiIntent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating intent for JS Activity/Service @ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v9

    invoke-virtual {v9}, Lorg/appcelerator/titanium/TiApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    invoke-static {v8, v10}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getURLClassName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    :cond_2
    if-eqz v2, :cond_3

    .line 140
    if-eqz v6, :cond_7

    .line 141
    const-string v9, "TiIntent"

    const-string v10, "Both className and packageName set, using intent.setClassName(packageName, className"

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    :cond_3
    :goto_1
    if-nez v7, :cond_4

    .line 156
    if-eqz v0, :cond_4

    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 157
    const-string v7, "text/plain"

    .line 164
    :cond_4
    if-eqz v7, :cond_9

    .line 165
    const-string v9, "TiIntent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v3, :cond_8

    .line 167
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :cond_5
    :goto_2
    return-void

    .line 120
    :cond_6
    const-string v9, "flags"

    iget-object v10, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lorg/appcelerator/titanium/proxy/IntentProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 147
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 148
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v9, "TiIntent"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate class for name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing class for name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 169
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_8
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 171
    :cond_9
    if-eqz v3, :cond_5

    .line 172
    iget-object v9, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 204
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 182
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, p2, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 183
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 184
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v4, p2, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 185
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 186
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p2, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 187
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 188
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, p2, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 189
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 190
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v4, p2, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 191
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 192
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v4, p2, [Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 194
    :try_start_0
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "value":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 195
    .local v2, "objVal":[Ljava/lang/Object;
    array-length v4, v2

    const-class v5, [Ljava/lang/String;

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 196
    .local v3, "stringArray":[Ljava/lang/String;
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v2    # "objVal":[Ljava/lang/Object;
    .end local v3    # "stringArray":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "TiIntent"

    const-string v5, "Error unimplemented put conversion "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string v4, "TiIntent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Warning unimplemented put conversion for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trying String"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public putExtraUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    return-void
.end method

.method public setFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    return-void
.end method

.method public setInternalType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 392
    iput p1, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->type:I

    .line 393
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/IntentProxy;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    return-void
.end method
