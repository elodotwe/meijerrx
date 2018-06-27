.class public final Lcom/google/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x6

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final frameColor:I

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I

.field private showRectangle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 200
    iput-boolean v2, p0, Lcom/google/zxing/client/android/ViewfinderView;->showRectangle:Z

    .line 67
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "viewfinder_mask"

    invoke-static {v1}, Lti/barcode/RHelper;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    .line 70
    const-string v1, "result_view"

    invoke-static {v1}, Lti/barcode/RHelper;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    .line 71
    const-string v1, "viewfinder_frame"

    invoke-static {v1}, Lti/barcode/RHelper;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->frameColor:I

    .line 72
    const-string v1, "viewfinder_laser"

    invoke-static {v1}, Lti/barcode/RHelper;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->laserColor:I

    .line 73
    const-string v1, "possible_result_points"

    invoke-static {v1}, Lti/barcode/RHelper;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 190
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    monitor-enter v0

    .line 191
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 193
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 195
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 197
    :cond_0
    monitor-exit v0

    .line 198
    return-void

    .line 197
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 185
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 186
    return-void
.end method

.method public drawViewfinder()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 171
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 176
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 86
    .local v12, "frame":Landroid/graphics/Rect;
    if-nez v12, :cond_0

    .line 167
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v23

    .line 90
    .local v23, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    .line 93
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->showRectangle:Z

    if-eqz v2, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v23

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move/from16 v0, v23

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    move/from16 v0, v23

    int-to-float v5, v0

    int-to-float v6, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 107
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->showRectangle:Z

    if-eqz v2, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->frameColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 113
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->laserColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v3, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 119
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int v17, v2, v3

    .line 120
    .local v17, "middle":I
    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    add-int/lit8 v2, v17, -0x1

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    add-int/lit8 v2, v17, 0x2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 123
    .end local v17    # "middle":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v19

    .line 124
    .local v19, "previewFrame":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 125
    .local v21, "scaleX":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v22, v2, v3

    .line 127
    .local v22, "scaleY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 128
    .local v11, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 129
    .local v10, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 130
    .local v13, "frameLeft":I
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 131
    .local v14, "frameTop":I
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 146
    :goto_2
    if-eqz v10, :cond_8

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    monitor-enter v10

    .line 150
    const/high16 v20, 0x40400000    # 3.0f

    .line 151
    .local v20, "radius":F
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/ResultPoint;

    .line 152
    .local v18, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    mul-float v2, v2, v21

    float-to-int v2, v2

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v22

    float-to-int v3, v3

    add-int/2addr v3, v14

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 156
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 134
    .end local v20    # "radius":F
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 135
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    monitor-enter v11

    .line 139
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/zxing/ResultPoint;

    .line 140
    .restart local v18    # "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    mul-float v2, v2, v21

    float-to-int v2, v2

    add-int/2addr v2, v13

    int-to-float v2, v2

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    mul-float v3, v3, v22

    float-to-int v3, v3

    add-int/2addr v3, v14

    int-to-float v3, v3

    const/high16 v4, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 144
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_1
    move-exception v2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 156
    .restart local v20    # "radius":F
    :cond_7
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "radius":F
    :cond_8
    const-wide/16 v4, 0x50

    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v6, v2, -0x6

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v7, v2, -0x6

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v2, 0x6

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v9, v2, 0x6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0
.end method

.method public setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/google/zxing/client/android/camera/CameraManager;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 81
    return-void
.end method

.method public setShowRectangle(Z)V
    .locals 0
    .param p1, "showRectangle"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/google/zxing/client/android/ViewfinderView;->showRectangle:Z

    .line 203
    return-void
.end method
