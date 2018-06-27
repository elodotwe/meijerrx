.class public Lorg/appcelerator/titanium/util/TiNinePatchHelper;
.super Ljava/lang/Object;
.source "TiNinePatchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private cropNinePatch(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 124
    const/4 v8, 0x0

    .line 126
    .local v8, "cb":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 127
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 128
    .local v1, "pixels":[I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 129
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, v8

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 131
    return-object v8
.end method

.method private isNinePatch(Landroid/graphics/Bitmap;)Z
    .locals 11
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    :goto_0
    return v8

    .line 67
    :cond_0
    const/4 v4, 0x1

    .line 69
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 70
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 72
    .local v1, "height":I
    const/4 v5, 0x0

    .line 73
    .local v5, "topSum":I
    const/4 v3, 0x0

    .line 75
    .local v3, "leftSum":I
    if-lt v6, v10, :cond_b

    if-lt v1, v10, :cond_b

    .line 76
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 77
    invoke-virtual {p1, v2, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 78
    .local v0, "c":I
    if-nez v0, :cond_5

    move v7, v8

    :goto_2
    add-int/2addr v5, v7

    .line 79
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 80
    const/4 v4, 0x0

    .line 91
    .end local v0    # "c":I
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 92
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_2

    .line 93
    invoke-virtual {p1, v8, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 94
    .restart local v0    # "c":I
    if-nez v0, :cond_8

    move v7, v8

    :goto_5
    add-int/2addr v3, v7

    .line 95
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 96
    const/4 v4, 0x0

    .line 112
    .end local v0    # "c":I
    .end local v2    # "i":I
    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    if-eq v3, v1, :cond_3

    if-ne v5, v6, :cond_4

    .line 113
    :cond_3
    const/4 v4, 0x0

    :cond_4
    move v8, v4

    .line 116
    goto :goto_0

    .restart local v0    # "c":I
    .restart local v2    # "i":I
    :cond_5
    move v7, v9

    .line 78
    goto :goto_2

    .line 84
    :cond_6
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 85
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 86
    const/4 v4, 0x0

    .line 87
    goto :goto_3

    .line 76
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    move v7, v9

    .line 94
    goto :goto_5

    .line 100
    :cond_9
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 101
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isValidColor(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 102
    const/4 v4, 0x0

    .line 103
    goto :goto_6

    .line 92
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 108
    .end local v0    # "c":I
    .end local v2    # "i":I
    :cond_b
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private isValidColor(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 120
    if-eqz p1, :cond_0

    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toBytes([BII)V
    .locals 2
    .param p1, "a"    # [B
    .param p2, "offset"    # I
    .param p3, "v"    # I

    .prologue
    .line 239
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 240
    add-int/lit8 v0, p2, 0x1

    const v1, 0xff00

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 241
    add-int/lit8 v0, p2, 0x2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 242
    add-int/lit8 v0, p2, 0x3

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 243
    return-void
.end method

.method private toInt([BI)I
    .locals 2
    .param p1, "a"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "i":I
    aget-byte v1, p1, p2

    or-int/2addr v0, v1

    .line 231
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 232
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 233
    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 235
    return v0
.end method


# virtual methods
.method createChunk(Landroid/graphics/Bitmap;)[B
    .locals 23
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, "chunk":[B
    const/4 v8, 0x0

    .line 138
    .local v8, "numXDivs":I
    const/4 v9, 0x0

    .line 139
    .local v9, "numYDivs":I
    const/4 v7, 0x1

    .line 141
    .local v7, "numColors":I
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 143
    .local v6, "last":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v17, "xdivs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;>;"
    const/16 v16, 0x1

    .local v16, "x":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 146
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 147
    .local v10, "p":I
    if-eq v10, v6, :cond_0

    .line 148
    new-instance v11, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;-><init>(Lorg/appcelerator/titanium/util/TiNinePatchHelper;)V

    .line 149
    .local v11, "sc":Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    move/from16 v0, v16

    iput v0, v11, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    .line 150
    iput v6, v11, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    .line 151
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v8, v8, 0x1

    .line 153
    move v6, v10

    .line 145
    .end local v11    # "sc":Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 157
    .end local v10    # "p":I
    :cond_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 160
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v20, "ydivs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;>;"
    const/16 v18, 0x1

    .local v18, "y":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 162
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 163
    .restart local v10    # "p":I
    if-eq v10, v6, :cond_2

    .line 164
    new-instance v11, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;-><init>(Lorg/appcelerator/titanium/util/TiNinePatchHelper;)V

    .line 165
    .restart local v11    # "sc":Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    move/from16 v0, v18

    iput v0, v11, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    .line 166
    iput v6, v11, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    .line 167
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v9, v9, 0x1

    .line 169
    move v6, v10

    .line 161
    .end local v11    # "sc":Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 174
    .end local v10    # "p":I
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v4, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 176
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, v21

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    move/from16 v19, v0

    .line 177
    .local v19, "yc":I
    const/16 v16, 0x0

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 178
    if-nez v19, :cond_5

    .line 179
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, v21

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    move/from16 v21, v0

    if-nez v21, :cond_4

    const/16 v21, 0x0

    :goto_4
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 179
    :cond_4
    const/16 v21, 0x1

    goto :goto_4

    .line 181
    :cond_5
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, v21

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->color:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    const/16 v21, 0x0

    :goto_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    const/16 v21, 0x1

    goto :goto_6

    .line 184
    :cond_7
    if-nez v19, :cond_9

    .line 185
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/16 v21, 0x0

    :goto_7
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 185
    :cond_8
    const/16 v21, 0x1

    goto :goto_7

    .line 187
    :cond_9
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 190
    .end local v19    # "yc":I
    :cond_a
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    if-ge v5, v0, :cond_b

    .line 191
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 194
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 197
    mul-int/lit8 v21, v8, 0x20

    add-int/lit8 v21, v21, 0x20

    mul-int/lit8 v22, v9, 0x20

    add-int v21, v21, v22

    mul-int/lit8 v22, v7, 0x20

    add-int v12, v21, v22

    .line 203
    .local v12, "size":I
    new-array v3, v12, [B

    .line 204
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput-byte v22, v3, v21

    .line 205
    const/16 v21, 0x1

    and-int/lit16 v0, v8, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v21

    .line 206
    const/16 v21, 0x2

    and-int/lit16 v0, v9, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v21

    .line 207
    const/16 v21, 0x3

    and-int/lit16 v0, v7, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v21

    .line 209
    const/16 v14, 0x20

    .line 210
    .local v14, "startOfXData":I
    const/4 v5, 0x0

    :goto_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_c

    .line 211
    mul-int/lit8 v21, v5, 0x4

    add-int v22, v14, v21

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, v21

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->toBytes([BII)V

    .line 210
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 214
    :cond_c
    mul-int/lit8 v21, v8, 0x4

    add-int v15, v14, v21

    .line 215
    .local v15, "startOfYData":I
    const/4 v5, 0x0

    :goto_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_d

    .line 216
    mul-int/lit8 v21, v5, 0x4

    add-int v22, v15, v21

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;

    move-object/from16 v0, v21

    iget v0, v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper$SegmentColor;->index:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->toBytes([BII)V

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 219
    :cond_d
    mul-int/lit8 v21, v9, 0x4

    add-int v13, v15, v21

    .line 220
    .local v13, "startOfColors":I
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v5, v0, :cond_e

    .line 221
    mul-int/lit8 v21, v5, 0x4

    add-int v21, v21, v13

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v3, v1, v2}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->toBytes([BII)V

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 224
    :cond_e
    return-object v3
.end method

.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "nd":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isNinePatch(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->createChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 50
    .local v1, "newChunk":[B
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0    # "nd":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->cropNinePatch(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v4, ""

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 56
    .end local v1    # "newChunk":[B
    .restart local v0    # "nd":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "nd":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v0    # "nd":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public process(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    .line 28
    move-object v1, p1

    .line 30
    .local v1, "nd":Landroid/graphics/drawable/Drawable;
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 31
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->isNinePatch(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->createChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 35
    .local v2, "newChunk":[B
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1    # "nd":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->cropNinePatch(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v5, ""

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 40
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v2    # "newChunk":[B
    .restart local v1    # "nd":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method
