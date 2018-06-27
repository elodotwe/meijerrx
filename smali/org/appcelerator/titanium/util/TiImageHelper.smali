.class public Lorg/appcelerator/titanium/util/TiImageHelper;
.super Ljava/lang/Object;
.source "TiImageHelper.java"


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final TAG:Ljava/lang/String; = "TiImageHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, "orientation":I
    if-nez p0, :cond_0

    .line 143
    :try_start_0
    const-string v4, "TiImageHelper"

    const-string v5, "Path of image file could not determined. Could not create an exifInterface from an invalid path."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v4, 0x0

    .line 168
    :goto_0
    return v4

    .line 148
    :cond_0
    const-string v4, "file://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    const-string v4, "file://"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    :cond_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "ei":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 154
    .local v3, "orientationConst":I
    packed-switch v3, :pswitch_data_0

    .end local v1    # "ei":Landroid/media/ExifInterface;
    .end local v3    # "orientationConst":I
    :goto_1
    :pswitch_0
    move v4, v2

    .line 168
    goto :goto_0

    .line 156
    .restart local v1    # "ei":Landroid/media/ExifInterface;
    .restart local v3    # "orientationConst":I
    :pswitch_1
    const/16 v2, 0x10e

    .line 157
    goto :goto_1

    .line 159
    :pswitch_2
    const/16 v2, 0xb4

    .line 160
    goto :goto_1

    .line 162
    :pswitch_3
    const/16 v2, 0x5a

    goto :goto_1

    .line 165
    .end local v1    # "ei":Landroid/media/ExifInterface;
    .end local v3    # "orientationConst":I
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TiImageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    if-nez p0, :cond_1

    .line 41
    const/4 p0, 0x0

    .line 46
    .end local p0    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 43
    .restart local p0    # "image":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static imageWithRoundedCorner(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "cornerRadius"    # F
    .param p2, "borderSize"    # F

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v4, 0x0

    .line 97
    :goto_0
    return-object v4

    .line 66
    :cond_0
    cmpg-float v9, p1, v10

    if-lez v9, :cond_1

    cmpg-float v9, p2, v10

    if-gez v9, :cond_2

    .line 67
    :cond_1
    const-string v9, "TiImageHelper"

    const-string v10, "Unable to add rounded corners. Invalid corner radius or borderSize for imageWithRoundedCorner"

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p0

    .line 68
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 72
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 73
    .local v3, "height":I
    mul-float v9, p2, v11

    float-to-int v9, v9

    add-int/2addr v9, v8

    mul-float v10, p2, v11

    float-to-int v10, v10

    add-int/2addr v10, v3

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 75
    .local v4, "imageRoundedCorner":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 78
    .local v1, "clipPath":Landroid/graphics/Path;
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v9, v8

    add-float/2addr v9, p2

    int-to-float v10, v3

    add-float/2addr v10, p2

    invoke-direct {v5, p2, p2, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    .local v5, "imgRect":Landroid/graphics/RectF;
    const/16 v9, 0x8

    new-array v7, v9, [F

    .line 81
    .local v7, "radii":[F
    invoke-static {v7, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 82
    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v5, v7, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 86
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 93
    .local v6, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 95
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 96
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v9, p2, p2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 87
    .end local v6    # "paint":Landroid/graphics/Paint;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "TiImageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create the image with rounded corners. clipPath failed on canvas: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_1
.end method

.method public static imageWithTransparentBorder(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "borderSize"    # I

    .prologue
    const/4 v5, 0x1

    .line 111
    if-nez p0, :cond_0

    .line 112
    const/4 p0, 0x0

    .line 129
    .end local p0    # "image":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 114
    .restart local p0    # "image":Landroid/graphics/Bitmap;
    :cond_0
    if-gtz p1, :cond_1

    .line 115
    const-string v5, "TiImageHelper"

    const-string v6, "Unable to add a transparent border. Invalid border size for imageWithTransparentBorder."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 120
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 122
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 125
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 126
    .local v1, "height":I
    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v4

    mul-int/lit8 v6, p1, 0x2

    add-int/2addr v6, v1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 127
    .local v2, "imageBorder":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiImageHelper;->imageWithAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    int-to-float v6, p1

    int-to-float v7, p1

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v2

    .line 129
    goto :goto_0
.end method

.method public static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I

    .prologue
    const/4 v1, 0x0

    .line 178
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
