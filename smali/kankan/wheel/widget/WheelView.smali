.class public Lkankan/wheel/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkankan/wheel/widget/WheelView$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_ITEMS_SPACE:I = 0x5

.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEMS_TEXT_COLOR:I = -0x1000000

.field private static final LABEL_OFFSET:I = 0x8

.field private static final NOVAL:I = -0x1

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I

.field private static final VALUE_TEXT_COLOR:I = -0x20000000


# instance fields
.field private adapter:Lkankan/wheel/widget/WheelAdapter;

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private currentItem:I

.field private itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

.field private itemsLayout:Landroid/text/StaticLayout;

.field private itemsPaint:Landroid/text/TextPaint;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field private labelLayout:Landroid/text/StaticLayout;

.field private labelWidth:I

.field private lastYTouch:F

.field private showSelectionIndicator:Z

.field private textColor:I

.field private textSize:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private typeface:Landroid/graphics/Typeface;

.field private typefaceWeight:I

.field private valueLayout:Landroid/text/StaticLayout;

.field private valuePaint:Landroid/text/TextPaint;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    const/16 v0, 0x18

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 92
    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 95
    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 96
    iput v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 125
    iput v1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/16 v0, 0x18

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 92
    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 95
    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 96
    iput v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 125
    iput v1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/16 v0, 0x18

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 92
    iput v1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 95
    iput v1, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 96
    iput v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 125
    iput v1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 133
    return-void
.end method

.method private buildText(I)Ljava/lang/String;
    .locals 8
    .param p1, "widthItems"    # I

    .prologue
    .line 371
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v0

    .line 372
    .local v0, "adapter":Lkankan/wheel/widget/WheelAdapter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v3, "itemsText":Ljava/lang/StringBuilder;
    iget v5, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v1, v5, 0x2

    .line 374
    .local v1, "addItems":I
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int v2, v5, v1

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-ge v2, v5, :cond_1

    .line 375
    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    .line 376
    invoke-interface {v0, v2}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 379
    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    int-to-float v6, p1

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "text":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 380
    .restart local v4    # "text":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/lit8 v2, v5, 0x1

    :goto_1
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v5, v1

    if-gt v2, v5, :cond_4

    .line 389
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 390
    invoke-interface {v0, v2}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    .line 391
    .restart local v4    # "text":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 393
    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    int-to-float v6, p1

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "text":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 394
    .restart local v4    # "text":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .end local v4    # "text":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    add-int/2addr v5, v1

    if-ge v2, v5, :cond_3

    .line 398
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private calculateLayoutWidth(II)I
    .locals 12
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x0

    .line 439
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->initResourcesIfNecessary()V

    .line 441
    move v6, p1

    .line 443
    .local v6, "width":I
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getMaxTextLength()I

    move-result v0

    .line 444
    .local v0, "maxLength":I
    if-lez v0, :cond_5

    .line 445
    const-string v7, "0"

    iget-object v8, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 446
    .local v5, "textWidth":F
    int-to-float v7, v0

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 450
    .end local v5    # "textWidth":F
    :goto_0
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    add-int/lit8 v7, v7, 0x5

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 452
    iput v10, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 453
    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 454
    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    iget-object v8, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-static {v7, v8}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 457
    :cond_0
    const/4 v4, 0x0

    .line 458
    .local v4, "recalculate":Z
    const/high16 v7, 0x40000000    # 2.0f

    if-ne p2, v7, :cond_6

    .line 459
    move v6, p1

    .line 460
    const/4 v4, 0x1

    .line 476
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 478
    add-int/lit8 v7, v6, -0x8

    add-int/lit8 v1, v7, -0x14

    .line 479
    .local v1, "pureWidth":I
    if-gtz v1, :cond_2

    .line 480
    iput v10, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    iput v10, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 482
    :cond_2
    iget v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    if-lez v7, :cond_8

    .line 483
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    int-to-double v8, v7

    int-to-double v10, v1

    mul-double/2addr v8, v10

    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v10, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    add-int/2addr v7, v10

    int-to-double v10, v7

    div-double v2, v8, v10

    .line 485
    .local v2, "newWidthItems":D
    double-to-int v7, v2

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    .line 486
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    sub-int v7, v1, v7

    iput v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    .line 492
    .end local v1    # "pureWidth":I
    .end local v2    # "newWidthItems":D
    :cond_3
    :goto_2
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    if-lez v7, :cond_4

    .line 493
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v8, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    invoke-direct {p0, v7, v8}, Lkankan/wheel/widget/WheelView;->createLayouts(II)V

    .line 496
    :cond_4
    return v6

    .line 448
    .end local v4    # "recalculate":Z
    :cond_5
    iput v10, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    goto :goto_0

    .line 462
    .restart local v4    # "recalculate":Z
    :cond_6
    iget v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v8, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    add-int/2addr v7, v8

    add-int/lit8 v6, v7, 0x14

    .line 463
    iget v7, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    if-lez v7, :cond_7

    .line 464
    add-int/lit8 v6, v6, 0x8

    .line 468
    :cond_7
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 470
    const/high16 v7, -0x80000000

    if-ne p2, v7, :cond_1

    if-ge p1, v6, :cond_1

    .line 471
    move v6, p1

    .line 472
    const/4 v4, 0x1

    goto :goto_1

    .line 488
    .restart local v1    # "pureWidth":I
    :cond_8
    add-int/lit8 v7, v1, 0x8

    iput v7, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    goto :goto_2
.end method

.method private createLayouts(II)V
    .locals 15
    .param p1, "widthItems"    # I
    .param p2, "widthLabel"    # I

    .prologue
    .line 505
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_6

    .line 508
    :cond_0
    invoke-direct/range {p0 .. p1}, Lkankan/wheel/widget/WheelView;->buildText(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 510
    const-string v2, ""

    .line 512
    :cond_1
    new-instance v1, Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-lez p2, :cond_5

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v6

    int-to-float v9, v6

    const/4 v10, 0x0

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move/from16 v6, p1

    move/from16 v12, p1

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 519
    .end local v2    # "text":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_c

    .line 520
    :cond_2
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v1

    iget v3, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    invoke-interface {v1, v3}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    .line 523
    .restart local v2    # "text":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_8

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    move/from16 v0, p1

    int-to-float v3, v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v1, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    .line 524
    :goto_3
    new-instance v3, Landroid/text/StaticLayout;

    if-eqz v2, :cond_9

    move-object v4, v2

    :goto_4
    const/4 v5, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    :goto_5
    iget-object v7, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-lez p2, :cond_b

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_6
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v1

    int-to-float v11, v1

    const/4 v12, 0x0

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move/from16 v8, p1

    move/from16 v14, p1

    invoke-direct/range {v3 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    iput-object v3, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 533
    .end local v2    # "text":Ljava/lang/String;
    :goto_7
    if-lez p2, :cond_4

    .line 534
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    move/from16 v0, p2

    if-le v1, v0, :cond_d

    .line 535
    :cond_3
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v1

    int-to-float v9, v1

    const/4 v10, 0x0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 542
    :cond_4
    :goto_8
    return-void

    .line 512
    .restart local v2    # "text":Ljava/lang/String;
    :cond_5
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto/16 :goto_0

    .line 516
    .end local v2    # "text":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto/16 :goto_1

    .line 520
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 523
    .restart local v2    # "text":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 524
    :cond_9
    const-string v4, ""

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_6

    .line 530
    .end local v2    # "text":Ljava/lang/String;
    :cond_c
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_7

    .line 539
    :cond_d
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_8
.end method

.method private dipToInt(F)I
    .locals 2
    .param p1, "dips"    # F

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 646
    iget-boolean v2, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    if-nez v2, :cond_0

    .line 653
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 650
    .local v0, "center":I
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 651
    .local v1, "offset":I
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v5

    add-int v6, v0, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 652
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 637
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 638
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 639
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 598
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 599
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 601
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 603
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 604
    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 611
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/high16 v1, -0x20000000

    :goto_0
    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 612
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 614
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 615
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 618
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 619
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 620
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 621
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 622
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 626
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 627
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 628
    iget-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 629
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 630
    return-void

    .line 611
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget v1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_0
.end method

.method private getAdditionalItemHeight()I
    .locals 4

    .prologue
    .line 697
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 354
    .local v1, "linecount":I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemOffset()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getAdditionalItemHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 358
    .local v0, "desired":I
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 360
    goto :goto_0
.end method

.method private getItemOffset()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private getMaxTextLength()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 409
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v0

    .line 410
    .local v0, "adapter":Lkankan/wheel/widget/WheelAdapter;
    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v6

    .line 414
    :cond_1
    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getMaximumLength()I

    move-result v1

    .line 415
    .local v1, "adapterLength":I
    if-lez v1, :cond_2

    move v6, v1

    .line 416
    goto :goto_0

    .line 419
    :cond_2
    const/4 v4, 0x0

    .line 420
    .local v4, "maxText":Ljava/lang/String;
    iget v7, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    div-int/lit8 v2, v7, 0x2

    .line 421
    .local v2, "addItems":I
    iget v7, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int/2addr v7, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 422
    .local v3, "i":I
    :goto_1
    iget v7, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    iget v8, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    add-int/2addr v7, v8

    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 423
    invoke-interface {v0, v3}, Lkankan/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v5

    .line 424
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 425
    :cond_3
    move-object v4, v5

    .line 422
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 429
    .end local v5    # "text":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0
.end method

.method private getWheelBackground()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 334
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#DDDDDD"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#333333"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v6, "#FF333333"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    .line 335
    .local v7, "item0":Landroid/graphics/drawable/Drawable;
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "#AAAAAA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#AAAAAA"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    .line 336
    .local v8, "item1":Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    aput-object v8, v1, v10

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 337
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v9}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v2

    invoke-direct {p0, v5}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v3

    invoke-direct {p0, v9}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v4

    invoke-direct {p0, v5}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v5

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 338
    return-object v0
.end method

.method private getWheelValDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 328
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v0, "#70222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v0, "#70222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v0, "#70EEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v0, "#70333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIIFI)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method private initResourcesIfNecessary()V
    .locals 6

    .prologue
    const/high16 v1, -0x1000000

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 259
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    .line 260
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    if-ne v0, v4, :cond_5

    .line 261
    new-instance v0, Landroid/text/TextPaint;

    const/16 v2, 0x21

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    .line 267
    :goto_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 268
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 272
    :cond_0
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 273
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    if-ne v0, v4, :cond_7

    .line 274
    new-instance v0, Landroid/text/TextPaint;

    const/16 v2, 0x25

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    .line 281
    :goto_2
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 282
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 283
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 284
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v2, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    if-ne v2, v3, :cond_8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 287
    :cond_1
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 288
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getWheelValDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    :cond_2
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3

    .line 292
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 295
    :cond_3
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_4

    .line 296
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lkankan/wheel/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 300
    :cond_4
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getWheelBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkankan/wheel/widget/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void

    .line 264
    :cond_5
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    goto :goto_0

    .line 269
    :cond_6
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_1

    .line 277
    :cond_7
    new-instance v0, Landroid/text/TextPaint;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 284
    :cond_8
    iget v1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_3
.end method

.method private makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;III)Landroid/graphics/drawable/GradientDrawable;
    .locals 3
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "startColor"    # I
    .param p3, "centerColor"    # I
    .param p4, "endColor"    # I

    .prologue
    .line 321
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput p2, v0, v2

    const/4 v2, 0x1

    aput p3, v0, v2

    const/4 v2, 0x2

    aput p4, v0, v2

    .line 322
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 323
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    return-object v1
.end method

.method private makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIIFI)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "startColor"    # I
    .param p3, "centerColor"    # I
    .param p4, "endColor"    # I
    .param p5, "strokeDips"    # F
    .param p6, "strokeColor"    # I

    .prologue
    .line 313
    invoke-direct {p0, p1, p2, p3, p4}, Lkankan/wheel/widget/WheelView;->makeGradientDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 314
    .local v0, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {p0, p5}, Lkankan/wheel/widget/WheelView;->dipToInt(F)I

    move-result v1

    invoke-virtual {v0, v1, p6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 315
    return-object v0
.end method

.method private resetTextPainters()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 236
    const/4 v4, 0x2

    new-array v3, v4, [Landroid/text/TextPaint;

    const/4 v4, 0x0

    iget-object v5, p0, Lkankan/wheel/widget/WheelView;->itemsPaint:Landroid/text/TextPaint;

    aput-object v5, v3, v4

    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->valuePaint:Landroid/text/TextPaint;

    aput-object v4, v3, v6

    .line 237
    .local v3, "painters":[Landroid/text/TextPaint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 238
    aget-object v2, v3, v1

    .line 239
    .local v2, "painter":Landroid/text/TextPaint;
    if-eqz v2, :cond_2

    .line 240
    const/4 v0, 0x1

    .line 241
    .local v0, "flags":I
    iget v4, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    if-ne v4, v6, :cond_0

    .line 242
    or-int/lit8 v0, v0, 0x20

    .line 244
    :cond_0
    if-ne v1, v6, :cond_1

    .line 245
    or-int/lit8 v0, v0, 0x4

    .line 247
    :cond_1
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 248
    iget v4, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const/high16 v4, -0x1000000

    :goto_1
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 249
    iget-object v4, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 250
    iget v4, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 237
    .end local v0    # "flags":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .restart local v0    # "flags":I
    :cond_3
    iget v4, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    goto :goto_1

    .line 253
    .end local v0    # "flags":I
    .end local v2    # "painter":Landroid/text/TextPaint;
    :cond_4
    return-void
.end method


# virtual methods
.method public fullLayoutReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 707
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 708
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 709
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->requestLayout()V

    .line 710
    return-void
.end method

.method public getAdapter()Lkankan/wheel/widget/WheelAdapter;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getShowSelectionIndicator()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTypefaceWeight()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    return v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 571
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 572
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    if-nez v0, :cond_2

    .line 573
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    .line 579
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 581
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    if-lez v0, :cond_1

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 584
    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->getItemOffset()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 585
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 586
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawValue(Landroid/graphics/Canvas;)V

    .line 587
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 590
    :cond_1
    invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 591
    return-void

    .line 575
    :cond_2
    iget v0, p0, Lkankan/wheel/widget/WheelView;->itemsWidth:I

    iget v1, p0, Lkankan/wheel/widget/WheelView;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/WheelView;->createLayouts(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 546
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 547
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 548
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 549
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 551
    .local v2, "heightSize":I
    invoke-direct {p0, v5, v4}, Lkankan/wheel/widget/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 554
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 555
    move v0, v2

    .line 564
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lkankan/wheel/widget/WheelView;->setMeasuredDimension(II)V

    .line 565
    return-void

    .line 557
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v6}, Lkankan/wheel/widget/WheelView;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v0

    .line 559
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 560
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 657
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v0

    .line 658
    .local v0, "adapter":Lkankan/wheel/widget/WheelAdapter;
    if-nez v0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v6

    .line 662
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 664
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lkankan/wheel/widget/WheelView;->lastYTouch:F

    goto :goto_0

    .line 668
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lkankan/wheel/widget/WheelView;->lastYTouch:F

    sub-float v2, v4, v5

    .line 670
    .local v2, "delta":F
    iget v4, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 671
    .local v1, "count":I
    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    sub-int v3, v4, v1

    .line 672
    .local v3, "pos":I
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 673
    invoke-interface {v0}, Lkankan/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 674
    iget v4, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq v3, v4, :cond_0

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lkankan/wheel/widget/WheelView;->lastYTouch:F

    .line 676
    invoke-virtual {p0, v3}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Lkankan/wheel/widget/WheelAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lkankan/wheel/widget/WheelAdapter;

    .prologue
    const/4 v0, 0x0

    .line 162
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->adapter:Lkankan/wheel/widget/WheelAdapter;

    .line 163
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 164
    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 165
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 166
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 223
    iget v0, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    if-eq p1, v0, :cond_0

    .line 224
    iput-object v1, p0, Lkankan/wheel/widget/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 225
    iput-object v1, p0, Lkankan/wheel/widget/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 226
    iput p1, p0, Lkankan/wheel/widget/WheelView;->currentItem:I

    .line 227
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 228
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    invoke-interface {v0, p0, p1}, Lkankan/wheel/widget/WheelView$OnItemSelectedListener;->onItemSelected(Lkankan/wheel/widget/WheelView;I)V

    .line 232
    :cond_0
    return-void
.end method

.method public setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    .prologue
    .line 692
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->itemSelectedListener:Lkankan/wheel/widget/WheelView$OnItemSelectedListener;

    .line 693
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->label:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lkankan/wheel/widget/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 205
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 206
    return-void
.end method

.method public setShowSelectionIndicator(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 763
    iget-boolean v0, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 764
    .local v0, "oldval":Z
    iput-boolean p1, p0, Lkankan/wheel/widget/WheelView;->showSelectionIndicator:Z

    .line 765
    if-eq v0, p1, :cond_0

    .line 766
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 768
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 728
    iput p1, p0, Lkankan/wheel/widget/WheelView;->textColor:I

    .line 729
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 730
    invoke-virtual {p0}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 731
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 714
    iget v0, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 715
    .local v0, "orig":I
    iput p1, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    .line 716
    iget v1, p0, Lkankan/wheel/widget/WheelView;->textSize:I

    if-eq v0, v1, :cond_0

    .line 717
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 719
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 735
    iget-object v0, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 736
    .local v0, "old":Landroid/graphics/Typeface;
    iput-object p1, p0, Lkankan/wheel/widget/WheelView;->typeface:Landroid/graphics/Typeface;

    .line 737
    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 740
    :cond_0
    return-void
.end method

.method public setTypefaceWeight(I)V
    .locals 1
    .param p1, "weight"    # I

    .prologue
    .line 749
    iget v0, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 750
    .local v0, "old":I
    iput p1, p0, Lkankan/wheel/widget/WheelView;->typefaceWeight:I

    .line 751
    if-eq v0, p1, :cond_0

    .line 752
    invoke-direct {p0}, Lkankan/wheel/widget/WheelView;->resetTextPainters()V

    .line 754
    :cond_0
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 184
    iput p1, p0, Lkankan/wheel/widget/WheelView;->visibleItems:I

    .line 185
    return-void
.end method
