.class public final Lcom/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;
.source "AnimatorProxy.java"


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final PROXIES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private mAlpha:F

.field private final mBefore:Landroid/graphics/RectF;

.field private final mCamera:Landroid/graphics/Camera;

.field private mHasPivot:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mRotationX:F

.field private mRotationY:F

.field private mRotationZ:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 24
    sput-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    .line 25
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 64
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    .line 49
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    .line 55
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 56
    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    .line 65
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    .line 69
    return-void
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 271
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 272
    .local v3, "w":F
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v1, v4

    .line 275
    .local v1, "h":F
    invoke-virtual {p1, v5, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 277
    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    .line 278
    .local v2, "m":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 279
    invoke-direct {p0, v2, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 280
    iget-object v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 282
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 285
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 286
    iget v0, p1, Landroid/graphics/RectF;->right:F

    .line 287
    .local v0, "f":F
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 288
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 290
    .end local v0    # "f":F
    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 291
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 292
    .restart local v0    # "f":F
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 293
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 295
    .end local v0    # "f":F
    :cond_1
    return-void
.end method

.method private invalidateAfterUpdate()V
    .locals 8

    .prologue
    .line 253
    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 254
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    .line 259
    .local v0, "after":Landroid/graphics/RectF;
    invoke-direct {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 260
    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 263
    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 264
    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 265
    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 266
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 262
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method private prepareForUpdate()V
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 248
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 249
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 251
    :cond_0
    return-void
.end method

.method private transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 16
    .param p1, "m"    # Landroid/graphics/Matrix;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v13, v14

    .line 299
    .local v13, "w":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v2, v14

    .line 300
    .local v2, "h":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 301
    .local v3, "hasPivot":Z
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    .line 302
    .local v4, "pX":F
    :goto_0
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    .line 304
    .local v5, "pY":F
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    .line 305
    .local v6, "rX":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    .line 306
    .local v7, "rY":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    .line 307
    .local v8, "rZ":F
    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-eqz v14, :cond_1

    .line 308
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    .line 309
    .local v1, "camera":Landroid/graphics/Camera;
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 310
    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->rotateX(F)V

    .line 311
    invoke-virtual {v1, v7}, Landroid/graphics/Camera;->rotateY(F)V

    .line 312
    neg-float v14, v8

    invoke-virtual {v1, v14}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 314
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 315
    neg-float v14, v4

    neg-float v15, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 316
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 319
    .end local v1    # "camera":Landroid/graphics/Camera;
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 320
    .local v11, "sX":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 321
    .local v12, "sY":F
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v11, v14

    if-nez v14, :cond_2

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_3

    .line 322
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 323
    div-float v14, v4, v13

    neg-float v14, v14

    mul-float v15, v11, v13

    sub-float/2addr v15, v13

    mul-float v9, v14, v15

    .line 324
    .local v9, "sPX":F
    div-float v14, v5, v2

    neg-float v14, v14

    mul-float v15, v12, v2

    sub-float/2addr v15, v2

    mul-float v10, v14, v15

    .line 325
    .local v10, "sPY":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 328
    .end local v9    # "sPX":F
    .end local v10    # "sPY":F
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 329
    return-void

    .line 301
    .end local v4    # "pX":F
    .end local v5    # "pY":F
    .end local v6    # "rX":F
    .end local v7    # "rY":F
    .end local v8    # "rZ":F
    .end local v11    # "sX":F
    .end local v12    # "sY":F
    :cond_4
    const/high16 v14, 0x40000000    # 2.0f

    div-float v4, v13, v14

    goto/16 :goto_0

    .line 302
    .restart local v4    # "pX":F
    :cond_5
    const/high16 v14, 0x40000000    # 2.0f

    div-float v5, v2, v14

    goto/16 :goto_1
.end method

.method public static wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 36
    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .line 38
    .local v0, "proxy":Lcom/nineoldandroids/view/animation/AnimatorProxy;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 39
    :cond_0
    new-instance v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    .end local v0    # "proxy":Lcom/nineoldandroids/view/animation/AnimatorProxy;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    .line 40
    .restart local v0    # "proxy":Lcom/nineoldandroids/view/animation/AnimatorProxy;
    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 334
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 335
    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 336
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    .line 338
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    return v0
.end method

.method public getRotationX()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    return v0
.end method

.method public getRotationY()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    return v0
.end method

.method public getScrollX()I
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 174
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 177
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 187
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    goto :goto_0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    return v0
.end method

.method public getX()F
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 221
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 224
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public getY()F
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 234
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 235
    const/4 v1, 0x0

    .line 237
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    add-float/2addr v1, v2

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 77
    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 78
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    .line 92
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 93
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 98
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 106
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    .line 107
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 109
    :cond_1
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    .line 117
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    .line 118
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 120
    :cond_1
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 125
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 127
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    .line 128
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 130
    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1
    .param p1, "rotationX"    # F

    .prologue
    .line 135
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 137
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    .line 138
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 140
    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 1
    .param p1, "rotationY"    # F

    .prologue
    .line 146
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 148
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    .line 149
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 151
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    .prologue
    .line 156
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 158
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    .line 159
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 161
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    .prologue
    .line 166
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 168
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    .line 169
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 171
    :cond_0
    return-void
.end method

.method public setScrollX(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 180
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 181
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 184
    :cond_0
    return-void
.end method

.method public setScrollY(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 194
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 197
    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1
    .param p1, "translationX"    # F

    .prologue
    .line 203
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 205
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    .line 206
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 208
    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 213
    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    .line 215
    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    .line 216
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    .line 218
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 227
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 228
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    .line 231
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 240
    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    .line 244
    :cond_0
    return-void
.end method
