.class Lorg/appcelerator/titanium/view/TiUIView$6;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TiUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerTouchEvents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field minStartSpan:F

.field minTimeDelta:J

.field startSpan:F

.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 2

    .prologue
    .line 1393
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 1395
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->minTimeDelta:J

    .line 1396
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->minStartSpan:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "sgd"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1402
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->minTimeDelta:J

    long-to-float v1, v2

    .line 1407
    .local v1, "timeDelta":F
    :goto_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiUIView;->access$100(Lorg/appcelerator/titanium/view/TiUIView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1408
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    iget v3, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->startSpan:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1409
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/view/TiUIView;->access$102(Lorg/appcelerator/titanium/view/TiUIView;Z)Z

    .line 1413
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v2}, Lorg/appcelerator/titanium/view/TiUIView;->access$100(Lorg/appcelerator/titanium/view/TiUIView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1414
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1415
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "scale"

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->startSpan:F

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    const-string v2, "velocity"

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    const-string v2, "source"

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v3, v3, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v3, "pinch"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v2

    .line 1421
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    return v2

    .line 1402
    .end local v1    # "timeDelta":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v1, v2

    goto :goto_0

    .line 1421
    .restart local v1    # "timeDelta":F
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "sgd"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1427
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->minStartSpan:F

    :goto_0
    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView$6;->startSpan:F

    .line 1428
    const/4 v0, 0x1

    return v0

    .line 1427
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    goto :goto_0
.end method
