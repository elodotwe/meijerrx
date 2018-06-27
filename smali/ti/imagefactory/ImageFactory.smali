.class public Lti/imagefactory/ImageFactory;
.super Ljava/lang/Object;
.source "ImageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static imageAlpha(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 143
    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    .end local p0    # "image":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 150
    .restart local p0    # "image":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    move-object p0, v0

    .line 152
    goto :goto_0

    .line 155
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static imageCrop(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    const-string v4, "width"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 24
    .local v1, "width":I
    const-string v4, "height"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 25
    .local v0, "height":I
    const-string v4, "x"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 26
    .local v2, "x":I
    const-string v4, "y"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 28
    .local v3, "y":I
    invoke-static {p0, v2, v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 31
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static imageResize(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    const-string v2, "width"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 38
    .local v1, "width":I
    const-string v2, "height"

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    .local v0, "height":I
    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    .end local v0    # "height":I
    .end local v1    # "width":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static imageRoundedCorner(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 97
    if-eqz p0, :cond_1

    .line 98
    const-string v8, "borderSize"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "borderSize":I
    const-string v8, "cornerRadius"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 102
    .local v2, "cornerRadius":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 103
    .local v6, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-lez v2, :cond_0

    .line 107
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 108
    .local v3, "path":Landroid/graphics/Path;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-direct {v4, v0, v0, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 110
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v8, v2

    int-to-float v9, v2

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v8, v9, v10}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 111
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 115
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "rectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v1, p0, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    .end local v0    # "borderSize":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "cornerRadius":I
    .end local v6    # "resultBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v6

    :cond_1
    move-object v6, v7

    goto :goto_0
.end method

.method public static imageThumbnail(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 48
    if-eqz p0, :cond_2

    .line 49
    const-string v19, "size"

    const/16 v20, 0x30

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 50
    .local v14, "size":I
    const-string v19, "borderSize"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 51
    .local v3, "borderSize":I
    const-string v19, "cornerRadius"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 52
    .local v5, "cornerRadius":I
    const-string v19, "dither"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 60
    .local v6, "dither":Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v13, v19, v20

    .line 61
    .local v13, "scale":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v13

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 62
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v13

    move/from16 v0, v19

    float-to-int v7, v0

    .line 63
    .local v7, "height":I
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 66
    .local v15, "tempBitmap":Landroid/graphics/Bitmap;
    mul-int/lit8 v19, v3, 0x2

    add-int v19, v19, v14

    mul-int/lit8 v20, v3, 0x2

    add-int v20, v20, v14

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 67
    .local v12, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    .local v4, "canvas":Landroid/graphics/Canvas;
    if-lez v5, :cond_0

    .line 71
    new-instance v10, Landroid/graphics/Rect;

    add-int v19, v14, v3

    add-int v20, v14, v3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v10, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    .local v10, "rect":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 73
    .local v11, "rectF":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 74
    .local v9, "path":Landroid/graphics/Path;
    int-to-float v0, v5

    move/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v9, v11, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 75
    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 79
    .end local v9    # "path":Landroid/graphics/Path;
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "rectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    sub-int v19, v19, v14

    div-int/lit8 v19, v19, 0x2

    sub-int v17, v3, v19

    .line 80
    .local v17, "x":I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    sub-int v19, v19, v14

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v3, v19

    .line 81
    .local v18, "y":I
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 82
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 83
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v15, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    const/4 v15, 0x0

    .line 92
    .end local v3    # "borderSize":I
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "cornerRadius":I
    .end local v6    # "dither":Ljava/lang/Boolean;
    .end local v7    # "height":I
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v12    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "scale":F
    .end local v14    # "size":I
    .end local v15    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "width":I
    .end local v17    # "x":I
    .end local v18    # "y":I
    :goto_1
    return-object v12

    .line 60
    .restart local v3    # "borderSize":I
    .restart local v5    # "cornerRadius":I
    .restart local v6    # "dither":Ljava/lang/Boolean;
    .restart local v14    # "size":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v13, v19, v20

    goto/16 :goto_0

    .line 92
    .end local v3    # "borderSize":I
    .end local v5    # "cornerRadius":I
    .end local v6    # "dither":Ljava/lang/Boolean;
    .end local v14    # "size":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public static imageTransparentBorder(Landroid/graphics/Bitmap;Lorg/appcelerator/kroll/KrollDict;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "args"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v3, 0x0

    .line 125
    if-eqz p0, :cond_0

    .line 126
    const-string v4, "borderSize"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    .local v0, "borderSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    .local v2, "resultBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v1, "canvas":Landroid/graphics/Canvas;
    int-to-float v4, v0

    int-to-float v5, v0

    invoke-virtual {v1, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    .end local v0    # "borderSize":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "resultBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method
