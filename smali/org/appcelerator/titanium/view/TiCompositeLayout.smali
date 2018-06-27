.class public Lorg/appcelerator/titanium/view/TiCompositeLayout;
.super Landroid/view/ViewGroup;
.source "TiCompositeLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;,
        Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    }
.end annotation


# static fields
.field private static final HAS_SIZE_FILL_CONFLICT:I = 0x1

.field public static final NOT_SET:I = -0x80000000

.field private static final NO_SIZE_FILL_CONFLICT:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "TiCompositeLayout"


# instance fields
.field protected arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

.field private enableHorizontalWrap:Z

.field private horizontalLayoutCurrentLeft:I

.field private horizontalLayoutLastIndexBeforeWrap:I

.field private horizontalLayoutLineHeight:I

.field private horizontalLayoutTopBuffer:I

.field private horiztonalLayoutPreviousRight:I

.field private needsSort:Z

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

.field private viewSorter:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 108
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    invoke-direct {p0, p1, v0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arrangement"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .prologue
    .line 93
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arrangement"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;
    .param p3, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 62
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 63
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 64
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 65
    iput-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    .line 66
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    .line 67
    iput v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    .line 120
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 121
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;

    invoke-direct {v1, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$1;-><init>(Lorg/appcelerator/titanium/view/TiCompositeLayout;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    .line 167
    invoke-direct {p0, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setNeedsSort(Z)V

    .line 168
    invoke-virtual {p0, p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    .line 170
    return-void
.end method

.method private calculateHeightFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I
    .locals 7
    .param p1, "params"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .param p2, "parentTop"    # I
    .param p3, "parentBottom"    # I
    .param p4, "parentHeight"    # I
    .param p5, "measuredHeight"    # I

    .prologue
    .line 436
    move v2, p5

    .line 439
    .local v2, "height":I
    iget-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    if-eqz v5, :cond_1

    :cond_0
    move v3, v2

    .line 457
    .end local v2    # "height":I
    .local v3, "height":I
    :goto_0
    return v3

    .line 443
    .end local v3    # "height":I
    .restart local v2    # "height":I
    :cond_1
    iget-object v4, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 444
    .local v4, "top":Lorg/appcelerator/titanium/TiDimension;
    iget-object v1, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    .line 445
    .local v1, "centerY":Lorg/appcelerator/titanium/TiDimension;
    iget-object v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 447
    .local v0, "bottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v4, :cond_4

    .line 448
    if-eqz v1, :cond_3

    .line 449
    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v5, p2

    invoke-virtual {v4, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v2, v5, 0x2

    :cond_2
    :goto_1
    move v3, v2

    .line 457
    .end local v2    # "height":I
    .restart local v3    # "height":I
    goto :goto_0

    .line 450
    .end local v3    # "height":I
    .restart local v2    # "height":I
    :cond_3
    if-eqz v0, :cond_2

    .line 451
    invoke-virtual {v4, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p4, v5

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int v2, v5, v6

    goto :goto_1

    .line 453
    :cond_4
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v2, v5, 0x2

    goto :goto_1
.end method

.method private calculateWidthFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I
    .locals 7
    .param p1, "params"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .param p2, "parentLeft"    # I
    .param p3, "parentRight"    # I
    .param p4, "parentWidth"    # I
    .param p5, "measuredWidth"    # I

    .prologue
    .line 409
    move v3, p5

    .line 411
    .local v3, "width":I
    iget-object v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    if-eqz v5, :cond_1

    :cond_0
    move v4, v3

    .line 428
    .end local v3    # "width":I
    .local v4, "width":I
    :goto_0
    return v4

    .line 415
    .end local v4    # "width":I
    .restart local v3    # "width":I
    :cond_1
    iget-object v1, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 416
    .local v1, "left":Lorg/appcelerator/titanium/TiDimension;
    iget-object v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 417
    .local v0, "centerX":Lorg/appcelerator/titanium/TiDimension;
    iget-object v2, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 419
    .local v2, "right":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v1, :cond_4

    .line 420
    if-eqz v0, :cond_3

    .line 421
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, p2

    mul-int/lit8 v3, v5, 0x2

    :cond_2
    :goto_1
    move v4, v3

    .line 428
    .end local v3    # "width":I
    .restart local v4    # "width":I
    goto :goto_0

    .line 422
    .end local v4    # "width":I
    .restart local v3    # "width":I
    :cond_3
    if-eqz v2, :cond_2

    .line 423
    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p4, v5

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int v3, v5, v6

    goto :goto_1

    .line 425
    :cond_4
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 426
    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v5

    sub-int v5, p3, v5

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v3, v5, 0x2

    goto :goto_1
.end method

.method private computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[II)V
    .locals 15
    .param p1, "params"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .param p2, "measuredWidth"    # I
    .param p3, "measuredHeight"    # I
    .param p4, "layoutRight"    # I
    .param p5, "layoutTop"    # I
    .param p6, "layoutBottom"    # I
    .param p7, "hpos"    # [I
    .param p8, "vpos"    # [I
    .param p9, "currentIndex"    # I

    .prologue
    .line 635
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 636
    .local v11, "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 637
    .local v13, "optionRight":Lorg/appcelerator/titanium/TiDimension;
    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    iget v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    add-int v10, v2, v3

    .line 638
    .local v10, "left":I
    const/4 v12, 0x0

    .line 639
    .local v12, "optionLeftValue":I
    if-eqz v11, :cond_0

    .line 640
    invoke-virtual {v11, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v12

    .line 641
    add-int/2addr v10, v12

    .line 643
    :cond_0
    if-nez v13, :cond_5

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    .line 647
    iget-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    if-eqz v2, :cond_6

    .line 648
    move/from16 v14, p2

    .line 653
    .local v14, "right":I
    :goto_1
    iget-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    add-int/2addr v2, v14

    move/from16 v0, p4

    if-gt v2, v0, :cond_1

    move/from16 v0, p4

    if-lt v10, v0, :cond_7

    .line 655
    :cond_1
    move v10, v12

    .line 656
    add-int v14, p2, v10

    .line 657
    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 658
    const/4 v2, 0x0

    iput v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 664
    :cond_2
    :goto_2
    const/4 v2, 0x0

    aput v10, p7, v2

    .line 665
    const/4 v2, 0x1

    aput v14, p7, v2

    .line 666
    iput v14, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 668
    iget-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-eqz v2, :cond_4

    .line 670
    if-eqz p9, :cond_3

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    move/from16 v0, p9

    if-le v0, v2, :cond_3

    .line 671
    move/from16 v0, p4

    move/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->updateRowForHorizontalWrap(II)V

    .line 673
    :cond_3
    iget v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    iget v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    add-int v5, v2, v3

    iget v6, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->calculateHeightFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I

    move-result p3

    .line 675
    iget v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    move/from16 p6, v0

    .line 679
    :cond_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object v2, p0

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-static/range {v2 .. v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 682
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p8, v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v3, v4

    aput v3, p8, v2

    .line 683
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, p8, v3

    iget v4, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    add-int/2addr v3, v4

    aput v3, p8, v2

    .line 684
    return-void

    .line 643
    .end local v14    # "right":I
    :cond_5
    invoke-virtual {v13, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    goto/16 :goto_0

    .line 650
    :cond_6
    add-int v14, v10, p2

    .restart local v14    # "right":I
    goto/16 :goto_1

    .line 659
    :cond_7
    iget-boolean v2, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    if-eqz v2, :cond_2

    .line 661
    move/from16 v0, p4

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_2
.end method

.method public static computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V
    .locals 10
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "leftOrTop"    # Lorg/appcelerator/titanium/TiDimension;
    .param p2, "optionCenter"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "rightOrBottom"    # Lorg/appcelerator/titanium/TiDimension;
    .param p4, "measuredSize"    # I
    .param p5, "layoutPosition0"    # I
    .param p6, "layoutPosition1"    # I
    .param p7, "pos"    # [I

    .prologue
    .line 593
    sub-int v0, p6, p5

    .line 594
    .local v0, "dist":I
    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    .line 597
    .local v2, "leftOrTopPixels":I
    const/4 v5, 0x0

    add-int v6, p5, v2

    aput v6, p7, v5

    .line 598
    const/4 v5, 0x1

    add-int v6, p5, v2

    add-int/2addr v6, p4

    aput v6, p7, v5

    .line 615
    .end local v2    # "leftOrTopPixels":I
    :goto_0
    return-void

    .line 599
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_1

    .line 601
    div-int/lit8 v1, p4, 0x2

    .line 602
    .local v1, "halfSize":I
    const/4 v5, 0x0

    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, p5

    sub-int/2addr v6, v1

    aput v6, p7, v5

    .line 603
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, p7, v6

    add-int/2addr v6, p4

    aput v6, p7, v5

    goto :goto_0

    .line 604
    .end local v1    # "halfSize":I
    :cond_1
    if-eqz p3, :cond_2

    .line 606
    invoke-virtual {p3, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    .line 607
    .local v4, "rightOrBottomPixels":I
    const/4 v5, 0x0

    sub-int v6, v0, v4

    sub-int/2addr v6, p4

    aput v6, p7, v5

    .line 608
    const/4 v5, 0x1

    sub-int v6, v0, v4

    aput v6, p7, v5

    goto :goto_0

    .line 611
    .end local v4    # "rightOrBottomPixels":I
    :cond_2
    sub-int v5, v0, p4

    div-int/lit8 v3, v5, 0x2

    .line 612
    .local v3, "offset":I
    const/4 v5, 0x0

    add-int v6, p5, v3

    aput v6, p7, v5

    .line 613
    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, p7, v6

    add-int/2addr v6, p4

    aput v6, p7, v5

    goto :goto_0
.end method

.method private computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;II[II)V
    .locals 3
    .param p1, "currentHeight"    # I
    .param p2, "optionTop"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "measuredHeight"    # I
    .param p4, "layoutTop"    # I
    .param p5, "pos"    # [I
    .param p6, "maxBottom"    # I

    .prologue
    .line 620
    add-int v1, p4, p1

    .line 621
    .local v1, "top":I
    if-eqz p2, :cond_0

    .line 622
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 626
    :cond_0
    add-int v2, v1, p3

    invoke-static {v2, p6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 627
    .local v0, "bottom":I
    const/4 v2, 0x0

    aput v1, p5, v2

    .line 628
    const/4 v2, 0x1

    aput v0, p5, v2

    .line 629
    return-void
.end method

.method private static getAsPercentageValue(DI)I
    .locals 4
    .param p0, "percentage"    # D
    .param p2, "value"    # I

    .prologue
    .line 210
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p0, v0

    int-to-double v2, p2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private hasSizeFillConflict(Landroid/view/View;[IZZZ)Z
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "conflicts"    # [I
    .param p3, "firstIteration"    # Z
    .param p4, "hasFixedWidthParent"    # Z
    .param p5, "hasFixedHeightParent"    # Z

    .prologue
    .line 722
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v0, :cond_a

    move-object v6, p1

    .line 723
    check-cast v6, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 724
    .local v6, "currentLayout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 727
    .local v7, "currentParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    if-eqz p3, :cond_1

    iget-boolean v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-nez v0, :cond_0

    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p2, v0

    .line 730
    :cond_1
    if-eqz p3, :cond_3

    iget-boolean v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-nez v0, :cond_2

    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v0, :cond_3

    .line 731
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x2

    aput v1, p2, v0

    .line 738
    :cond_3
    iget-boolean v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v0, :cond_4

    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    if-nez p4, :cond_4

    .line 739
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, p2, v0

    .line 741
    :cond_4
    iget-boolean v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-eqz v0, :cond_5

    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_5

    if-nez p5, :cond_5

    .line 742
    const/4 v0, 0x1

    const/4 v1, 0x1

    aput v1, p2, v0

    .line 746
    :cond_5
    const/4 v0, 0x0

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_6

    const/4 v0, 0x1

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_6

    .line 747
    const/4 v0, 0x1

    .line 772
    .end local v6    # "currentLayout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .end local v7    # "currentParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :goto_0
    return v0

    .line 750
    .restart local v6    # "currentLayout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .restart local v7    # "currentParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_6
    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v0

    if-nez v0, :cond_7

    .line 751
    const/4 p4, 0x1

    .line 753
    :cond_7
    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v0, :cond_8

    iget-object v0, v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v0

    if-nez v0, :cond_8

    .line 754
    const/4 p5, 0x1

    .line 758
    :cond_8
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_a

    .line 759
    invoke-virtual {v6, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->hasSizeFillConflict(Landroid/view/View;[IZZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 760
    const/4 v0, 0x1

    goto :goto_0

    .line 758
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 766
    .end local v6    # "currentLayout":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    .end local v7    # "currentParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v8    # "i":I
    :cond_a
    if-eqz p3, :cond_b

    const/4 v0, 0x0

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_b

    .line 767
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput v1, p2, v0

    .line 769
    :cond_b
    if-eqz p3, :cond_c

    const/4 v0, 0x1

    aget v0, p2, v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_c

    .line 770
    const/4 v0, 0x1

    const/4 v1, 0x2

    aput v1, p2, v0

    .line 772
    :cond_c
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNeedsSort(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 871
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    :cond_0
    const/4 p1, 0x0

    .line 874
    :cond_1
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    .line 875
    return-void
.end method

.method private updateRowForHorizontalWrap(II)V
    .locals 7
    .param p1, "maxRight"    # I
    .param p2, "currentIndex"    # I

    .prologue
    .line 688
    const/4 v4, 0x0

    .line 689
    .local v4, "rowWidth":I
    const/4 v3, 0x0

    .line 690
    .local v3, "rowHeight":I
    const/4 v1, 0x0

    .line 691
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getHeight()I

    move-result v2

    .line 692
    .local v2, "parentHeight":I
    const/4 v5, 0x0

    iput v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 694
    move v1, p2

    :goto_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 695
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 697
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 698
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v0, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v6

    add-int v3, v5, v6

    .line 700
    if-le v4, p1, :cond_0

    .line 701
    add-int/lit8 v5, v1, -0x1

    iput v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    .line 717
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-void

    .line 704
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    if-ne v4, p1, :cond_3

    .line 713
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    if-ge v5, v3, :cond_2

    .line 714
    iput v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 716
    :cond_2
    iput v1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    goto :goto_1

    .line 708
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    iget v5, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    if-ge v5, v3, :cond_4

    .line 709
    iput v3, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 694
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 199
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return v0
.end method

.method protected constrainChild(Landroid/view/View;IIII)V
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "wMode"    # I
    .param p4, "height"    # I
    .param p5, "hMode"    # I

    .prologue
    .line 343
    const/4 v7, 0x0

    .line 344
    .local v7, "hasFixedHeightParent":Z
    const/4 v6, 0x0

    .line 345
    .local v6, "hasFixedWidthParent":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 347
    .local v12, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v2, 0x2

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    .line 348
    .local v4, "sizeFillConflicts":[I
    const/4 v8, 0x0

    .line 351
    .local v8, "checkedForConflict":Z
    const/4 v9, -0x2

    .line 352
    .local v9, "childDimension":I
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_3

    .line 353
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_2

    if-lez p2, :cond_2

    .line 354
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    move/from16 v0, p2

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v9

    .line 371
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v13

    .line 372
    .local v13, "widthPadding":I
    invoke-static/range {p2 .. p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v2, v13, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v14

    .line 375
    .local v14, "widthSpec":I
    const/4 v9, -0x2

    .line 376
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_6

    .line 377
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_5

    if-lez p4, :cond_5

    .line 378
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    move/from16 v0, p4

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v9

    .line 394
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v10

    .line 395
    .local v10, "heightPadding":I
    invoke-static/range {p4 .. p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v2, v10, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 398
    .local v11, "heightSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, Landroid/view/View;->measure(II)V

    .line 402
    return-void

    .line 356
    .end local v10    # "heightPadding":I
    .end local v11    # "heightSpec":I
    .end local v13    # "widthPadding":I
    .end local v14    # "widthSpec":I
    :cond_2
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v9

    goto :goto_0

    .line 359
    :cond_3
    iget-boolean v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    if-eqz v2, :cond_4

    .line 360
    const/4 v9, -0x1

    goto :goto_0

    .line 363
    :cond_4
    const/4 v5, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->hasSizeFillConflict(Landroid/view/View;[IZZZ)Z

    .line 364
    const/4 v8, 0x1

    .line 365
    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 366
    const/4 v9, -0x1

    goto :goto_0

    .line 380
    .restart local v13    # "widthPadding":I
    .restart local v14    # "widthSpec":I
    :cond_5
    iget-object v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v9

    goto :goto_1

    .line 384
    :cond_6
    iget-boolean v2, v12, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-nez v2, :cond_7

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 385
    :cond_7
    const/4 v9, -0x1

    goto :goto_1

    .line 386
    :cond_8
    if-nez v8, :cond_1

    .line 387
    const/4 v5, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->hasSizeFillConflict(Landroid/view/View;[IZZZ)Z

    .line 388
    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 389
    const/4 v9, -0x1

    goto :goto_1

    .line 347
    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected getHeightMeasureSpec(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 780
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method protected getMeasuredHeight(II)I
    .locals 1
    .param p1, "maxHeight"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 467
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getMeasuredWidth(II)I
    .locals 1
    .param p1, "maxWidth"    # I
    .param p2, "widthSpec"    # I

    .prologue
    .line 462
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method protected getViewHeightPadding(Landroid/view/View;I)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentHeight"    # I

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 237
    .local v0, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 238
    .local v1, "padding":I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 245
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 252
    :cond_1
    :goto_1
    return v1

    .line 242
    :cond_2
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 249
    :cond_3
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected getViewWidthPadding(Landroid/view/View;I)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidth"    # I

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 216
    .local v0, "p":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 217
    .local v1, "padding":I
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 224
    :cond_0
    :goto_0
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v2, :cond_1

    .line 225
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->isUnitPercent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiDimension;->getValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getAsPercentageValue(DI)I

    move-result v2

    add-int/2addr v1, v2

    .line 231
    :cond_1
    :goto_1
    return v1

    .line 221
    :cond_2
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 228
    :cond_3
    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, p0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method protected getWidthMeasureSpec(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 776
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method protected isDefaultArrangement()Z
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHorizontalArrangement()Z
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalArrangement()Z
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    sget-object v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setNeedsSort(Z)V

    .line 185
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 186
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setNeedsSort(Z)V

    .line 192
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "TiCompositeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 34
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 473
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v22

    .line 475
    .local v22, "count":I
    const/16 v27, 0x0

    .line 476
    .local v27, "left":I
    const/4 v8, 0x0

    .line 477
    .local v8, "top":I
    sub-int v7, p4, p2

    .line 478
    .local v7, "right":I
    sub-int v9, p5, p3

    .line 480
    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->needsSort:Z

    if-eqz v3, :cond_2

    .line 481
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    .line 482
    const/4 v3, 0x1

    move/from16 v0, v22

    if-le v0, v3, :cond_1

    .line 483
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v12, v0, :cond_0

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 485
    .local v21, "child":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 487
    .local v4, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput v12, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->index:I

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 491
    .end local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v21    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->detachAllViewsFromParent()V

    .line 492
    const/4 v12, 0x0

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    .line 494
    .restart local v21    # "child":Landroid/view/View;
    add-int/lit8 v25, v12, 0x1

    .end local v12    # "i":I
    .local v25, "i":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move/from16 v12, v25

    .line 495
    .end local v25    # "i":I
    .restart local v12    # "i":I
    goto :goto_1

    .line 497
    .end local v12    # "i":I
    .end local v21    # "child":Landroid/view/View;
    .end local v26    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setNeedsSort(Z)V

    .line 501
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->viewSorter:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    .line 503
    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 504
    .local v10, "horizontal":[I
    const/4 v3, 0x2

    new-array v11, v3, [I

    .line 506
    .local v11, "vertical":[I
    const/16 v24, 0x0

    .line 508
    .local v24, "currentHeight":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    move/from16 v0, v22

    if-ge v12, v0, :cond_c

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 510
    .restart local v21    # "child":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 512
    .restart local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v13, 0x8

    if-eq v3, v13, :cond_b

    .line 515
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 516
    .local v6, "childMeasuredHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 518
    .local v5, "childMeasuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 519
    if-nez v12, :cond_3

    .line 520
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutCurrentLeft:I

    .line 521
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLineHeight:I

    .line 522
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutTopBuffer:I

    .line 523
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horizontalLayoutLastIndexBeforeWrap:I

    .line 524
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->horiztonalLayoutPreviousRight:I

    .line 525
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->updateRowForHorizontalWrap(II)V

    :cond_3
    move-object/from16 v3, p0

    .line 527
    invoke-direct/range {v3 .. v12}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeHorizontalLayoutPosition(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIIII[I[II)V

    .line 549
    :cond_4
    :goto_3
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 550
    const-string v3, "TiCompositeLayout"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " {"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DEBUG_MODE"

    invoke-static {v3, v13, v14}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_5
    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v13, 0x0

    aget v13, v10, v13

    sub-int v30, v3, v13

    .line 555
    .local v30, "newWidth":I
    const/4 v3, 0x1

    aget v3, v11, v3

    const/4 v13, 0x0

    aget v13, v11, v13

    sub-int v28, v3, v13

    .line 558
    .local v28, "newHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v30

    if-ne v0, v3, :cond_6

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v28

    if-eq v0, v3, :cond_7

    .line 560
    :cond_6
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 561
    .local v31, "newWidthSpec":I
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 562
    .local v29, "newHeightSpec":I
    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 565
    .end local v29    # "newHeightSpec":I
    .end local v31    # "newWidthSpec":I
    :cond_7
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->isRootActivityAvailable()Z

    move-result v3

    if-nez v3, :cond_a

    .line 566
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v23

    .line 567
    .local v23, "currentActivity":Landroid/app/Activity;
    move-object/from16 v0, v23

    instance-of v3, v0, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v3, :cond_a

    .line 568
    check-cast v23, Lorg/appcelerator/titanium/TiLaunchActivity;

    .end local v23    # "currentActivity":Landroid/app/Activity;
    invoke-virtual/range {v23 .. v23}, Lorg/appcelerator/titanium/TiLaunchActivity;->isJSActivity()Z

    move-result v3

    if-nez v3, :cond_a

    .line 569
    const-string v3, "TiCompositeLayout"

    const-string v13, "The root activity is no longer available.  Skipping layout pass."

    const-string v14, "DEBUG_MODE"

    invoke-static {v3, v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .end local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v5    # "childMeasuredWidth":I
    .end local v6    # "childMeasuredHeight":I
    .end local v21    # "child":Landroid/view/View;
    .end local v28    # "newHeight":I
    .end local v30    # "newWidth":I
    :goto_4
    return-void

    .line 532
    .restart local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .restart local v5    # "childMeasuredWidth":I
    .restart local v6    # "childMeasuredHeight":I
    .restart local v21    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getHeight()I

    move-result v17

    move-object/from16 v13, p0

    move-object v14, v4

    move v15, v8

    move/from16 v16, v9

    move/from16 v18, v6

    invoke-direct/range {v13 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->calculateHeightFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I

    move-result v6

    .line 533
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getWidth()I

    move-result v17

    move-object/from16 v13, p0

    move-object v14, v4

    move/from16 v15, v27

    move/from16 v16, v7

    move/from16 v18, v5

    invoke-direct/range {v13 .. v18}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->calculateWidthFromPins(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;IIII)I

    move-result v5

    .line 535
    iget-object v14, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    iget-object v15, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v16, v0

    move-object/from16 v13, p0

    move/from16 v17, v5

    move/from16 v18, v27

    move/from16 v19, v7

    move-object/from16 v20, v10

    invoke-static/range {v13 .. v20}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 536
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 537
    iget-object v15, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v13, p0

    move/from16 v14, v24

    move/from16 v16, v6

    move/from16 v17, v8

    move-object/from16 v18, v11

    move/from16 v19, v9

    invoke-direct/range {v13 .. v19}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computeVerticalLayoutPosition(ILorg/appcelerator/titanium/TiDimension;II[II)V

    .line 540
    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v32, v0

    .line 541
    .local v32, "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v32, :cond_4

    .line 542
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int v24, v24, v3

    goto/16 :goto_3

    .line 545
    .end local v32    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_9
    iget-object v14, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    iget-object v15, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    iget-object v0, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v16, v0

    move-object/from16 v13, p0

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v20, v11

    invoke-static/range {v13 .. v20}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    goto/16 :goto_3

    .line 575
    .restart local v28    # "newHeight":I
    .restart local v30    # "newWidth":I
    :cond_a
    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v13, 0x0

    aget v13, v11, v13

    const/4 v14, 0x1

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v11, v15

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 577
    add-int v24, v24, v28

    .line 578
    iget-object v3, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v3, :cond_b

    .line 579
    iget-object v3, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    add-int v24, v24, v3

    .line 508
    .end local v5    # "childMeasuredWidth":I
    .end local v6    # "childMeasuredHeight":I
    .end local v28    # "newHeight":I
    .end local v30    # "newWidth":I
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 584
    .end local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v21    # "child":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_d

    const/16 v33, 0x0

    .line 585
    .local v33, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_5
    invoke-static/range {v33 .. v33}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto/16 :goto_4

    .line 584
    .end local v33    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v33, v3

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 258
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildCount()I

    move-result v9

    .line 259
    .local v9, "childCount":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    .line 260
    .local v21, "wFromSpec":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 261
    .local v12, "hFromSpec":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v22

    .line 262
    .local v22, "wSuggested":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v13

    .line 263
    .local v13, "hSuggested":I
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 264
    .local v5, "w":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 265
    .local v6, "wMode":I
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 266
    .local v7, "h":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 268
    .local v8, "hMode":I
    const/16 v18, 0x0

    .line 269
    .local v18, "maxWidth":I
    const/16 v17, 0x0

    .line 272
    .local v17, "maxHeight":I
    const/4 v15, 0x0

    .line 273
    .local v15, "horizontalRowWidth":I
    const/4 v14, 0x0

    .line 275
    .local v14, "horizontalRowHeight":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_6

    .line 276
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 277
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v3, v0, :cond_0

    move-object/from16 v3, p0

    .line 278
    invoke-virtual/range {v3 .. v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->constrainChild(Landroid/view/View;IIII)V

    .line 281
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 282
    .local v11, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 283
    .local v10, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v23, 0x8

    move/from16 v0, v23

    if-eq v3, v0, :cond_1

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewWidthPadding(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v11, v3

    .line 285
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getViewHeightPadding(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v10, v3

    .line 288
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 289
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    if-eqz v3, :cond_3

    .line 291
    add-int v3, v15, v11

    if-le v3, v5, :cond_2

    .line 292
    move v15, v11

    .line 293
    add-int v17, v17, v14

    .line 294
    move v14, v10

    .line 305
    :goto_1
    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 275
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 297
    :cond_2
    add-int/2addr v15, v11

    .line 298
    move/from16 v0, v18

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v18

    goto :goto_1

    .line 303
    :cond_3
    add-int v18, v18, v11

    goto :goto_1

    .line 308
    :cond_4
    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 310
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isVerticalArrangement()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 311
    add-int v17, v17, v10

    goto :goto_2

    .line 313
    :cond_5
    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v17

    goto :goto_2

    .line 319
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "childHeight":I
    .end local v11    # "childWidth":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->isHorizontalArrangement()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 320
    add-int v17, v17, v14

    .line 324
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingRight()I

    move-result v23

    add-int v3, v3, v23

    add-int v18, v18, v3

    .line 325
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getPaddingBottom()I

    move-result v23

    add-int v3, v3, v23

    add-int v17, v17, v3

    .line 333
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 334
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 336
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredWidth(II)I

    move-result v20

    .line 337
    .local v20, "measuredWidth":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getMeasuredHeight(II)I

    move-result v19

    .line 338
    .local v19, "measuredHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setMeasuredDimension(II)V

    .line 339
    return-void
.end method

.method public resort()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setNeedsSort(Z)V

    .line 179
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->requestLayout()V

    .line 180
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->invalidate()V

    .line 181
    return-void
.end method

.method public setEnableHorizontalWrap(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 858
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->enableHorizontalWrap:Z

    .line 859
    return-void
.end method

.method public setLayoutArrangement(Ljava/lang/String;)V
    .locals 1
    .param p1, "arrangementProperty"    # Ljava/lang/String;

    .prologue
    .line 847
    if-eqz p1, :cond_0

    const-string v0, "horizontal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->HORIZONTAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    .line 854
    :goto_0
    return-void

    .line 849
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "vertical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->VERTICAL:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0

    .line 852
    :cond_1
    sget-object v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->arrangement:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    goto :goto_0
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 863
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiCompositeLayout;->proxy:Ljava/lang/ref/WeakReference;

    .line 864
    return-void
.end method
