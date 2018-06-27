.class public Lorg/appcelerator/titanium/view/Ti2DMatrix;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "Ti2DMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANCHOR_VALUE:F = -1.0f

.field public static final VALUE_UNSPECIFIED:F = 1.4E-45f


# instance fields
.field protected next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

.field protected prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V
    .locals 1
    .param p1, "prev"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .param p2, "opType"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 81
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 85
    iput-object p0, p1, Lorg/appcelerator/titanium/view/Ti2DMatrix;->next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 87
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-direct {v0, p2}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 88
    return-void
.end method

.method private containsOperationOfType(I)Z
    .locals 2
    .param p1, "operationType"    # I

    .prologue
    .line 244
    move-object v0, p0

    .line 245
    .local v0, "check":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    if-eqz v0, :cond_1

    .line 246
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v1, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    if-ne v1, p1, :cond_0

    .line 247
    const/4 v1, 0x1

    .line 251
    :goto_1
    return v1

    .line 249
    :cond_0
    iget-object v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canUsePropertyAnimators()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 400
    const/4 v1, 0x0

    .local v1, "hasScale":Z
    const/4 v0, 0x0

    .local v0, "hasRotate":Z
    const/4 v2, 0x0

    .line 401
    .local v2, "hasTranslate":Z
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->getAllOperations()Ljava/util/List;

    move-result-object v5

    .line 403
    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 404
    .local v4, "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    if-eqz v4, :cond_0

    .line 408
    iget v7, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 410
    :pswitch_0
    if-eqz v1, :cond_2

    .line 436
    .end local v4    # "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    :cond_1
    :goto_1
    :pswitch_1
    return v6

    .line 413
    .restart local v4    # "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    :cond_2
    const/4 v1, 0x1

    .line 414
    goto :goto_0

    .line 417
    :pswitch_2
    if-nez v2, :cond_1

    .line 420
    const/4 v2, 0x1

    .line 421
    goto :goto_0

    .line 424
    :pswitch_3
    if-nez v0, :cond_1

    .line 427
    const/4 v0, 0x1

    .line 428
    goto :goto_0

    .line 436
    .end local v4    # "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public finalValuesAfterInterpolation(II)[F
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 205
    const/high16 v1, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->interpolate(FIIFF)Landroid/graphics/Matrix;

    move-result-object v6

    .line 206
    .local v6, "m":Landroid/graphics/Matrix;
    const/16 v0, 0x9

    new-array v7, v0, [F

    .line 207
    .local v7, "result":[F
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 208
    return-object v7
.end method

.method public getAllOperations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    move-object v1, p0

    .line 452
    .local v1, "toCheck":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    if-eqz v1, :cond_1

    .line 453
    iget-object v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_0
    iget-object v1, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 459
    :cond_1
    return-object v0
.end method

.method public getRotateOperationParameters()[F
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 367
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-nez v0, :cond_0

    .line 368
    new-array v0, v1, [F

    .line 371
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v2, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    aput v2, v0, v1

    goto :goto_0
.end method

.method protected handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 123
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 125
    .local v0, "anchorPoint":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "x"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    .line 127
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "y"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 130
    .end local v0    # "anchorPoint":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 94
    const-string v1, "rotate"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 96
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x0

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 97
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "rotate"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 98
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 102
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 104
    .local v0, "newDict":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "scale"

    const-string v2, "scale"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "anchorPoint"

    const-string v2, "anchorPoint"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 109
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 110
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object p0, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix;->next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 119
    .end local v0    # "newDict":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    new-instance v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 115
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 116
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v3, "scale"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 117
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public hasRotateOperation()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->containsOperationOfType(I)Z

    move-result v0

    return v0
.end method

.method public hasScaleOperation()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->containsOperationOfType(I)Z

    move-result v0

    return v0
.end method

.method public interpolate(FIIFF)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "interpolatedTime"    # F
    .param p2, "childWidth"    # I
    .param p3, "childHeight"    # I
    .param p4, "anchorX"    # F
    .param p5, "anchorY"    # F

    .prologue
    .line 213
    move-object v8, p0

    .line 214
    .local v8, "first":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v10, "preMatrixList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/Ti2DMatrix;>;"
    :goto_0
    iget-object v0, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v0, :cond_0

    .line 218
    iget-object v8, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 221
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 226
    .local v7, "current":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    goto :goto_1

    .line 230
    .end local v7    # "current":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    .line 233
    :cond_3
    return-object v2
.end method

.method public invert()Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    return-object v0
.end method

.method public multiply(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 2
    .param p1, "other"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .prologue
    .line 197
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 198
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-object p0, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->multiplyWith:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 199
    return-object v0
.end method

.method public rotate([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v0, p0, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 175
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    array-length v1, p1

    if-ne v1, v4, :cond_1

    .line 176
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    .line 177
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x1

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 178
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    array-length v1, p1

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    .line 181
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 182
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    goto :goto_0
.end method

.method public scale([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v0, p0, v4}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 145
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v3, 0x1

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 146
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 148
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 150
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v5, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    .line 151
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 152
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    .line 153
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v6

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 154
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 156
    :cond_0
    array-length v1, p1

    if-ne v1, v6, :cond_2

    .line 158
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    .line 159
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 160
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 167
    :cond_1
    :goto_0
    return-object v0

    .line 161
    :cond_2
    array-length v1, p1

    if-ne v1, v5, :cond_1

    .line 163
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    .line 164
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v3, p1, v4

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    goto :goto_0
.end method

.method public setRotationFromDegrees(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 381
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput p1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 384
    :cond_0
    return-void
.end method

.method public translate(DD)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 135
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 136
    .local v0, "newMatrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p1

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateX:F

    .line 137
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p3

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateY:F

    .line 138
    return-object v0
.end method

.method public verifyRotationValues(Lorg/appcelerator/titanium/view/TiUIView;Z)F
    .locals 8
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p2, "autoreverse"    # Z

    .prologue
    .line 327
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v4, "rotationOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    move-object v0, p0

    .line 330
    .local v0, "check":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    if-eqz v0, :cond_1

    .line 332
    iget-object v6, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v6, v6, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 333
    const/4 v6, 0x0

    iget-object v7, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 335
    :cond_0
    iget-object v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 338
    :cond_1
    if-nez p1, :cond_3

    const/4 v5, 0x0

    .line 340
    .local v5, "viewCurrentRotation":F
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 361
    .end local v5    # "viewCurrentRotation":F
    :cond_2
    :goto_2
    return v5

    .line 338
    :cond_3
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getAnimatedRotationDegrees()F

    move-result v5

    goto :goto_1

    .line 344
    .restart local v5    # "viewCurrentRotation":F
    :cond_4
    move v2, v5

    .line 346
    .local v2, "lastRotation":F
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 347
    .local v3, "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    iget-boolean v6, v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    if-nez v6, :cond_5

    .line 350
    iput v2, v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 352
    :cond_5
    iget v2, v3, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 353
    goto :goto_3

    .line 358
    .end local v3    # "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    :cond_6
    if-nez p2, :cond_2

    move v5, v2

    .line 361
    goto :goto_2
.end method

.method public verifyScaleValues(Lorg/appcelerator/titanium/view/TiUIView;Z)Landroid/util/Pair;
    .locals 10
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p2, "autoreverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 274
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v5, "scaleOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    move-object v0, p0

    .line 277
    .local v0, "check":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    if-eqz v0, :cond_1

    .line 279
    iget-object v7, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget v7, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    if-nez v7, :cond_0

    .line 280
    const/4 v7, 0x0

    iget-object v8, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-virtual {v5, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 282
    :cond_0
    iget-object v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 285
    :cond_1
    if-nez p1, :cond_3

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 289
    .local v6, "viewCurrentScale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 313
    .end local v6    # "viewCurrentScale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_2
    :goto_2
    return-object v6

    .line 285
    :cond_3
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getAnimatedScaleValues()Landroid/util/Pair;

    move-result-object v6

    goto :goto_1

    .line 293
    .restart local v6    # "viewCurrentScale":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_4
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 294
    .local v2, "lastToX":F
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 296
    .local v3, "lastToY":F
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 297
    .local v4, "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    iget-boolean v7, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    if-nez v7, :cond_5

    .line 300
    iput v2, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 301
    iput v3, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    .line 303
    :cond_5
    iget v2, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 304
    iget v3, v4, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 305
    goto :goto_3

    .line 310
    .end local v4    # "op":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    :cond_6
    if-nez p2, :cond_2

    .line 313
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    goto :goto_2
.end method
