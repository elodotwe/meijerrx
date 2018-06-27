.class public Lorg/appcelerator/titanium/TiBlob;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiBlob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiBlob"

.field public static final TYPE_DATA:I = 0x2

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_STREAM_BASE64:I = 0x4

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field private data:Ljava/lang/Object;

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

.field private mimetype:Ljava/lang/String;

.field private type:I

.field private width:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 81
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    .line 86
    iput p1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    .line 87
    iput-object p2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    .line 90
    iput v1, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 91
    iput v1, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 92
    return-void
.end method

.method public static blobFromData([B)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 181
    const-string v0, "application/octet-stream"

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v1, "application/octet-stream"

    invoke-direct {v0, v2, p0, v1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 199
    :goto_0
    return-object v0

    .line 197
    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    invoke-direct {v0, v2, p0, p1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 198
    .local v0, "blob":Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->loadBitmapInfo()V

    goto :goto_0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .param p0, "file"    # Lorg/appcelerator/titanium/io/TiBaseFile;

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p0, "file"    # Lorg/appcelerator/titanium/io/TiBaseFile;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 140
    .local v0, "blob":Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->loadBitmapInfo()V

    .line 141
    return-object v0
.end method

.method public static blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 153
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 154
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v2, v4, [B

    .line 155
    .local v2, "data":[B
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 166
    :cond_0
    :goto_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v3, "image/bitmap"

    invoke-direct {v0, v4, v2, v3}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 167
    .local v0, "blob":Lorg/appcelerator/titanium/TiBlob;
    iput-object p0, v0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 169
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 170
    return-object v0

    .line 161
    .end local v0    # "blob":Lorg/appcelerator/titanium/TiBlob;
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v3, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_0
.end method

.method public static blobFromStreamBase64(Ljava/io/InputStream;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blobFromString(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x3

    const-string v2, "text/plain"

    invoke-direct {v0, v1, p0, v2}, Lorg/appcelerator/titanium/TiBlob;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private getImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v8, 0x0

    .line 576
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-nez v7, :cond_4

    iget v7, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    if-lez v7, :cond_4

    iget v7, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    if-lez v7, :cond_4

    .line 578
    if-nez p1, :cond_0

    .line 579
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .end local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 580
    .restart local p1    # "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 584
    :cond_0
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 585
    .local v4, "inSampleSize":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, "nativePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 587
    .local v5, "key":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 588
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v7, v5}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 590
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 591
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 622
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "inSampleSize":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "nativePath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 594
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "inSampleSize":I
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "nativePath":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v7, v5}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_0
    iget v7, p0, Lorg/appcelerator/titanium/TiBlob;->type:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v7, :pswitch_data_0

    .line 622
    .end local v4    # "inSampleSize":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "nativePath":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 603
    .restart local v4    # "inSampleSize":I
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "nativePath":Ljava/lang/String;
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 604
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 605
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v7, v5, v1}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 616
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 617
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 618
    const-string v7, "TiBlob"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to get the image. Not enough memory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v8

    .line 619
    goto :goto_0

    .line 609
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_1
    :try_start_2
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 610
    .local v2, "byteArray":[B
    const/4 v7, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v9, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 611
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 612
    iget-object v7, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v7, v5, v1}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private guessAdditionalContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, -0x1

    .line 230
    const/4 v3, 0x0

    .line 232
    .local v3, "mt":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 236
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 237
    const/16 v4, 0x40

    new-array v0, v4, [B

    .line 238
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 239
    .local v2, "length":I
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 240
    if-ne v2, v6, :cond_0

    .line 241
    const/4 v4, 0x0

    .line 262
    .end local v0    # "bytes":[B
    .end local v2    # "length":I
    :goto_0
    return-object v4

    .line 243
    .restart local v0    # "bytes":[B
    .restart local v2    # "length":I
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_2

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    const/16 v5, 0x38

    if-ne v4, v5, :cond_2

    .line 244
    const-string v3, "image/gif"

    .end local v0    # "bytes":[B
    .end local v2    # "length":I
    :cond_1
    :goto_1
    move-object v4, v3

    .line 262
    goto :goto_0

    .line 245
    .restart local v0    # "bytes":[B
    .restart local v2    # "length":I
    :cond_2
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/16 v5, -0x77

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_3

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_3

    const/4 v4, 0x4

    aget-byte v4, v0, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    const/4 v4, 0x5

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_3

    const/4 v4, 0x7

    aget-byte v4, v0, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 248
    const-string v3, "image/png"

    goto :goto_1

    .line 249
    :cond_3
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    if-ne v4, v6, :cond_1

    .line 250
    const/4 v4, 0x3

    aget-byte v4, v0, v4

    const/16 v5, -0x20

    if-eq v4, v5, :cond_4

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    const/16 v5, -0x1f

    if-ne v4, v5, :cond_5

    const/4 v4, 0x6

    aget-byte v4, v0, v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_5

    const/4 v4, 0x7

    aget-byte v4, v0, v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_5

    const/16 v4, 0x8

    aget-byte v4, v0, v4

    const/16 v5, 0x69

    if-ne v4, v5, :cond_5

    const/16 v4, 0x9

    aget-byte v4, v0, v4

    const/16 v5, 0x66

    if-ne v4, v5, :cond_5

    const/16 v4, 0xa

    aget-byte v4, v0, v4

    if-nez v4, :cond_5

    .line 253
    :cond_4
    const-string v3, "image/jpeg"

    goto/16 :goto_1

    .line 254
    :cond_5
    const/4 v4, 0x3

    aget-byte v4, v0, v4

    const/16 v5, -0x12

    if-ne v4, v5, :cond_1

    .line 255
    const-string v3, "image/jpg"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 258
    .end local v0    # "bytes":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TiBlob"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v1, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public append(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 9
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    const/4 v7, 0x0

    .line 404
    iget v5, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v5, :pswitch_data_0

    .line 429
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Blob type id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 407
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 408
    .local v2, "dataString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v2    # "dataString":Ljava/lang/String;
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v3

    .line 410
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "TiBlob"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 415
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    iget-object v5, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 416
    .local v1, "dataBytes":[B
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v0

    .line 417
    .local v0, "appendBytes":[B
    array-length v5, v1

    array-length v6, v0

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 418
    .local v4, "newData":[B
    array-length v5, v1

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    array-length v5, v1

    array-length v6, v0

    invoke-static {v0, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iput-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    goto :goto_0

    .line 424
    .end local v0    # "appendBytes":[B
    .end local v1    # "dataBytes":[B
    .end local v4    # "newData":[B
    :pswitch_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not yet implemented. TYPE_FILE"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 426
    :pswitch_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not yet implemented. TYPE_STREAM_BASE64"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    const-string v0, "Ti.Blob"

    return-object v0
.end method

.method public getBytes()[B
    .locals 7

    .prologue
    .line 308
    const/4 v4, 0x0

    new-array v0, v4, [B

    .line 310
    .local v0, "bytes":[B
    iget v4, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v4, :pswitch_data_0

    .line 351
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Blob type id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 354
    :cond_1
    :goto_1
    return-object v0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "TiBlob"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 321
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    iget-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 322
    goto :goto_1

    .line 324
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 325
    .local v3, "stream":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 327
    :try_start_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toByteArray(Ljava/io/InputStream;I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 330
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 331
    :catch_1
    move-exception v1

    .line 332
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 329
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 330
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 333
    :goto_2
    throw v4

    .line 331
    :catch_2
    move-exception v1

    .line 332
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 338
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/InputStream;
    :pswitch_3
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Ljava/io/InputStream;

    .line 339
    .local v2, "inStream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 341
    :try_start_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v4

    invoke-static {v2, v4}, Lorg/appcelerator/kroll/util/KrollStreamHelper;->toByteArray(Ljava/io/InputStream;I)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 344
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 345
    :catch_3
    move-exception v1

    .line 346
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 343
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    .line 344
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 347
    :goto_3
    throw v4

    .line 345
    :catch_4
    move-exception v1

    .line 346
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "TiBlob"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getFile()Lorg/appcelerator/titanium/TiFileProxy;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 548
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 558
    :goto_0
    return-object v0

    .line 551
    :cond_0
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 552
    const-string v1, "TiBlob"

    const-string v2, "getFile not supported for non-file blob types."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v1, v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v1, :cond_2

    .line 555
    const-string v1, "TiBlob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFile unable to return value: underlying data is not file, rather "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :cond_2
    new-instance v1, Lorg/appcelerator/titanium/TiFileProxy;

    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-direct {v1, v0}, Lorg/appcelerator/titanium/TiFileProxy;-><init>(Lorg/appcelerator/titanium/io/TiBaseFile;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/TiBlob;->getImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 386
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v1, :pswitch_data_0

    .line 397
    :pswitch_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    return-object v1

    .line 389
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TiBlob"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/4 v1, 0x0

    goto :goto_0

    .line 395
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_2
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getLength()I
    .locals 4

    .prologue
    .line 360
    iget v2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v2, :pswitch_data_0

    .line 376
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    :goto_0
    return v2

    .line 363
    :pswitch_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v2, v2, Lorg/appcelerator/titanium/io/TitaniumBlob;

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TitaniumBlob;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TitaniumBlob;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 368
    .local v0, "fileSize":J
    :goto_1
    long-to-int v2, v0

    goto :goto_0

    .line 366
    .end local v0    # "fileSize":J
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->size()J

    move-result-wide v0

    .restart local v0    # "fileSize":J
    goto :goto_1

    .line 371
    .end local v0    # "fileSize":J
    :pswitch_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    goto :goto_0

    .line 373
    :pswitch_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not yet implemented. TYPE_STREAM_BASE64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-object v1

    .line 524
    :cond_1
    iget v2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 525
    const-string v2, "TiBlob"

    const-string v3, "getNativePath not supported for non-file blob types."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v2, v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v2, :cond_3

    .line 528
    const-string v2, "TiBlob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNativePath unable to return value: underlying data is not file, rather "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_3
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v0

    .line 534
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 536
    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 439
    .local v1, "result":Ljava/lang/String;
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v3, v1

    .line 461
    :goto_1
    return-object v3

    .line 441
    :pswitch_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 448
    .restart local v1    # "result":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    const-string v4, "application/octet-stream"

    if-eq v3, v4, :cond_0

    .line 449
    const/4 v3, 0x0

    goto :goto_1

    .line 452
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v1, v2

    .line 455
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiBlob"

    const-string v4, "Unable to convert to string."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not yet implemented. TYPE_STREAM_BASE64"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    return v0
.end method

.method public guessContentTypeFromStream()Ljava/lang/String;
    .locals 6

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, "mt":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 210
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 212
    :try_start_0
    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 213
    if-nez v2, :cond_0

    .line 214
    invoke-direct {p0, v1}, Lorg/appcelerator/titanium/TiBlob;->guessAdditionalContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 220
    :cond_0
    :goto_0
    return-object v2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TiBlob"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v0, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public imageAsCropped(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 18
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 628
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 629
    .local v1, "img":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 630
    const/4 v7, 0x0

    .line 684
    .end local p1    # "params":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 632
    .restart local p1    # "params":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p1

    instance-of v7, v0, Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 633
    const-string v7, "TiBlob"

    const-string v16, "Argument for imageAsCropped must be a dictionary"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v7, 0x0

    goto :goto_0

    .line 637
    :cond_1
    const/4 v14, 0x0

    .line 638
    .local v14, "rotation":I
    move-object/from16 v0, p0

    iget v7, v0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_2

    .line 639
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiImageHelper;->getOrientation(Ljava/lang/String;)I

    move-result v14

    .line 642
    :cond_2
    new-instance v13, Lorg/appcelerator/kroll/KrollDict;

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "params":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 643
    .local v13, "options":Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 644
    .local v4, "widthCropped":I
    const-string v7, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 645
    .local v5, "heightCropped":I
    const-string v7, "x"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    move/from16 v16, v0

    sub-int v16, v16, v4

    div-int/lit8 v16, v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 646
    .local v2, "x":I
    const-string v7, "y"

    move-object/from16 v0, p0

    iget v0, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    move/from16 v16, v0

    sub-int v16, v16, v5

    div-int/lit8 v16, v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v7, v0}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 648
    .local v3, "y":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v12

    .line 649
    .local v12, "nativePath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 650
    .local v11, "key":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 651
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "_imageAsCropped_"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "_"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 652
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v7, v11}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 653
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_4

    .line 654
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 655
    invoke-static {v8}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v7

    goto/16 :goto_0

    .line 657
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v7, v11}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 665
    .local v6, "matrix":Landroid/graphics/Matrix;
    int-to-float v7, v14

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 666
    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 667
    .local v10, "imageCropped":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-eq v1, v7, :cond_5

    if-eq v1, v10, :cond_5

    .line 668
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 669
    const/4 v1, 0x0

    .line 671
    :cond_5
    if-eqz v11, :cond_6

    .line 672
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v7, v11, v10}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_6
    invoke-static {v10}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    goto/16 :goto_0

    .line 675
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "imageCropped":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 676
    .local v9, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 677
    const-string v7, "TiBlob"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to crop the image. Not enough memory: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v0, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 678
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 679
    .end local v9    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v9

    .line 680
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "TiBlob"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to crop the image. Illegal Argument: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v0, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 682
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v15

    .line 683
    .local v15, "t":Ljava/lang/Throwable;
    const-string v7, "TiBlob"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to crop the image. Unknown exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v0, v15}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public imageAsResized(Ljava/lang/Number;Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 27
    .param p1, "width"    # Ljava/lang/Number;
    .param p2, "height"    # Ljava/lang/Number;

    .prologue
    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    if-lez v3, :cond_1

    :cond_0
    const/16 v26, 0x1

    .line 692
    .local v26, "valid":Z
    :goto_0
    if-nez v26, :cond_2

    .line 693
    const/4 v3, 0x0

    .line 778
    :goto_1
    return-object v3

    .line 691
    .end local v26    # "valid":Z
    :cond_1
    const/16 v26, 0x0

    goto :goto_0

    .line 696
    .restart local v26    # "valid":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 697
    .local v11, "dstWidth":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 698
    .local v10, "dstHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 699
    .local v15, "imgWidth":I
    move-object/from16 v0, p0

    iget v14, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 701
    .local v14, "imgHeight":I
    const/16 v18, 0x0

    .line 702
    .local v18, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    if-ge v11, v15, :cond_3

    if-ge v10, v14, :cond_3

    const/16 v21, 0x1

    .line 703
    .local v21, "scaleDown":Z
    :goto_2
    if-eqz v21, :cond_6

    .line 704
    div-int v23, v15, v11

    .line 705
    .local v23, "scaleWidth":I
    div-int v22, v14, v10

    .line 707
    .local v22, "scaleHeight":I
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    move/from16 v25, v23

    .line 708
    .local v25, "targetScale":I
    :goto_3
    const/16 v20, 0x1

    .line 709
    .local v20, "sampleSize":I
    :goto_4
    const/4 v3, 0x2

    move/from16 v0, v25

    if-lt v0, v3, :cond_5

    .line 710
    mul-int/lit8 v20, v20, 0x2

    .line 711
    div-int/lit8 v25, v25, 0x2

    goto :goto_4

    .line 702
    .end local v20    # "sampleSize":I
    .end local v21    # "scaleDown":Z
    .end local v22    # "scaleHeight":I
    .end local v23    # "scaleWidth":I
    .end local v25    # "targetScale":I
    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    .restart local v21    # "scaleDown":Z
    .restart local v22    # "scaleHeight":I
    .restart local v23    # "scaleWidth":I
    :cond_4
    move/from16 v25, v22

    .line 707
    goto :goto_3

    .line 714
    .restart local v20    # "sampleSize":I
    .restart local v25    # "targetScale":I
    :cond_5
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    .end local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 715
    .restart local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 716
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 721
    .end local v20    # "sampleSize":I
    .end local v22    # "scaleHeight":I
    .end local v23    # "scaleWidth":I
    .end local v25    # "targetScale":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/TiBlob;->getImage(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 722
    .local v2, "img":Landroid/graphics/Bitmap;
    if-nez v2, :cond_7

    .line 723
    const/4 v3, 0x0

    goto :goto_1

    .line 726
    :cond_7
    const/16 v19, 0x0

    .line 727
    .local v19, "rotation":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 728
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiImageHelper;->getOrientation(Ljava/lang/String;)I

    move-result v19

    .line 731
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v17

    .line 732
    .local v17, "nativePath":Ljava/lang/String;
    const/16 v16, 0x0

    .line 733
    .local v16, "key":Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 734
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_imageAsResized_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 736
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_a

    .line 737
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 738
    invoke-static {v9}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    goto/16 :goto_1

    .line 740
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :cond_a
    const/4 v13, 0x0

    .line 747
    .local v13, "imageResized":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 748
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 749
    if-eqz v19, :cond_d

    .line 750
    int-to-float v3, v11

    int-to-float v4, v15

    div-float v23, v3, v4

    .line 751
    .local v23, "scaleWidth":F
    int-to-float v3, v10

    int-to-float v4, v14

    div-float v22, v3, v4

    .line 752
    .local v22, "scaleHeight":F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 754
    .local v7, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 756
    move/from16 v0, v19

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 757
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 761
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "scaleHeight":F
    .end local v23    # "scaleWidth":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-eq v2, v3, :cond_b

    if-eq v2, v13, :cond_b

    .line 762
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 763
    const/4 v2, 0x0

    .line 765
    :cond_b
    if-eqz v16, :cond_c

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v13}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_c
    invoke-static {v13}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    goto/16 :goto_1

    .line 759
    :cond_d
    const/4 v3, 0x1

    invoke-static {v2, v11, v10, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    goto :goto_5

    .line 769
    :catch_0
    move-exception v12

    .line 770
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 771
    const-string v3, "TiBlob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resize the image. Not enough memory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 773
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v12

    .line 774
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "TiBlob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resize the image. Illegal Argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v12}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 776
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v24

    .line 777
    .local v24, "t":Ljava/lang/Throwable;
    const-string v3, "TiBlob"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resize the image. Unknown exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public imageAsThumbnail(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 15
    .param p1, "size"    # Ljava/lang/Number;
    .param p2, "borderSize"    # Ljava/lang/Number;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param
    .param p3, "cornerRadius"    # Ljava/lang/Number;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 786
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 787
    .local v5, "img":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 788
    const/4 v12, 0x0

    .line 856
    :goto_0
    return-object v12

    .line 791
    :cond_0
    const/4 v9, 0x0

    .line 792
    .local v9, "rotation":I
    iget v12, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 793
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/appcelerator/titanium/util/TiImageHelper;->getOrientation(Ljava/lang/String;)I

    move-result v9

    .line 796
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 798
    .local v11, "thumbnailSize":I
    const/high16 v1, 0x3f800000    # 1.0f

    .line 799
    .local v1, "border":F
    if-eqz p2, :cond_2

    .line 800
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 802
    :cond_2
    const/4 v8, 0x0

    .line 803
    .local v8, "radius":F
    if-eqz p3, :cond_3

    .line 804
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->floatValue()F

    move-result v8

    .line 807
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v7

    .line 808
    .local v7, "nativePath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 809
    .local v6, "key":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 810
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_imageAsThumbnail_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 811
    iget-object v12, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v12, v6}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 812
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 813
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_4

    .line 814
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v12

    goto :goto_0

    .line 816
    :cond_4
    iget-object v12, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v12, v6}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v3, 0x0

    .line 823
    .local v3, "imageFinal":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v5, v11, v11}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 824
    .local v4, "imageThumbnail":Landroid/graphics/Bitmap;
    iget-object v12, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-eq v5, v12, :cond_6

    if-eq v5, v4, :cond_6

    .line 825
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 826
    const/4 v5, 0x0

    .line 829
    :cond_6
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-nez v12, :cond_a

    const/4 v12, 0x0

    cmpl-float v12, v8, v12

    if-nez v12, :cond_a

    .line 830
    move-object v3, v4

    .line 839
    :cond_7
    :goto_1
    if-eqz v9, :cond_8

    .line 840
    invoke-static {v3, v9}, Lorg/appcelerator/titanium/util/TiImageHelper;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 842
    :cond_8
    if-eqz v6, :cond_9

    .line 843
    iget-object v12, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v12, v6, v3}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_9
    invoke-static {v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v12

    goto/16 :goto_0

    .line 832
    :cond_a
    invoke-static {v4, v8, v1}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithRoundedCorner(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 833
    iget-object v12, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-eq v4, v12, :cond_7

    if-eq v4, v3, :cond_7

    .line 834
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 835
    const/4 v4, 0x0

    goto :goto_1

    .line 847
    .end local v4    # "imageThumbnail":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 848
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v12

    invoke-virtual {v12}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 849
    const-string v12, "TiBlob"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to get the thumbnail image. Not enough memory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 851
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 852
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v12, "TiBlob"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to get the thumbnail image. Illegal Argument: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 854
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v10

    .line 855
    .local v10, "t":Ljava/lang/Throwable;
    const-string v12, "TiBlob"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to get the thumbnail image. Unknown exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public imageWithAlpha()Lorg/appcelerator/titanium/TiBlob;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 863
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 864
    .local v3, "img":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 908
    :goto_0
    return-object v8

    .line 867
    :cond_0
    const/4 v6, 0x0

    .line 868
    .local v6, "rotation":I
    iget v9, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 869
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiImageHelper;->getOrientation(Ljava/lang/String;)I

    move-result v6

    .line 872
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v5

    .line 873
    .local v5, "nativePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 874
    .local v4, "key":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 875
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_imageWithAlpha_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 876
    iget-object v9, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v9, v4}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 877
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 878
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 879
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v8

    goto :goto_0

    .line 881
    :cond_2
    iget-object v9, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v9, v4}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_0
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 888
    .local v2, "imageWithAlpha":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-eq v3, v9, :cond_4

    if-eq v3, v2, :cond_4

    .line 889
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 890
    const/4 v3, 0x0

    .line 892
    :cond_4
    if-eqz v6, :cond_5

    .line 893
    invoke-static {v2, v6}, Lorg/appcelerator/titanium/util/TiImageHelper;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 895
    :cond_5
    if-eqz v4, :cond_6

    .line 896
    iget-object v9, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v9, v4, v2}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    :cond_6
    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    goto :goto_0

    .line 899
    .end local v2    # "imageWithAlpha":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 900
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v9

    invoke-virtual {v9}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 901
    const-string v9, "TiBlob"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get the image with alpha. Not enough memory: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 903
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 904
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v9, "TiBlob"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get the image with alpha. Illegal Argument: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 906
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 907
    .local v7, "t":Ljava/lang/Throwable;
    const-string v9, "TiBlob"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get the image with alpha. Unknown exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public imageWithRoundedCorner(Ljava/lang/Number;Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 13
    .param p1, "cornerRadius"    # Ljava/lang/Number;
    .param p2, "borderSize"    # Ljava/lang/Number;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 915
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 916
    .local v4, "img":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 917
    const/4 v10, 0x0

    .line 967
    :goto_0
    return-object v10

    .line 920
    :cond_0
    const/4 v8, 0x0

    .line 921
    .local v8, "rotation":I
    iget v10, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 922
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiImageHelper;->getOrientation(Ljava/lang/String;)I

    move-result v8

    .line 925
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 926
    .local v7, "radius":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 927
    .local v1, "border":F
    if-eqz p2, :cond_2

    .line 928
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 931
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v6

    .line 932
    .local v6, "nativePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 933
    .local v5, "key":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 934
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_imageWithRoundedCorner_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 935
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 936
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 937
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 938
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v10

    goto :goto_0

    .line 940
    :cond_3
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_0
    invoke-static {v4, v7, v1}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithRoundedCorner(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 947
    .local v3, "imageRoundedCorner":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-eq v4, v10, :cond_5

    if-eq v4, v3, :cond_5

    .line 948
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 949
    const/4 v4, 0x0

    .line 951
    :cond_5
    if-eqz v8, :cond_6

    .line 952
    invoke-static {v3, v8}, Lorg/appcelerator/titanium/util/TiImageHelper;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 954
    :cond_6
    if-eqz v5, :cond_7

    .line 955
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v10, v5, v3}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    :cond_7
    invoke-static {v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    goto/16 :goto_0

    .line 958
    .end local v3    # "imageRoundedCorner":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 959
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 960
    const-string v10, "TiBlob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get the image with rounded corner. Not enough memory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 961
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 962
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 963
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "TiBlob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get the image with rounded corner. Illegal Argument: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 965
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 966
    .local v9, "t":Ljava/lang/Throwable;
    const-string v10, "TiBlob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get the image with rounded corner. Unknown exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public imageWithTransparentBorder(Ljava/lang/Number;)Lorg/appcelerator/titanium/TiBlob;
    .locals 13
    .param p1, "size"    # Ljava/lang/Number;

    .prologue
    const/4 v9, 0x0

    .line 974
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 975
    .local v4, "img":Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 1022
    :goto_0
    return-object v9

    .line 979
    :cond_0
    const/4 v7, 0x0

    .line 980
    .local v7, "rotation":I
    iget v10, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 981
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiImageHelper;->getOrientation(Ljava/lang/String;)I

    move-result v7

    .line 984
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 986
    .local v1, "borderSize":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v6

    .line 987
    .local v6, "nativePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 988
    .local v5, "key":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 989
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_imageWithTransparentBorder_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 990
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 991
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 992
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 993
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v9

    goto :goto_0

    .line 995
    :cond_2
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v10, v5}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :try_start_0
    invoke-static {v4, v1}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithTransparentBorder(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1002
    .local v3, "imageWithBorder":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->image:Landroid/graphics/Bitmap;

    if-eq v4, v10, :cond_4

    if-eq v4, v3, :cond_4

    .line 1003
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1004
    const/4 v4, 0x0

    .line 1006
    :cond_4
    if-eqz v7, :cond_5

    .line 1007
    invoke-static {v3, v7}, Lorg/appcelerator/titanium/util/TiImageHelper;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1009
    :cond_5
    if-eqz v5, :cond_6

    .line 1010
    iget-object v10, p0, Lorg/appcelerator/titanium/TiBlob;->mMemoryCache:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v10, v5, v3}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_6
    invoke-static {v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    goto :goto_0

    .line 1013
    .end local v3    # "imageWithBorder":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 1014
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->evictAll()V

    .line 1015
    const-string v10, "TiBlob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get the image with transparent border. Not enough memory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1017
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 1018
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "TiBlob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get the image with transparent border. Illegal Argument: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1020
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 1021
    .local v8, "t":Ljava/lang/Throwable;
    const-string v10, "TiBlob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get the image with transparent border. Unknown exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public loadBitmapInfo()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 270
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->guessContentTypeFromStream()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "mt":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    if-eq v1, v3, :cond_0

    .line 273
    iput-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    .line 277
    :cond_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 280
    .local v2, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 282
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    .line 293
    :goto_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_2

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v3, v5, :cond_2

    .line 294
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 295
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 298
    .end local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    return-void

    .line 284
    .restart local v2    # "opts":Landroid/graphics/BitmapFactory$Options;
    :pswitch_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 288
    .local v0, "byteArray":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toBase64()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getText()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 515
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/String;
    :cond_0
    const-string v0, "[object TiBlob]"

    goto :goto_0
.end method
