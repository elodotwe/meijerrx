.class public Lti/imagefactory/ImageFactoryModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "ImageFactoryModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/imagefactory/ImageFactoryModule$1;
    }
.end annotation


# static fields
.field public static final JPEG:I = 0x0

.field private static final LCAT:Ljava/lang/String; = "ImageFactoryModule"

.field public static final PNG:I = 0x1

.field public static final QUALITY_DEFAULT:I = 0x0

.field public static final QUALITY_HIGH:I = 0x3

.field public static final QUALITY_LOW:I = 0x2

.field public static final QUALITY_MEDIUM:I = 0x4

.field public static final QUALITY_NONE:I = 0x1

.field public static final TRANSFORM_ALPHA:I = 0x6

.field public static final TRANSFORM_CROP:I = 0x1

.field public static final TRANSFORM_NONE:I = 0x0

.field public static final TRANSFORM_RESIZE:I = 0x2

.field public static final TRANSFORM_ROUNDEDCORNER:I = 0x4

.field public static final TRANSFORM_THUMBNAIL:I = 0x3

.field public static final TRANSFORM_TRANSPARENTBORDER:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 60
    return-void
.end method

.method private coerceDimensionsIntoBlob(Landroid/graphics/Bitmap;Lorg/appcelerator/titanium/TiBlob;)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    .line 115
    :try_start_0
    const-class v1, Lorg/appcelerator/titanium/TiBlob;

    const-string v2, "width"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 116
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 118
    const-class v1, Lorg/appcelerator/titanium/TiBlob;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getFormat(Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 3
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 85
    const-string v1, "format"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    .local v0, "format":I
    packed-switch v0, :pswitch_data_0

    .line 92
    const-string v1, "ImageFactoryModule"

    const-string v2, "Unknown format provided! Defaulting to JPEG!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v1

    .line 88
    :pswitch_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 90
    :pswitch_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getQuality(Lorg/appcelerator/kroll/KrollDict;)I
    .locals 2
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 108
    const-string v0, "quality"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/16 v0, 0x46

    .line 110
    :goto_0
    return v0

    :cond_0
    const-string v0, "quality"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private getStringFormat(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 98
    sget-object v0, Lti/imagefactory/ImageFactoryModule$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const-string v0, "image/jpeg"

    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    const-string v0, "image/png"

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private imageTransform(ILandroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "type"    # I
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 81
    .end local p2    # "image":Landroid/graphics/Bitmap;
    :goto_0
    return-object p2

    .line 68
    .restart local p2    # "image":Landroid/graphics/Bitmap;
    :pswitch_0
    invoke-static {p2, p3}, Lti/imagefactory/ImageFactory;->imageCrop(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-static {p2, p3}, Lti/imagefactory/ImageFactory;->imageResize(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-static {p2, p3}, Lti/imagefactory/ImageFactory;->imageThumbnail(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-static {p2, p3}, Lti/imagefactory/ImageFactory;->imageRoundedCorner(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 76
    :pswitch_4
    invoke-static {p2, p3}, Lti/imagefactory/ImageFactory;->imageTransparentBorder(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 78
    :pswitch_5
    invoke-static {p2, p3}, Lti/imagefactory/ImageFactory;->imageAlpha(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private imageTransform(ILorg/appcelerator/titanium/TiBlob;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;
    .locals 7
    .param p1, "type"    # I
    .param p2, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p3, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 128
    invoke-virtual {p0}, Lti/imagefactory/ImageFactoryModule;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, p2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v4

    .line 129
    .local v4, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, p1, v6, p3}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILandroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 131
    .local v3, "image":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 132
    const/4 v5, 0x0

    .line 149
    :goto_0
    return-object v5

    .line 134
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 135
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    new-array v1, v6, [B

    .line 136
    .local v1, "data":[B
    invoke-direct {p0, p3}, Lti/imagefactory/ImageFactoryModule;->getFormat(Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 137
    .local v2, "format":Landroid/graphics/Bitmap$CompressFormat;
    invoke-direct {p0, p3}, Lti/imagefactory/ImageFactoryModule;->getQuality(Lorg/appcelerator/kroll/KrollDict;)I

    move-result v6

    invoke-virtual {v3, v2, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 141
    :cond_1
    invoke-direct {p0, v2}, Lti/imagefactory/ImageFactoryModule;->getStringFormat(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v5

    .line 142
    .local v5, "result":Lorg/appcelerator/titanium/TiBlob;
    invoke-direct {p0, v3, v5}, Lti/imagefactory/ImageFactoryModule;->coerceDimensionsIntoBlob(Landroid/graphics/Bitmap;Lorg/appcelerator/titanium/TiBlob;)V

    .line 145
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    const/4 v3, 0x0

    .line 147
    const/4 v4, 0x0

    .line 149
    goto :goto_0
.end method


# virtual methods
.method public compress(Lorg/appcelerator/titanium/TiBlob;F)Lorg/appcelerator/titanium/TiBlob;
    .locals 9
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "compressionQuality"    # F

    .prologue
    .line 242
    const/4 v6, 0x0

    .line 243
    .local v6, "result":Lorg/appcelerator/titanium/TiBlob;
    const/4 v4, 0x0

    .line 248
    .local v4, "image":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lti/imagefactory/ImageFactoryModule;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v5

    .line 249
    .local v5, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 250
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 252
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 253
    .local v2, "data":[B
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    .local v0, "bfOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 255
    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 256
    const-string v7, "image/jpeg"

    invoke-static {v2, v7}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v6

    .line 257
    invoke-direct {p0, v4, v6}, Lti/imagefactory/ImageFactoryModule;->coerceDimensionsIntoBlob(Landroid/graphics/Bitmap;Lorg/appcelerator/titanium/TiBlob;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v0    # "bfOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "data":[B
    :cond_0
    if-eqz v4, :cond_1

    .line 265
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    const/4 v4, 0x0

    .line 268
    :cond_1
    const/4 v1, 0x0

    .line 269
    const/4 v5, 0x0

    .line 272
    :goto_0
    return-object v6

    .line 259
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v7, "ImageFactoryModule"

    const-string v8, "Received an OutOfMemoryError! The image is too big to compress all at once. Consider using the \"compressToFile\" method instead."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    if-eqz v4, :cond_2

    .line 265
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    const/4 v4, 0x0

    .line 268
    :cond_2
    const/4 v1, 0x0

    .line 269
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 270
    .restart local v5    # "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    goto :goto_0

    .line 264
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .end local v5    # "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 265
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    const/4 v4, 0x0

    .line 268
    :cond_3
    const/4 v1, 0x0

    .line 269
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .restart local v5    # "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    throw v7
.end method

.method public compressToFile(Lorg/appcelerator/titanium/TiBlob;FLjava/lang/String;)Z
    .locals 9
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "compressionQuality"    # F
    .param p3, "fileURL"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 277
    invoke-virtual {p0}, Lti/imagefactory/ImageFactoryModule;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v4

    .line 278
    .local v4, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 280
    .local v3, "image":Landroid/graphics/Bitmap;
    invoke-static {p3, v6}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v5

    .line 281
    .local v5, "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v2

    .line 285
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 286
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v8, p2

    float-to-int v8, v8

    invoke-virtual {v3, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    const/4 v6, 0x1

    .line 293
    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    const/4 v3, 0x0

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 298
    const/4 v4, 0x0

    .line 301
    :goto_0
    return v6

    .line 293
    :cond_1
    if-eqz v3, :cond_2

    .line 294
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    const/4 v3, 0x0

    .line 297
    :cond_2
    const/4 v0, 0x0

    .line 298
    const/4 v4, 0x0

    .line 299
    goto :goto_0

    .line 289
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_3

    .line 294
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    const/4 v3, 0x0

    .line 297
    :cond_3
    const/4 v0, 0x0

    .line 298
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    goto :goto_0

    .line 293
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_4

    .line 294
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    const/4 v3, 0x0

    .line 297
    :cond_4
    const/4 v0, 0x0

    .line 298
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    throw v6
.end method

.method public imageAsCropped(Lorg/appcelerator/titanium/TiBlob;Ljava/util/HashMap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 187
    const/4 v0, 0x1

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1, v1}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILorg/appcelerator/titanium/TiBlob;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public imageAsResized(Lorg/appcelerator/titanium/TiBlob;Ljava/util/HashMap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 181
    const/4 v0, 0x2

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1, v1}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILorg/appcelerator/titanium/TiBlob;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public imageAsThumbnail(Lorg/appcelerator/titanium/TiBlob;Ljava/util/HashMap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 175
    const/4 v0, 0x3

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1, v1}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILorg/appcelerator/titanium/TiBlob;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public imageTransform([Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, "image":Landroid/graphics/Bitmap;
    aget-object v9, p1, v11

    instance-of v9, v9, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v9, :cond_1

    .line 197
    invoke-virtual {p0}, Lti/imagefactory/ImageFactoryModule;->getActivity()Landroid/app/Activity;

    move-result-object v10

    aget-object v9, p1, v11

    check-cast v9, Lorg/appcelerator/titanium/TiBlob;

    invoke-static {v10, v9}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v5

    .line 198
    .local v5, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 201
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v9, p1

    if-ge v2, v9, :cond_1

    .line 202
    aget-object v9, p1, v2

    instance-of v9, v9, Ljava/util/HashMap;

    if-eqz v9, :cond_0

    .line 203
    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    aget-object v9, p1, v2

    check-cast v9, Ljava/util/HashMap;

    invoke-direct {v7, v9}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 204
    .local v7, "transform":Lorg/appcelerator/kroll/KrollDict;
    const-string v9, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 205
    .local v8, "type":I
    invoke-direct {p0, v8, v3, v7}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILandroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 206
    .local v4, "newImage":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 207
    const/4 v3, 0x0

    .line 208
    move-object v3, v4

    .line 201
    .end local v4    # "newImage":Landroid/graphics/Bitmap;
    .end local v7    # "transform":Lorg/appcelerator/kroll/KrollDict;
    .end local v8    # "type":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    .end local v5    # "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_1
    if-nez v3, :cond_2

    .line 217
    const/4 v6, 0x0

    .line 236
    :goto_1
    return-object v6

    .line 219
    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v1, v11, [B

    .line 225
    .local v1, "data":[B
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x46

    invoke-virtual {v3, v9, v10, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 229
    :cond_3
    const-string v9, "image/png"

    invoke-static {v1, v9}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v6

    .line 230
    .local v6, "result":Lorg/appcelerator/titanium/TiBlob;
    invoke-direct {p0, v3, v6}, Lti/imagefactory/ImageFactoryModule;->coerceDimensionsIntoBlob(Landroid/graphics/Bitmap;Lorg/appcelerator/titanium/TiBlob;)V

    .line 233
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    const/4 v3, 0x0

    .line 236
    goto :goto_1
.end method

.method public imageWithAlpha(Lorg/appcelerator/titanium/TiBlob;Ljava/util/HashMap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 157
    const/4 v0, 0x6

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1, v1}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILorg/appcelerator/titanium/TiBlob;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public imageWithRoundedCorner(Lorg/appcelerator/titanium/TiBlob;Ljava/util/HashMap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 169
    const/4 v0, 0x4

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1, v1}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILorg/appcelerator/titanium/TiBlob;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public imageWithTransparentBorder(Lorg/appcelerator/titanium/TiBlob;Ljava/util/HashMap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;
    .param p2, "args"    # Ljava/util/HashMap;

    .prologue
    .line 163
    const/4 v0, 0x5

    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, p1, v1}, Lti/imagefactory/ImageFactoryModule;->imageTransform(ILorg/appcelerator/titanium/TiBlob;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method
