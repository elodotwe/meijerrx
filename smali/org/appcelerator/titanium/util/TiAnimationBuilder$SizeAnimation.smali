.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
.super Landroid/view/animation/Animation;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SizeAnimation"
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "TiSizeAnimation"


# instance fields
.field protected fromHeight:F

.field protected fromWidth:F

.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected toHeight:F

.field protected toWidth:F

.field protected view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fromWidth"    # F
    .param p4, "fromHeight"    # F
    .param p5, "toWidth"    # F
    .param p6, "toHeight"    # F

    .prologue
    .line 1011
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1012
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    .line 1013
    iput p3, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    .line 1014
    iput p4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    .line 1015
    iput p5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    .line 1016
    iput p6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    .line 1018
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    const-string v0, "TiSizeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animate view from ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v8, 0x0

    .line 1029
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1031
    const/4 v3, 0x0

    .line 1032
    .local v3, "width":I
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 1033
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    float-to-int v3, v4

    .line 1040
    :goto_0
    const/4 v0, 0x0

    .line 1041
    .local v0, "height":I
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    .line 1042
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    float-to-int v0, v4

    .line 1049
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1050
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1051
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1053
    instance-of v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 1054
    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1055
    .local v2, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v6, v0

    const/4 v5, 0x7

    invoke-direct {v4, v6, v7, v5}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 1057
    iget-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1058
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v6, v3

    const/4 v5, 0x6

    invoke-direct {v4, v6, v7, v5}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 1060
    iget-object v4, v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1063
    .end local v2    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    return-void

    .line 1036
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toWidth:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromWidth:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0

    .line 1045
    .restart local v0    # "height":I
    :cond_2
    iget v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    iget v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->toHeight:F

    iget v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->fromHeight:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_1
.end method
