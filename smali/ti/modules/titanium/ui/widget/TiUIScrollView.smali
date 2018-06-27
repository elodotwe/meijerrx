.class public Lti/modules/titanium/ui/widget/TiUIScrollView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;,
        Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIScrollView"

.field public static final TYPE_HORIZONTAL:I = 0x1

.field public static final TYPE_VERTICAL:I


# instance fields
.field private mScrollingEnabled:Z

.field private offsetX:I

.field private offsetY:I

.field private setInitialOffset:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 38
    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 39
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    .line 40
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    .line 375
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 376
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 377
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIScrollView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 32
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    return v0
.end method

.method static synthetic access$202(Lti/modules/titanium/ui/widget/TiUIScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->setInitialOffset:Z

    return p1
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIScrollView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 32
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    return v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIScrollView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollView;

    .prologue
    .line 32
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    return v0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 603
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 605
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->requestLayout()V

    .line 607
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 611
    :cond_0
    return-void
.end method

.method public getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 547
    .local v0, "nativeView":Landroid/view/View;
    instance-of v1, v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v1, :cond_0

    .line 548
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v0    # "nativeView":Landroid/view/View;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->access$600(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    .line 550
    :goto_0
    return-object v1

    .restart local v0    # "nativeView":Landroid/view/View;
    :cond_0
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v0    # "nativeView":Landroid/view/View;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->access$700(Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public getScrollingEnabled()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    return v0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 21
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 433
    const/4 v12, 0x0

    .line 434
    .local v12, "showHorizontalScrollBar":Z
    const/4 v13, 0x0

    .line 436
    .local v13, "showVerticalScrollBar":Z
    const-string v18, "scrollingEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 437
    const-string v18, "scrollingEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setScrollingEnabled(Ljava/lang/Object;)V

    .line 440
    :cond_0
    const-string v18, "showHorizontalScrollIndicator"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 441
    const-string v18, "showHorizontalScrollIndicator"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v12

    .line 443
    :cond_1
    const-string v18, "showVerticalScrollIndicator"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 444
    const-string v18, "showVerticalScrollIndicator"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v13

    .line 447
    :cond_2
    if-eqz v12, :cond_3

    if-eqz v13, :cond_3

    .line 448
    const-string v18, "TiUIScrollView"

    const-string v19, "Both scroll bars cannot be shown. Defaulting to vertical shown"

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v12, 0x0

    .line 452
    :cond_3
    const-string v18, "contentOffset"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 453
    const-string v18, "contentOffset"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 454
    .local v9, "offset":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(Ljava/lang/Object;)V

    .line 457
    .end local v9    # "offset":Ljava/lang/Object;
    :cond_4
    const/4 v14, 0x0

    .line 458
    .local v14, "type":I
    const/4 v7, 0x0

    .line 460
    .local v7, "deduced":Z
    const-string v18, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "contentWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 461
    const-string v18, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 462
    .local v16, "width":Ljava/lang/Object;
    const-string v18, "contentWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 463
    .local v6, "contentWidth":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    if-eqz v13, :cond_6

    .line 464
    :cond_5
    const/4 v14, 0x0

    .line 465
    const/4 v7, 0x1

    .line 470
    .end local v6    # "contentWidth":Ljava/lang/Object;
    .end local v16    # "width":Ljava/lang/Object;
    :cond_6
    const-string v18, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "contentHeight"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 471
    const-string v18, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 472
    .local v8, "height":Ljava/lang/Object;
    const-string v18, "contentHeight"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 473
    .local v5, "contentHeight":Ljava/lang/Object;
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    if-eqz v12, :cond_8

    .line 474
    :cond_7
    const/4 v14, 0x1

    .line 475
    const/4 v7, 0x1

    .line 480
    .end local v5    # "contentHeight":Ljava/lang/Object;
    .end local v8    # "height":Ljava/lang/Object;
    :cond_8
    const-string v18, "scrollType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 481
    const-string v18, "scrollType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 482
    .local v10, "scrollType":Ljava/lang/Object;
    const-string v18, "vertical"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 483
    const/4 v14, 0x0

    .line 497
    .end local v10    # "scrollType":Ljava/lang/Object;
    :cond_9
    :goto_0
    const/4 v15, 0x0

    .line 498
    .local v15, "view":Landroid/view/View;
    sget-object v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 500
    .local v3, "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    const-string v18, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    const-string v18, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "vertical"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 501
    sget-object v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 506
    :cond_a
    :goto_1
    packed-switch v14, :pswitch_data_0

    .line 514
    const-string v18, "TiUIScrollView"

    const-string v19, "creating vertical scroll view"

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v15, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v15    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .restart local v15    # "view":Landroid/view/View;
    move-object/from16 v18, v15

    .line 516
    check-cast v18, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    invoke-virtual/range {v18 .. v18}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v11

    .line 519
    .local v11, "scrollViewLayout":Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    :goto_2
    const-string v18, "canCancelEvents"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 520
    const-string v18, "canCancelEvents"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setCanCancelEvents(Z)V

    .line 523
    :cond_b
    const-string v18, "contentWidth"

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->access$500(Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;Ljava/lang/String;)I

    move-result v18

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const/4 v4, 0x1

    .line 524
    .local v4, "autoContentWidth":Z
    :goto_3
    if-nez v4, :cond_13

    const/16 v17, 0x1

    .line 525
    .local v17, "wrap":Z
    :goto_4
    const-string v18, "horizontalWrap"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    if-eqz v17, :cond_c

    .line 526
    const-string v18, "horizontalWrap"

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v17

    .line 528
    :cond_c
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setEnableHorizontalWrap(Z)V

    .line 530
    const-string v18, "overScrollMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 531
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    .line 532
    const-string v18, "overScrollMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setOverScrollMode(I)V

    .line 536
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setNativeView(Landroid/view/View;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 541
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 542
    return-void

    .line 484
    .end local v3    # "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .end local v4    # "autoContentWidth":Z
    .end local v11    # "scrollViewLayout":Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    .end local v15    # "view":Landroid/view/View;
    .end local v17    # "wrap":Z
    .restart local v10    # "scrollType":Ljava/lang/Object;
    :cond_e
    const-string v18, "horizontal"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 485
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 487
    :cond_f
    const-string v18, "TiUIScrollView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "scrollType value \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' is invalid. Only \'vertical\' and \'horizontal\' are supported."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 490
    .end local v10    # "scrollType":Ljava/lang/Object;
    :cond_10
    if-nez v7, :cond_9

    if-nez v14, :cond_9

    .line 491
    const-string v18, "TiUIScrollView"

    const-string v19, "Scroll direction could not be determined based on the provided view properties. Default VERTICAL scroll direction being used. Use the \'scrollType\' property to explicitly set the scrolling direction."

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    .restart local v3    # "arrangement":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .restart local v15    # "view":Landroid/view/View;
    :cond_11
    const-string v18, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "layout"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "horizontal"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 503
    sget-object v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto/16 :goto_1

    .line 508
    :pswitch_0
    const-string v18, "TiUIScrollView"

    const-string v19, "creating horizontal scroll view"

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v15, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v15    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollView;Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V

    .restart local v15    # "view":Landroid/view/View;
    move-object/from16 v18, v15

    .line 510
    check-cast v18, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    invoke-virtual/range {v18 .. v18}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v11

    .line 511
    .restart local v11    # "scrollViewLayout":Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;
    goto/16 :goto_2

    .line 523
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 524
    .restart local v4    # "autoContentWidth":Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 403
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string v2, "TiUIScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    const-string v2, "contentOffset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setContentOffset(Ljava/lang/Object;)V

    .line 408
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollTo(II)V

    .line 410
    :cond_1
    const-string v2, "canCancelEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, "view":Landroid/view/View;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    .local v0, "canCancelEvents":Z
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v2, :cond_5

    .line 414
    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setCanCancelEvents(Z)V

    .line 419
    .end local v0    # "canCancelEvents":Z
    :cond_2
    :goto_0
    const-string v2, "scrollingEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setScrollingEnabled(Ljava/lang/Object;)V

    .line 422
    :cond_3
    const-string v2, "overScrollMode"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 423
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    .line 424
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p3, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 427
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 428
    return-void

    .line 415
    .restart local v0    # "canCancelEvents":Z
    .restart local v1    # "view":Landroid/view/View;
    :cond_5
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v2, :cond_2

    .line 416
    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;->setCanCancelEvents(Z)V

    goto :goto_0
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 616
    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 618
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v1

    .line 620
    .local v1, "nv":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 621
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 622
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 623
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 627
    .end local v0    # "cv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resort()V
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getLayout()Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    .line 633
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v1, :cond_0

    .line 634
    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resort()V

    .line 636
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 584
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 585
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->computeScroll()V

    .line 586
    return-void
.end method

.method public scrollToBottom()V
    .locals 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 591
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 592
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    .line 593
    .local v0, "scrollView":Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->fullScroll(I)Z

    .line 598
    .end local v0    # "scrollView":Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    instance-of v2, v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 595
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    .line 596
    .local v0, "scrollView":Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;
    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->fullScroll(I)Z

    goto :goto_0
.end method

.method public setContentOffset(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 381
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 382
    .local v0, "offset":Lorg/appcelerator/kroll/KrollDict;
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    .line 383
    iput p2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 384
    const-string v1, "x"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "y"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "contentOffset"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public setContentOffset(Ljava/lang/Object;)V
    .locals 3
    .param p1, "hashMap"    # Ljava/lang/Object;

    .prologue
    .line 391
    instance-of v1, p1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 392
    check-cast v0, Ljava/util/HashMap;

    .line 393
    .local v0, "contentOffset":Ljava/util/HashMap;
    const-string v1, "x"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetX:I

    .line 394
    const-string v1, "y"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->offsetY:I

    .line 398
    .end local v0    # "contentOffset":Ljava/util/HashMap;
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v1, "TiUIScrollView"

    const-string v2, "ContentOffset must be an instance of HashMap"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setOnClickListener(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 557
    move-object v0, p1

    .line 559
    .local v0, "targetView":Landroid/view/View;
    instance-of v1, p1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;->access$600(Lti/modules/titanium/ui/widget/TiUIScrollView$TiVerticalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    .line 562
    :cond_0
    instance-of v1, p1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->nativeView:Landroid/view/View;

    check-cast v1, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;->access$700(Lti/modules/titanium/ui/widget/TiUIScrollView$TiHorizontalScrollView;)Lti/modules/titanium/ui/widget/TiUIScrollView$TiScrollViewLayout;

    move-result-object v0

    .line 565
    :cond_1
    invoke-super {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setOnClickListener(Landroid/view/View;)V

    .line 566
    return-void
.end method

.method public setScrollingEnabled(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 571
    :try_start_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollView;->mScrollingEnabled:Z

    goto :goto_0
.end method
