.class public Lti/modules/titanium/ui/widget/TiImageView;
.super Landroid/view/ViewGroup;
.source "TiImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CONTROL_TIMEOUT:I = 0xfa0

.field private static final MSG_HIDE_CONTROLS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TiImageView"


# instance fields
.field private baseMatrix:Landroid/graphics/Matrix;

.field private changeMatrix:Landroid/graphics/Matrix;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private enableScale:Z

.field private enableZoomControls:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;

.field private orientation:I

.field private proxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private scaleFactor:F

.field private scaleIncrement:F

.field private scaleMax:F

.field private scaleMin:F

.field private viewHeightDefined:Z

.field private viewWidthDefined:Z

.field private zoomControls:Landroid/widget/ZoomControls;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 70
    move-object v0, p0

    .line 72
    .local v0, "me":Lti/modules/titanium/ui/widget/TiImageView;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    .line 74
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    .line 75
    iput v3, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 76
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    .line 77
    iput v3, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    .line 78
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    .line 79
    iput v4, p0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    .line 81
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 82
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    .line 84
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    .line 85
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->addView(Landroid/view/View;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableScale(Z)V

    .line 88
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lti/modules/titanium/ui/widget/TiImageView$1;

    invoke-direct {v3, p0, v0}, Lti/modules/titanium/ui/widget/TiImageView$1;-><init>(Lti/modules/titanium/ui/widget/TiImageView;Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 127
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 129
    new-instance v1, Landroid/widget/ZoomControls;

    invoke-direct {v1, p1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    .line 130
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->addView(Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const-wide/16 v2, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/widget/ZoomControls;->setZoomSpeed(J)V

    .line 133
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lti/modules/titanium/ui/widget/TiImageView$2;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiImageView$2;-><init>(Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    new-instance v2, Lti/modules/titanium/ui/widget/TiImageView$3;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/widget/TiImageView$3;-><init>(Lti/modules/titanium/ui/widget/TiImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->proxy:Ljava/lang/ref/WeakReference;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiImageView;)F
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiImageView;FF)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/TiImageView;->checkImageScrollBeyondBorders(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    return-void
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleScaleUp()V

    return-void
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiImageView;

    .prologue
    .line 33
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleScaleDown()V

    return-void
.end method

.method private checkImageScrollBeyondBorders(FF)Z
    .locals 11
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 472
    const/16 v5, 0x9

    new-array v1, v5, [F

    .line 473
    .local v1, "matrixValues":[F
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v5}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 475
    .local v0, "m":Landroid/graphics/Matrix;
    neg-float v5, p1

    neg-float v6, p2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 476
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 479
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    sub-float/2addr v6, v8

    mul-float v2, v5, v6

    .line 480
    .local v2, "scaledAdditionalHeight":F
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aget v6, v1, v4

    sub-float/2addr v6, v8

    mul-float v3, v5, v6

    .line 481
    .local v3, "scaledAdditionalWidth":F
    aget v5, v1, v10

    neg-float v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    aget v5, v1, v10

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    aget v5, v1, v9

    neg-float v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    aget v5, v1, v9

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    .line 485
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private computeBaseMatrix()V
    .locals 17

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 263
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 265
    if-eqz v1, :cond_2

    .line 270
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .local v8, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lti/modules/titanium/ui/widget/TiImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 272
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 273
    .local v6, "intrinsicWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 274
    .local v5, "intrinsicHeight":I
    move v4, v6

    .line 275
    .local v4, "dwidth":I
    move v3, v5

    .line 277
    .local v3, "dheight":I
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    if-lez v13, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v14, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 279
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x5a

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_1

    .line 280
    :cond_0
    move v4, v5

    .line 281
    move v3, v6

    .line 285
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v12, v13

    .line 286
    .local v12, "vwidth":F
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiImageView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v11, v13

    .line 288
    .local v11, "vheight":F
    const/4 v2, 0x0

    .line 289
    .local v2, "dRectF":Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v13, v14, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 290
    .local v10, "vRectF":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    if-nez v13, :cond_3

    .line 291
    new-instance v2, Landroid/graphics/RectF;

    .end local v2    # "dRectF":Landroid/graphics/RectF;
    const/4 v13, 0x0

    const/4 v14, 0x0

    int-to-float v15, v4

    int-to-float v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 303
    .restart local v2    # "dRectF":Landroid/graphics/RectF;
    :goto_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    .local v7, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    if-eqz v13, :cond_7

    .line 306
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 310
    .local v9, "scaleType":Landroid/graphics/Matrix$ScaleToFit;
    :goto_1
    invoke-virtual {v7, v2, v10, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 313
    .end local v2    # "dRectF":Landroid/graphics/RectF;
    .end local v3    # "dheight":I
    .end local v4    # "dwidth":I
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicWidth":I
    .end local v7    # "m":Landroid/graphics/Matrix;
    .end local v8    # "r":Landroid/graphics/Rect;
    .end local v9    # "scaleType":Landroid/graphics/Matrix$ScaleToFit;
    .end local v10    # "vRectF":Landroid/graphics/RectF;
    .end local v11    # "vheight":F
    .end local v12    # "vwidth":F
    :cond_2
    :goto_2
    return-void

    .line 292
    .restart local v2    # "dRectF":Landroid/graphics/RectF;
    .restart local v3    # "dheight":I
    .restart local v4    # "dwidth":I
    .restart local v5    # "intrinsicHeight":I
    .restart local v6    # "intrinsicWidth":I
    .restart local v8    # "r":Landroid/graphics/Rect;
    .restart local v10    # "vRectF":Landroid/graphics/RectF;
    .restart local v11    # "vheight":F
    .restart local v12    # "vwidth":F
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x5a

    if-ne v13, v14, :cond_4

    .line 293
    new-instance v2, Landroid/graphics/RectF;

    .end local v2    # "dRectF":Landroid/graphics/RectF;
    neg-int v13, v4

    int-to-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    int-to-float v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2    # "dRectF":Landroid/graphics/RectF;
    goto :goto_0

    .line 294
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0xb4

    if-ne v13, v14, :cond_5

    .line 295
    new-instance v2, Landroid/graphics/RectF;

    .end local v2    # "dRectF":Landroid/graphics/RectF;
    neg-int v13, v4

    int-to-float v13, v13

    neg-int v14, v3

    int-to-float v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2    # "dRectF":Landroid/graphics/RectF;
    goto :goto_0

    .line 296
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    const/16 v14, 0x10e

    if-ne v13, v14, :cond_6

    .line 297
    new-instance v2, Landroid/graphics/RectF;

    .end local v2    # "dRectF":Landroid/graphics/RectF;
    const/4 v13, 0x0

    neg-int v14, v3

    int-to-float v14, v14

    int-to-float v15, v4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v2    # "dRectF":Landroid/graphics/RectF;
    goto :goto_0

    .line 299
    :cond_6
    const-string v13, "TiImageView"

    const-string v14, "Invalid value for orientation. Cannot compute the base matrix for the image."

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 308
    .restart local v7    # "m":Landroid/graphics/Matrix;
    :cond_7
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .restart local v9    # "scaleType":Landroid/graphics/Matrix$ScaleToFit;
    goto :goto_1
.end method

.method private getViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 327
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 328
    return-object v0
.end method

.method private handleHideControls()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 235
    return-void
.end method

.method private handleScaleDown()V
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 228
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    neg-float v0, v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiImageView;->onViewChanged(F)V

    .line 230
    :cond_0
    return-void
.end method

.method private handleScaleUp()V
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 221
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleIncrement:F

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiImageView;->onViewChanged(F)V

    .line 223
    :cond_0
    return-void
.end method

.method private manageControls()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    .line 245
    :goto_0
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    .line 250
    :goto_1
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    goto :goto_1
.end method

.method private onViewChanged(F)V
    .locals 0
    .param p1, "dscale"    # F

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiImageView;->updateChangeMatrix(F)V

    .line 255
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->manageControls()V

    .line 256
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 257
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    .line 258
    return-void
.end method

.method private scheduleControlTimeout()V
    .locals 4

    .prologue
    const/16 v1, 0x1f4

    .line 333
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 335
    return-void
.end method

.method private updateChangeMatrix(F)V
    .locals 5
    .param p1, "dscale"    # F

    .prologue
    .line 317
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 318
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    add-float/2addr v0, p1

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 319
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMin:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 320
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    .line 321
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->changeMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    iget v2, p0, Lti/modules/titanium/ui/widget/TiImageView;->scaleFactor:F

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 322
    return-void
.end method

.method private updateScaleType()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    iget v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 436
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 449
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 450
    return-void

    .line 438
    :cond_1
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 440
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 441
    :cond_2
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableScale:Z

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 443
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 446
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method


# virtual methods
.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 199
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 195
    :pswitch_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->handleHideControls()V

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    const/4 v0, 0x1

    .line 205
    .local v0, "sendClick":Z
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->manageControls()V

    .line 209
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ZoomControls;->setVisibility(I)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->scheduleControlTimeout()V

    .line 213
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 216
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 407
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->computeBaseMatrix()V

    .line 408
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "parentLeft":I
    sub-int v2, p4, p2

    .line 412
    .local v2, "parentRight":I
    const/4 v3, 0x0

    .line 413
    .local v3, "parentTop":I
    sub-int v0, p5, p3

    .line 416
    .local v0, "parentBottom":I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 417
    iget-boolean v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v7}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 418
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v7}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v6

    .line 419
    .local v6, "zoomWidth":I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v7}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v5

    .line 420
    .local v5, "zoomHeight":I
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    sub-int v8, v2, v6

    sub-int v9, v0, v5

    invoke-virtual {v7, v8, v9, v2, v0}, Landroid/widget/ZoomControls;->layout(IIII)V

    .line 423
    .end local v5    # "zoomHeight":I
    .end local v6    # "zoomWidth":I
    :cond_0
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->proxy:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_1

    const/4 v4, 0x0

    .line 424
    .local v4, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 425
    return-void

    .line 423
    .end local v4    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    iget-object v7, p0, Lti/modules/titanium/ui/widget/TiImageView;->proxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object v4, v7

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 358
    const/4 v6, 0x0

    .line 359
    .local v6, "maxWidth":I
    const/4 v5, 0x0

    .line 363
    .local v5, "maxHeight":I
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    if-nez v8, :cond_3

    .line 364
    :cond_0
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 365
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 366
    const/high16 v0, 0x3f800000    # 1.0f

    .line 367
    .local v0, "aspectRatio":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 368
    .local v7, "w":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 370
    .local v2, "h":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 371
    .local v3, "ih":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 372
    .local v4, "iw":I
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 373
    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v9, v3

    mul-float/2addr v8, v9

    int-to-float v9, v4

    div-float v0, v8, v9

    .line 376
    :cond_1
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    if-eqz v8, :cond_2

    .line 377
    move v6, v7

    .line 378
    int-to-float v8, v7

    mul-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 380
    :cond_2
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    if-eqz v8, :cond_3

    .line 381
    move v5, v2

    .line 382
    int-to-float v8, v2

    div-float/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 389
    .end local v0    # "aspectRatio":F
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "h":I
    .end local v3    # "ih":I
    .end local v4    # "iw":I
    .end local v7    # "w":I
    :cond_3
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, p1, p2}, Lti/modules/titanium/ui/widget/TiImageView;->measureChild(Landroid/view/View;II)V

    .line 391
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 392
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 395
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v8, :cond_4

    .line 396
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v8, p1, p2}, Lti/modules/titanium/ui/widget/TiImageView;->measureChild(Landroid/view/View;II)V

    .line 397
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v8}, Landroid/widget/ZoomControls;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 398
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v8}, Landroid/widget/ZoomControls;->getMeasuredHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 401
    :cond_4
    invoke-static {v6, p1}, Lti/modules/titanium/ui/widget/TiImageView;->resolveSize(II)I

    move-result v8

    invoke-static {v5, p2}, Lti/modules/titanium/ui/widget/TiImageView;->resolveSize(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lti/modules/titanium/ui/widget/TiImageView;->setMeasuredDimension(II)V

    .line 402
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "handled":Z
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->zoomControls:Landroid/widget/ZoomControls;

    invoke-virtual {v1, p1}, Landroid/widget/ZoomControls;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 345
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 347
    :cond_1
    if-nez v0, :cond_2

    .line 348
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 350
    :cond_2
    return v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 429
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 430
    return-void
.end method

.method public setEnableScale(Z)V
    .locals 0
    .param p1, "enableScale"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableScale:Z

    .line 165
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 166
    return-void
.end method

.method public setEnableZoomControls(Z)V
    .locals 0
    .param p1, "enableZoomControls"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->enableZoomControls:Z

    .line 171
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 172
    return-void
.end method

.method public setHeightDefined(Z)V
    .locals 0
    .param p1, "defined"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewHeightDefined:Z

    .line 461
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 462
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 183
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 188
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 189
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 466
    iput p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->orientation:I

    .line 467
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 468
    return-void
.end method

.method public setWidthDefined(Z)V
    .locals 0
    .param p1, "defined"    # Z

    .prologue
    .line 454
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiImageView;->viewWidthDefined:Z

    .line 455
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiImageView;->updateScaleType()V

    .line 456
    return-void
.end method
