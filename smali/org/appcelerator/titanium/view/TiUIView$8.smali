.class Lorg/appcelerator/titanium/view/TiUIView$8;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->registerTouchEvents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pointersDown:I

.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;

.field final synthetic val$scaleDetector:Landroid/view/ScaleGestureDetector;

.field final synthetic val$touchable:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/ScaleGestureDetector;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1492
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    iput-object p3, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$touchable:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 1498
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v7, v7, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    const-string v8, "x"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v7, v7, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    const-string v8, "y"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    :cond_0
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v7, v7, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v8, "pinch"

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1503
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1504
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1505
    iput v6, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    .line 1553
    :goto_0
    return v5

    .line 1510
    :cond_1
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v7, v7, Lorg/appcelerator/titanium/view/TiUIView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1511
    .local v0, "handled":Z
    if-eqz v0, :cond_2

    .line 1512
    iput v6, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    goto :goto_0

    .line 1516
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 1517
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v5}, Lorg/appcelerator/titanium/view/TiUIView;->access$100(Lorg/appcelerator/titanium/view/TiUIView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1518
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/view/TiUIView;->access$102(Lorg/appcelerator/titanium/view/TiUIView;Z)Z

    .line 1519
    iput v6, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    .line 1543
    :cond_3
    :goto_1
    invoke-static {}, Lorg/appcelerator/titanium/view/TiUIView;->access$200()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1544
    .local v2, "motionEvent":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1545
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v5, v5, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1546
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v7, p2}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    :cond_4
    move v5, v6

    .line 1553
    goto :goto_0

    .line 1521
    .end local v2    # "motionEvent":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1522
    .local v1, "index":I
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1523
    .local v3, "x":F
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1524
    .local v4, "y":F
    cmpl-float v5, v3, v12

    if-ltz v5, :cond_3

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$touchable:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_3

    cmpl-float v5, v4, v12

    if-ltz v5, :cond_3

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$touchable:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    .line 1526
    iget v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    goto :goto_1

    .line 1529
    .end local v1    # "index":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 1531
    iget-object v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iget-object v7, v7, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v8, "twofingertap"

    invoke-virtual {v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    if-ne v7, v5, :cond_7

    .line 1532
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1533
    .restart local v3    # "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1534
    .restart local v4    # "y":F
    cmpl-float v5, v3, v12

    if-ltz v5, :cond_7

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$touchable:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_7

    cmpl-float v5, v4, v12

    if-ltz v5, :cond_7

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->val$touchable:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    .line 1536
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    const-string v7, "twofingertap"

    iget-object v8, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v8, p2}, Lorg/appcelerator/titanium/view/TiUIView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 1539
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_7
    iput v6, p0, Lorg/appcelerator/titanium/view/TiUIView$8;->pointersDown:I

    goto/16 :goto_1
.end method
