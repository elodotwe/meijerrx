.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;,
        Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    }
.end annotation


# static fields
.field private static final PRE_HONEYCOMB:Z

.field private static final TAG:Ljava/lang/String; = "TiAnimationBuilder"

.field private static sRunningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected anchorX:F

.field protected anchorY:F

.field protected animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

.field protected animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

.field protected applyOpacity:Z

.field protected autoreverse:Ljava/lang/Boolean;

.field protected backgroundColor:Ljava/lang/Integer;

.field protected bottom:Ljava/lang/String;

.field protected callback:Lorg/appcelerator/kroll/KrollFunction;

.field protected centerX:Ljava/lang/String;

.field protected centerY:Ljava/lang/String;

.field protected delay:Ljava/lang/Double;

.field protected duration:Ljava/lang/Double;

.field protected height:Ljava/lang/String;

.field protected left:Ljava/lang/String;

.field protected options:Ljava/util/HashMap;

.field protected relayoutChild:Z

.field protected repeat:Ljava/lang/Double;

.field protected right:Ljava/lang/String;

.field protected tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected toOpacity:Ljava/lang/Double;

.field protected top:Ljava/lang/String;

.field protected view:Landroid/view/View;

.field protected viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->PRE_HONEYCOMB:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->sRunningViews:Ljava/util/ArrayList;

    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 119
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 120
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 121
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 122
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 123
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 124
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    .line 131
    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    iput-boolean v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 140
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 141
    iput v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 142
    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setAnimationRunningFor(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->PRE_HONEYCOMB:Z

    return v0
.end method

.method private addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animationSet"    # Landroid/view/animation/AnimationSet;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 675
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 679
    .local v0, "repeatCount":I
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 683
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 685
    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 686
    return-void

    .line 675
    .end local v0    # "repeatCount":I
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 3
    .param p2, "animator"    # Lcom/nineoldandroids/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            ">;",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 690
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 698
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 699
    .local v0, "repeatCount":I
    :goto_0
    const/4 v1, 0x1

    .line 703
    .local v1, "repeatMode":I
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 707
    :cond_0
    invoke-virtual {p2, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 708
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    const/4 v1, 0x2

    .line 711
    :cond_1
    invoke-virtual {p2, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 713
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    return-void

    .line 698
    .end local v0    # "repeatCount":I
    .end local v1    # "repeatMode":I
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private buildPropertyAnimators()Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 9

    .prologue
    .line 291
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "TiAnimationBuilder"

    const-string v1, "Property Animations will be used."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 295
    .local v8, "parent":Landroid/view/ViewParent;
    const/4 v5, 0x0

    .line 296
    .local v5, "parentWidth":I
    const/4 v6, 0x0

    .line 298
    .local v6, "parentHeight":I
    instance-of v0, v8, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, v8

    .line 299
    check-cast v7, Landroid/view/ViewGroup;

    .line 300
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    .line 301
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 304
    .end local v7    # "group":Landroid/view/ViewGroup;
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->buildPropertyAnimators(IIIIII)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private buildPropertyAnimators(IIIIII)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 58
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "parentWidth"    # I
    .param p6, "parentHeight"    # I

    .prologue
    .line 322
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v26, "animators":Ljava/util/List;, "Ljava/util/List<Lcom/nineoldandroids/animation/Animator;>;"
    const/16 v42, 0x0

    .line 325
    .local v42, "includesRotation":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v9, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->floatValue()F

    move-result v18

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 329
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    if-eqz v9, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-static {v9}, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->wrap(Landroid/view/View;)Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;

    move-result-object v37

    .line 331
    .local v37, "bgWrap":Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;
    invoke-virtual/range {v37 .. v37}, Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;->getBackgroundColor()I

    move-result v38

    .line 332
    .local v38, "currentBackgroundColor":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "backgroundColor"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput v38, v12, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v36

    .line 334
    .local v36, "bgAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    new-instance v9, Lcom/nineoldandroids/animation/ArgbEvaluator;

    invoke-direct {v9}, Lcom/nineoldandroids/animation/ArgbEvaluator;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 338
    .end local v36    # "bgAnimator":Lcom/nineoldandroids/animation/ObjectAnimator;
    .end local v37    # "bgWrap":Lorg/appcelerator/titanium/view/TiBackgroundColorWrapper;
    .end local v38    # "currentBackgroundColor":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v9, :cond_4

    .line 339
    const/16 v54, 0x0

    .line 341
    .local v54, "updateListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;
    sget-boolean v9, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->PRE_HONEYCOMB:Z

    if-nez v9, :cond_2

    .line 342
    new-instance v54, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;

    .end local v54    # "updateListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;
    move-object/from16 v0, v54

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 349
    .restart local v54    # "updateListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->getAllOperations()Ljava/util/List;

    move-result-object v44

    .line 350
    .local v44, "operations":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1a

    .line 353
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "rotation"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "translationY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_19

    :cond_3
    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 420
    .end local v44    # "operations":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    .end local v54    # "updateListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-eqz v9, :cond_10

    .line 421
    :cond_5
    const/4 v13, 0x0

    .local v13, "optionTop":Lorg/appcelerator/titanium/TiDimension;
    const/4 v15, 0x0

    .line 422
    .local v15, "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    const/4 v5, 0x0

    .local v5, "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    const/4 v7, 0x0

    .line 423
    .local v7, "optionRight":Lorg/appcelerator/titanium/TiDimension;
    const/4 v6, 0x0

    .local v6, "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    const/4 v14, 0x0

    .line 424
    .local v14, "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    const/16 v45, 0x0

    .local v45, "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    const/16 v46, 0x0

    .line 425
    .local v46, "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    move/from16 v16, p4

    .local v16, "newHeight":I
    move/from16 v8, p3

    .line 430
    .local v8, "newWidth":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    if-eqz v9, :cond_24

    .line 431
    new-instance v13, Lorg/appcelerator/titanium/TiDimension;

    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-direct {v13, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 438
    .restart local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 439
    new-instance v15, Lorg/appcelerator/titanium/TiDimension;

    .end local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    const/4 v10, 0x5

    invoke-direct {v15, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 442
    .restart local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    if-eqz v9, :cond_25

    .line 443
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 450
    .restart local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 451
    new-instance v7, Lorg/appcelerator/titanium/TiDimension;

    .end local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-direct {v7, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 454
    .restart local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 455
    new-instance v6, Lorg/appcelerator/titanium/TiDimension;

    .end local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct {v6, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 458
    .restart local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 459
    new-instance v14, Lorg/appcelerator/titanium/TiDimension;

    .end local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-direct {v14, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 462
    .restart local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    :cond_b
    const/4 v9, 0x2

    new-array v11, v9, [I

    .line 463
    .local v11, "horizontal":[I
    const/4 v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v19, v0

    .line 464
    .local v19, "vertical":[I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    .line 465
    .local v47, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 467
    .local v4, "parentView":Landroid/view/View;
    move-object/from16 v0, v47

    instance-of v9, v0, Landroid/view/View;

    if-eqz v9, :cond_26

    move-object/from16 v4, v47

    .line 468
    check-cast v4, Landroid/view/View;

    .line 473
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v9, :cond_c

    .line 474
    new-instance v45, Lorg/appcelerator/titanium/TiDimension;

    .end local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    const/4 v10, 0x7

    move-object/from16 v0, v45

    invoke-direct {v0, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 475
    .restart local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v16

    .line 478
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-eqz v9, :cond_d

    .line 479
    new-instance v46, Lorg/appcelerator/titanium/TiDimension;

    .end local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    const/4 v10, 0x6

    move-object/from16 v0, v46

    invoke-direct {v0, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 480
    .restart local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v8

    .line 483
    :cond_d
    const/4 v9, 0x0

    move/from16 v10, p5

    invoke-static/range {v4 .. v11}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 485
    const/16 v17, 0x0

    move-object v12, v4

    move/from16 v18, p6

    invoke-static/range {v12 .. v19}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 489
    sget-boolean v9, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->PRE_HONEYCOMB:Z

    if-eqz v9, :cond_27

    .line 490
    const/4 v9, 0x0

    aget v9, v11, v9

    sub-int v52, v9, p1

    .line 491
    .local v52, "translationX":I
    const/4 v9, 0x0

    aget v9, v19, v9

    sub-int v53, v9, p2

    .line 492
    .local v53, "translationY":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "translationY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 577
    .end local v52    # "translationX":I
    .end local v53    # "translationY":I
    :cond_e
    :goto_4
    if-nez v42, :cond_32

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_32

    :cond_f
    const/4 v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 581
    .end local v4    # "parentView":Landroid/view/View;
    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    .end local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v8    # "newWidth":I
    .end local v11    # "horizontal":[I
    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    .end local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v16    # "newHeight":I
    .end local v19    # "vertical":[I
    .end local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    .end local v47    # "parent":Landroid/view/ViewParent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-nez v9, :cond_15

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-nez v9, :cond_11

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v9, :cond_15

    .line 584
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-eqz v9, :cond_33

    .line 585
    new-instance v46, Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    const/4 v10, 0x6

    move-object/from16 v0, v46

    invoke-direct {v0, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 591
    .restart local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    :goto_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v9, :cond_34

    .line 592
    new-instance v45, Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    const/4 v10, 0x7

    move-object/from16 v0, v45

    invoke-direct {v0, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 598
    .restart local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    .line 599
    .restart local v47    # "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 600
    .restart local v4    # "parentView":Landroid/view/View;
    move-object/from16 v0, v47

    instance-of v9, v0, Landroid/view/View;

    if-eqz v9, :cond_12

    move-object/from16 v4, v47

    .line 601
    check-cast v4, Landroid/view/View;

    .line 603
    :cond_12
    if-eqz v4, :cond_35

    move-object v9, v4

    :goto_8
    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v51

    .line 604
    .local v51, "toWidth":I
    if-eqz v4, :cond_36

    .end local v4    # "parentView":Landroid/view/View;
    :goto_9
    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v50

    .line 607
    .local v50, "toHeight":I
    sget-boolean v9, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->PRE_HONEYCOMB:Z

    if-eqz v9, :cond_37

    .line 608
    move/from16 v0, v51

    int-to-float v9, v0

    move/from16 v0, p3

    int-to-float v10, v0

    div-float v48, v9, v10

    .line 609
    .local v48, "scaleX":F
    move/from16 v0, v50

    int-to-float v9, v0

    move/from16 v0, p4

    int-to-float v10, v0

    div-float v49, v9, v10

    .line 610
    .local v49, "scaleY":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    aput v48, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    aput v49, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 626
    .end local v48    # "scaleX":F
    .end local v49    # "scaleY":F
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setAnchor(II)V

    .line 635
    if-nez v42, :cond_3a

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_3a

    :cond_14
    const/4 v9, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 644
    .end local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    .end local v47    # "parent":Landroid/view/ViewParent;
    .end local v50    # "toHeight":I
    .end local v51    # "toWidth":I
    :cond_15
    sget-boolean v9, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->PRE_HONEYCOMB:Z

    if-eqz v9, :cond_16

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v9, :cond_16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_16

    .line 645
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-static {v9}, Lcom/nineoldandroids/view/ViewHelper;->getScaleX(Landroid/view/View;)F

    move-result v39

    .line 646
    .local v39, "currentScaleX":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    const v18, 0x3a83126f    # 0.001f

    add-float v18, v18, v39

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v40

    .line 647
    .local v40, "dummyAnimator":Lcom/nineoldandroids/animation/ValueAnimator;
    const/4 v9, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatCount(I)V

    .line 648
    const/4 v9, 0x2

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->setRepeatMode(I)V

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 652
    .end local v39    # "currentScaleX":F
    .end local v40    # "dummyAnimator":Lcom/nineoldandroids/animation/ValueAnimator;
    :cond_16
    new-instance v27, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct/range {v27 .. v27}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 653
    .local v27, "as":Lcom/nineoldandroids/animation/AnimatorSet;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 655
    new-instance v9, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v9, :cond_17

    .line 658
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->longValue()J

    move-result-wide v56

    move-object/from16 v0, v27

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 661
    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    if-eqz v9, :cond_18

    .line 662
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->longValue()J

    move-result-wide v56

    move-object/from16 v0, v27

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setStartDelay(J)V

    .line 665
    :cond_18
    return-object v27

    .line 361
    .end local v27    # "as":Lcom/nineoldandroids/animation/AnimatorSet;
    .restart local v44    # "operations":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    .restart local v54    # "updateListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 365
    :cond_1a
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 366
    .local v43, "operation":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    move-object/from16 v0, v43

    iget v9, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1b

    move-object/from16 v0, v43

    iget v9, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1c

    .line 368
    :cond_1b
    move-object/from16 v0, v43

    iget v9, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    move-object/from16 v0, v43

    iget v10, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2, v9, v10}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setAnchor(IIFF)V

    .line 370
    :cond_1c
    move-object/from16 v0, v43

    iget v9, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->type:I

    packed-switch v9, :pswitch_data_0

    goto :goto_c

    .line 389
    :pswitch_0
    move-object/from16 v0, v43

    iget-boolean v9, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromValuesSpecified:Z

    if-eqz v9, :cond_21

    .line 390
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    move/from16 v18, v0

    aput v18, v12, v17

    const/16 v17, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v25

    .line 392
    .local v25, "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    if-eqz v54, :cond_1d

    .line 393
    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    move/from16 v18, v0

    aput v18, v12, v17

    const/16 v17, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto/16 :goto_c

    .line 372
    .end local v25    # "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    :pswitch_1
    const/16 v42, 0x1

    .line 373
    move-object/from16 v0, v43

    iget-boolean v9, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotationFromValueSpecified:Z

    if-eqz v9, :cond_1f

    .line 374
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "rotation"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    move/from16 v18, v0

    aput v18, v12, v17

    const/16 v17, 0x1

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v24

    .line 376
    .local v24, "anim":Lcom/nineoldandroids/animation/ObjectAnimator;
    if-eqz v54, :cond_1e

    .line 377
    move-object/from16 v0, v24

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 379
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto/16 :goto_c

    .line 381
    .end local v24    # "anim":Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "rotation"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v24

    .line 382
    .restart local v24    # "anim":Lcom/nineoldandroids/animation/ObjectAnimator;
    if-eqz v54, :cond_20

    .line 383
    move-object/from16 v0, v24

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto/16 :goto_c

    .line 400
    .end local v24    # "anim":Lcom/nineoldandroids/animation/ObjectAnimator;
    :cond_21
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v25

    .line 401
    .restart local v25    # "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    if-eqz v54, :cond_22

    .line 402
    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 404
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto/16 :goto_c

    .line 409
    .end local v25    # "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "translationX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateX:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v25

    .line 410
    .restart local v25    # "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    if-eqz v54, :cond_23

    .line 411
    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 413
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const-string v10, "translationY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/16 v17, 0x0

    move-object/from16 v0, v43

    iget v0, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateY:F

    move/from16 v18, v0

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto/16 :goto_c

    .line 432
    .end local v25    # "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v43    # "operation":Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    .end local v44    # "operations":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;>;"
    .end local v54    # "updateListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;
    .restart local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    .restart local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    .restart local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    .restart local v8    # "newWidth":I
    .restart local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    .restart local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    .restart local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    .restart local v16    # "newHeight":I
    .restart local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    .restart local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    :cond_24
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-nez v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-nez v9, :cond_6

    .line 434
    new-instance v13, Lorg/appcelerator/titanium/TiDimension;

    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v56, v0

    const/4 v9, 0x3

    move-wide/from16 v0, v56

    invoke-direct {v13, v0, v1, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 435
    .restart local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_1

    .line 444
    :cond_25
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 446
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v56, v0

    const/4 v9, 0x0

    move-wide/from16 v0, v56

    invoke-direct {v5, v0, v1, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 447
    .restart local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_2

    .line 470
    .restart local v4    # "parentView":Landroid/view/View;
    .restart local v11    # "horizontal":[I
    .restart local v19    # "vertical":[I
    .restart local v47    # "parent":Landroid/view/ViewParent;
    :cond_26
    const-string v9, "TiAnimationBuilder"

    const-string v10, "Parent view doesn\'t exist"

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 497
    :cond_27
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    if-nez v9, :cond_28

    .line 498
    new-instance v9, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    .line 501
    :cond_28
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    if-eqz v9, :cond_29

    .line 502
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "left"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput p1, v12, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aget v18, v11, v18

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 505
    :cond_29
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-eqz v9, :cond_2a

    .line 506
    invoke-virtual {v7, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v23

    .line 508
    .local v23, "afterRight":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iget-object v0, v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v35, v0

    .line 509
    .local v35, "beforeRightD":Lorg/appcelerator/titanium/TiDimension;
    const/16 v34, 0x0

    .line 510
    .local v34, "beforeRight":I
    if-eqz v35, :cond_2e

    .line 511
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v34

    .line 516
    :goto_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "right"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput v34, v12, v17

    const/16 v17, 0x1

    aput v23, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 519
    .end local v23    # "afterRight":I
    .end local v34    # "beforeRight":I
    .end local v35    # "beforeRightD":Lorg/appcelerator/titanium/TiDimension;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-eqz v9, :cond_2b

    .line 520
    invoke-virtual {v6, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v21

    .line 522
    .local v21, "afterCenterX":I
    const/16 v30, 0x0

    .line 523
    .local v30, "beforeCenterX":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iget-object v0, v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v31, v0

    .line 525
    .local v31, "beforeCenterXD":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v31, :cond_2f

    .line 526
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v30

    .line 531
    :goto_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "centerX"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput v30, v12, v17

    const/16 v17, 0x1

    aput v21, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 535
    .end local v21    # "afterCenterX":I
    .end local v30    # "beforeCenterX":I
    .end local v31    # "beforeCenterXD":Lorg/appcelerator/titanium/TiDimension;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    if-eqz v9, :cond_2c

    .line 536
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "top"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput p2, v12, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aget v18, v19, v18

    aput v18, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 540
    :cond_2c
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-eqz v9, :cond_2d

    .line 541
    invoke-virtual {v15, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v20

    .line 543
    .local v20, "afterBottom":I
    const/16 v28, 0x0

    .line 544
    .local v28, "beforeBottom":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iget-object v0, v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v29, v0

    .line 545
    .local v29, "beforeBottomD":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v29, :cond_30

    .line 546
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v28

    .line 551
    :goto_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "bottom"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput v28, v12, v17

    const/16 v17, 0x1

    aput v20, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 555
    .end local v20    # "afterBottom":I
    .end local v28    # "beforeBottom":I
    .end local v29    # "beforeBottomD":Lorg/appcelerator/titanium/TiDimension;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 556
    invoke-virtual {v14, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v22

    .line 558
    .local v22, "afterCenterY":I
    const/16 v32, 0x0

    .line 559
    .local v32, "beforeCenterY":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iget-object v0, v9, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v33, v0

    .line 561
    .local v33, "beforeCenterYD":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v33, :cond_31

    .line 562
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v32

    .line 567
    :goto_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "centerY"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput v32, v12, v17

    const/16 v17, 0x1

    aput v22, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto/16 :goto_4

    .line 513
    .end local v22    # "afterCenterY":I
    .end local v32    # "beforeCenterY":I
    .end local v33    # "beforeCenterYD":Lorg/appcelerator/titanium/TiDimension;
    .restart local v23    # "afterRight":I
    .restart local v34    # "beforeRight":I
    .restart local v35    # "beforeRightD":Lorg/appcelerator/titanium/TiDimension;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v34, p5, v9

    goto/16 :goto_d

    .line 528
    .end local v23    # "afterRight":I
    .end local v34    # "beforeRight":I
    .end local v35    # "beforeRightD":Lorg/appcelerator/titanium/TiDimension;
    .restart local v21    # "afterCenterX":I
    .restart local v30    # "beforeCenterX":I
    .restart local v31    # "beforeCenterXD":Lorg/appcelerator/titanium/TiDimension;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v30, v9, 0x2

    goto/16 :goto_e

    .line 548
    .end local v21    # "afterCenterX":I
    .end local v30    # "beforeCenterX":I
    .end local v31    # "beforeCenterXD":Lorg/appcelerator/titanium/TiDimension;
    .restart local v20    # "afterBottom":I
    .restart local v28    # "beforeBottom":I
    .restart local v29    # "beforeBottomD":Lorg/appcelerator/titanium/TiDimension;
    :cond_30
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v28, p6, v9

    goto/16 :goto_f

    .line 564
    .end local v20    # "afterBottom":I
    .end local v28    # "beforeBottom":I
    .end local v29    # "beforeBottomD":Lorg/appcelerator/titanium/TiDimension;
    .restart local v22    # "afterCenterY":I
    .restart local v32    # "beforeCenterY":I
    .restart local v33    # "beforeCenterYD":Lorg/appcelerator/titanium/TiDimension;
    :cond_31
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v32, v9, 0x2

    goto :goto_10

    .line 577
    .end local v22    # "afterCenterY":I
    .end local v32    # "beforeCenterY":I
    .end local v33    # "beforeCenterYD":Lorg/appcelerator/titanium/TiDimension;
    :cond_32
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 587
    .end local v4    # "parentView":Landroid/view/View;
    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    .end local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v8    # "newWidth":I
    .end local v11    # "horizontal":[I
    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    .end local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v16    # "newHeight":I
    .end local v19    # "vertical":[I
    .end local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    .end local v47    # "parent":Landroid/view/ViewParent;
    :cond_33
    new-instance v46, Lorg/appcelerator/titanium/TiDimension;

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v56, v0

    const/4 v9, 0x6

    move-object/from16 v0, v46

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 588
    .restart local v46    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    const/4 v9, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_6

    .line 594
    :cond_34
    new-instance v45, Lorg/appcelerator/titanium/TiDimension;

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v56, v0

    const/4 v9, 0x7

    move-object/from16 v0, v45

    move-wide/from16 v1, v56

    invoke-direct {v0, v1, v2, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 595
    .restart local v45    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    const/4 v9, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_7

    .line 603
    .restart local v4    # "parentView":Landroid/view/View;
    .restart local v47    # "parent":Landroid/view/ViewParent;
    :cond_35
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    goto/16 :goto_8

    .line 604
    .restart local v51    # "toWidth":I
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    goto/16 :goto_9

    .line 615
    .end local v4    # "parentView":Landroid/view/View;
    .restart local v50    # "toHeight":I
    :cond_37
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    if-nez v9, :cond_38

    .line 616
    new-instance v9, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    .line 618
    :cond_38
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-eqz v9, :cond_39

    .line 619
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "width"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput p3, v12, v17

    const/16 v17, 0x1

    aput v51, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 621
    :cond_39
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v9, :cond_13

    .line 622
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animatorHelper:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;

    const-string v10, "height"

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/16 v17, 0x0

    aput p4, v12, v17

    const/16 v17, 0x1

    aput v50, v12, v17

    invoke-static {v9, v10, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimator(Ljava/util/List;Lcom/nineoldandroids/animation/ValueAnimator;)V

    goto/16 :goto_a

    .line 635
    :cond_3a
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private buildViewAnimations()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    .line 265
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "TiAnimationBuilder"

    const-string v1, "Using legacy animations"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 270
    .local v8, "parent":Landroid/view/ViewParent;
    const/4 v5, 0x0

    .line 271
    .local v5, "parentWidth":I
    const/4 v6, 0x0

    .line 273
    .local v6, "parentHeight":I
    instance-of v0, v8, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, v8

    .line 274
    check-cast v7, Landroid/view/ViewGroup;

    .line 275
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    .line 276
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    .line 279
    .end local v7    # "group":Landroid/view/ViewGroup;
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->buildViewAnimations(IIIIII)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private buildViewAnimations(IIIIII)Landroid/view/animation/AnimationSet;
    .locals 43
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "parentWidth"    # I
    .param p6, "parentHeight"    # I

    .prologue
    .line 757
    const/16 v36, 0x0

    .line 758
    .local v36, "includesRotation":Z
    new-instance v32, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    move-object/from16 v0, v32

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 759
    .local v32, "as":Landroid/view/animation/AnimationSet;
    new-instance v31, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 760
    .local v31, "animationListener":Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimationListener;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v40

    .line 763
    .local v40, "tiView":Lorg/appcelerator/titanium/view/TiUIView;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v8, :cond_1

    .line 772
    if-nez v40, :cond_17

    const/16 v33, 0x1

    .line 775
    .local v33, "currentAnimatedAlpha":F
    :goto_0
    const/4 v8, 0x1

    cmpl-float v8, v33, v8

    if-eqz v8, :cond_18

    .line 777
    move/from16 v35, v33

    .line 787
    .local v35, "fromOpacity":F
    :goto_1
    new-instance v20, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->floatValue()F

    move-result v8

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-direct {v0, v1, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 793
    .local v20, "animation":Landroid/view/animation/Animation;
    if-eqz v40, :cond_0

    .line 794
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->floatValue()F

    move-result v8

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lorg/appcelerator/titanium/view/TiUIView;->setAnimatedAlpha(F)V

    .line 797
    :cond_0
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOpacity:Z

    .line 798
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 799
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "opacity"

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    if-eqz v8, :cond_1

    .line 803
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->prepareOpacityForAnimation()V

    .line 807
    .end local v20    # "animation":Landroid/view/animation/Animation;
    .end local v33    # "currentAnimatedAlpha":F
    .end local v35    # "fromOpacity":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 808
    const/16 v34, 0x0

    .line 810
    .local v34, "fromBackgroundColor":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "backgroundColor"

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 811
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "backgroundColor"

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v34

    .line 820
    :goto_2
    new-instance v29, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-direct {v0, v8, v1, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;-><init>(Landroid/view/View;II)V

    .line 822
    .local v29, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 825
    .end local v29    # "a":Landroid/view/animation/Animation;
    .end local v34    # "fromBackgroundColor":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v8, :cond_5

    .line 828
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->hasScaleOperation()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v40, :cond_3

    .line 829
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1b

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, v40

    invoke-virtual {v9, v0, v8}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->verifyScaleValues(Lorg/appcelerator/titanium/view/TiUIView;Z)Landroid/util/Pair;

    move-result-object v8

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lorg/appcelerator/titanium/view/TiUIView;->setAnimatedScaleValues(Landroid/util/Pair;)V

    .line 833
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->hasRotateOperation()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v40, :cond_4

    .line 834
    const/16 v36, 0x1

    .line 835
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v8, :cond_1c

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1c

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, v40

    invoke-virtual {v9, v0, v8}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->verifyRotationValues(Lorg/appcelerator/titanium/view/TiUIView;Z)F

    move-result v8

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lorg/appcelerator/titanium/view/TiUIView;->setAnimatedRotationDegrees(F)V

    .line 840
    :cond_4
    new-instance v30, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    move-object/from16 v0, p0

    iget v10, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9, v10}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    .line 841
    .local v30, "anim":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 845
    .end local v30    # "anim":Landroid/view/animation/Animation;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-eqz v8, :cond_f

    .line 847
    :cond_6
    const/4 v13, 0x0

    .local v13, "optionTop":Lorg/appcelerator/titanium/TiDimension;
    const/4 v15, 0x0

    .line 848
    .local v15, "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    const/4 v5, 0x0

    .local v5, "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    const/4 v7, 0x0

    .line 849
    .local v7, "optionRight":Lorg/appcelerator/titanium/TiDimension;
    const/4 v6, 0x0

    .local v6, "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    const/4 v14, 0x0

    .line 854
    .local v14, "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    if-eqz v8, :cond_1d

    .line 855
    new-instance v13, Lorg/appcelerator/titanium/TiDimension;

    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-direct {v13, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 862
    .restart local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 863
    new-instance v15, Lorg/appcelerator/titanium/TiDimension;

    .end local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    const/4 v9, 0x5

    invoke-direct {v15, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 866
    .restart local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    if-eqz v8, :cond_1e

    .line 867
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v5, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 875
    .restart local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 876
    new-instance v7, Lorg/appcelerator/titanium/TiDimension;

    .end local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 879
    .restart local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 880
    new-instance v6, Lorg/appcelerator/titanium/TiDimension;

    .end local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-direct {v6, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 884
    .restart local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 885
    new-instance v14, Lorg/appcelerator/titanium/TiDimension;

    .end local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    const/4 v9, 0x4

    invoke-direct {v14, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 889
    .restart local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    :cond_c
    const/4 v8, 0x2

    new-array v11, v8, [I

    .line 890
    .local v11, "horizontal":[I
    const/4 v8, 0x2

    new-array v0, v8, [I

    move-object/from16 v19, v0

    .line 891
    .local v19, "vertical":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v39

    .line 892
    .local v39, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 894
    .local v4, "parentView":Landroid/view/View;
    move-object/from16 v0, v39

    instance-of v8, v0, Landroid/view/View;

    if-eqz v8, :cond_d

    move-object/from16 v4, v39

    .line 895
    check-cast v4, Landroid/view/View;

    .line 898
    :cond_d
    const/4 v9, 0x0

    move/from16 v8, p3

    move/from16 v10, p5

    invoke-static/range {v4 .. v11}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 900
    const/16 v17, 0x0

    move-object v12, v4

    move/from16 v16, p4

    move/from16 v18, p6

    invoke-static/range {v12 .. v19}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->computePosition(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;III[I)V

    .line 903
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v8, 0x0

    aget v8, v11, v8

    sub-int v8, v8, p1

    int-to-float v0, v8

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/4 v8, 0x0

    aget v8, v19, v8

    sub-int v8, v8, p2

    int-to-float v0, v8

    move/from16 v28, v0

    invoke-direct/range {v20 .. v28}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 907
    .restart local v20    # "animation":Landroid/view/animation/Animation;
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 916
    if-nez v36, :cond_1f

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1f

    :cond_e
    const/4 v8, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 919
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 920
    const-string v8, "TiAnimationBuilder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "animate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " relative to self: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v11, v10

    sub-int v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v19, v10

    sub-int v10, v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v4    # "parentView":Landroid/view/View;
    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    .end local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v11    # "horizontal":[I
    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    .end local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v19    # "vertical":[I
    .end local v20    # "animation":Landroid/view/animation/Animation;
    .end local v39    # "parent":Landroid/view/ViewParent;
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-nez v8, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v8, :cond_14

    .line 930
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    if-eqz v8, :cond_20

    .line 931
    new-instance v38, Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    const/4 v9, 0x6

    move-object/from16 v0, v38

    invoke-direct {v0, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 937
    .local v38, "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    :goto_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    if-eqz v8, :cond_21

    .line 938
    new-instance v37, Lorg/appcelerator/titanium/TiDimension;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    const/4 v9, 0x7

    move-object/from16 v0, v37

    invoke-direct {v0, v8, v9}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 944
    .local v37, "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    :goto_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v39

    .line 945
    .restart local v39    # "parent":Landroid/view/ViewParent;
    const/4 v4, 0x0

    .line 947
    .restart local v4    # "parentView":Landroid/view/View;
    move-object/from16 v0, v39

    instance-of v8, v0, Landroid/view/View;

    if-eqz v8, :cond_11

    move-object/from16 v4, v39

    .line 948
    check-cast v4, Landroid/view/View;

    .line 951
    :cond_11
    if-eqz v4, :cond_22

    move-object v8, v4

    :goto_a
    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v42

    .line 952
    .local v42, "toWidth":I
    if-eqz v4, :cond_23

    .end local v4    # "parentView":Landroid/view/View;
    :goto_b
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v41

    .line 954
    .local v41, "toHeight":I
    new-instance v21, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    move-object/from16 v23, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v22, p0

    invoke-direct/range {v21 .. v27}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;Landroid/view/View;FFFF)V

    .line 957
    .local v21, "sizeAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v8, :cond_12

    .line 958
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setDuration(J)V

    .line 961
    :cond_12
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 962
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->addAnimation(Landroid/view/animation/AnimationSet;Landroid/view/animation/Animation;)V

    .line 972
    if-nez v36, :cond_24

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_24

    :cond_13
    const/4 v8, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 978
    .end local v21    # "sizeAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .end local v37    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v38    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    .end local v39    # "parent":Landroid/view/ViewParent;
    .end local v41    # "toHeight":I
    .end local v42    # "toWidth":I
    :cond_14
    const/4 v8, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 980
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    if-eqz v8, :cond_15

    .line 981
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 984
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    if-eqz v8, :cond_25

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 985
    const/4 v8, 0x2

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 992
    :goto_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    if-eqz v8, :cond_16

    .line 993
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 996
    :cond_16
    return-object v32

    .line 772
    :cond_17
    invoke-virtual/range {v40 .. v40}, Lorg/appcelerator/titanium/view/TiUIView;->getAnimatedAlpha()F

    move-result v33

    goto/16 :goto_0

    .line 779
    .restart local v33    # "currentAnimatedAlpha":F
    :cond_18
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "opacity"

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 780
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "opacity"

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v35

    .restart local v35    # "fromOpacity":F
    goto/16 :goto_1

    .line 784
    .end local v35    # "fromOpacity":F
    :cond_19
    const/high16 v35, 0x3f800000    # 1.0f

    .restart local v35    # "fromOpacity":F
    goto/16 :goto_1

    .line 815
    .end local v33    # "currentAnimatedAlpha":F
    .end local v35    # "fromOpacity":F
    .restart local v34    # "fromBackgroundColor":I
    :cond_1a
    const-string v8, "TiAnimationBuilder"

    const-string v9, "Cannot animate view without a backgroundColor. View doesn\'t have that property. Using #00000000"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v34

    goto/16 :goto_2

    .line 829
    .end local v34    # "fromBackgroundColor":I
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 835
    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 856
    .restart local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    .restart local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    .restart local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    .restart local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    .restart local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    .restart local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    if-nez v8, :cond_7

    .line 858
    new-instance v13, Lorg/appcelerator/titanium/TiDimension;

    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x3

    invoke-direct {v13, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 859
    .restart local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    const/4 v8, 0x0

    invoke-virtual {v13, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_5

    .line 868
    :cond_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    if-nez v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 870
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 872
    .restart local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_6

    .line 916
    .restart local v4    # "parentView":Landroid/view/View;
    .restart local v11    # "horizontal":[I
    .restart local v19    # "vertical":[I
    .restart local v20    # "animation":Landroid/view/animation/Animation;
    .restart local v39    # "parent":Landroid/view/ViewParent;
    :cond_1f
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 933
    .end local v4    # "parentView":Landroid/view/View;
    .end local v5    # "optionLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v6    # "optionCenterX":Lorg/appcelerator/titanium/TiDimension;
    .end local v7    # "optionRight":Lorg/appcelerator/titanium/TiDimension;
    .end local v11    # "horizontal":[I
    .end local v13    # "optionTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v14    # "optionCenterY":Lorg/appcelerator/titanium/TiDimension;
    .end local v15    # "optionBottom":Lorg/appcelerator/titanium/TiDimension;
    .end local v19    # "vertical":[I
    .end local v20    # "animation":Landroid/view/animation/Animation;
    .end local v39    # "parent":Landroid/view/ViewParent;
    :cond_20
    new-instance v38, Lorg/appcelerator/titanium/TiDimension;

    move/from16 v0, p3

    int-to-double v8, v0

    const/4 v10, 0x6

    move-object/from16 v0, v38

    invoke-direct {v0, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 934
    .restart local v38    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    const/4 v8, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_8

    .line 940
    :cond_21
    new-instance v37, Lorg/appcelerator/titanium/TiDimension;

    move/from16 v0, p4

    int-to-double v8, v0

    const/4 v10, 0x7

    move-object/from16 v0, v37

    invoke-direct {v0, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 941
    .restart local v37    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    const/4 v8, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    goto/16 :goto_9

    .line 951
    .restart local v4    # "parentView":Landroid/view/View;
    .restart local v39    # "parent":Landroid/view/ViewParent;
    :cond_22
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    goto/16 :goto_a

    .line 952
    .restart local v42    # "toWidth":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    goto/16 :goto_b

    .line 972
    .end local v4    # "parentView":Landroid/view/View;
    .restart local v21    # "sizeAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .restart local v41    # "toHeight":I
    :cond_24
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 987
    .end local v21    # "sizeAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$SizeAnimation;
    .end local v37    # "optionHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v38    # "optionWidth":Lorg/appcelerator/titanium/TiDimension;
    .end local v39    # "parent":Landroid/view/ViewParent;
    .end local v41    # "toHeight":I
    .end local v42    # "toWidth":I
    :cond_25
    const/4 v8, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    goto/16 :goto_d
.end method

.method public static isAnimationRunningFor(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1584
    sget-object v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->sRunningViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return v3

    .line 1589
    :cond_1
    sget-object v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->sRunningViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1590
    .local v2, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1591
    .local v1, "refd":Landroid/view/View;
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1592
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private prepareOpacityForAnimation()V
    .locals 2

    .prologue
    .line 1657
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 1658
    .local v0, "tiView":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v0, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1661
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    goto :goto_0
.end method

.method private setAnchor(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1551
    iget v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setAnchor(IIFF)V

    .line 1552
    return-void
.end method

.method private setAnchor(IIFF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "thisAnchorX"    # F
    .param p4, "thisAnchorY"    # F

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 1557
    const/4 v0, 0x0

    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 1559
    .local v1, "pivotY":F
    cmpl-float v2, p3, v3

    if-eqz v2, :cond_0

    .line 1560
    int-to-float v2, p1

    mul-float v0, v2, p3

    .line 1563
    :cond_0
    cmpl-float v2, p4, v3

    if-eqz v2, :cond_1

    .line 1564
    int-to-float v2, p2

    mul-float v1, v2, p4

    .line 1567
    :cond_1
    sget-boolean v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->PRE_HONEYCOMB:Z

    if-eqz v2, :cond_2

    .line 1568
    invoke-direct {p0, v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setViewPivot(FF)V

    .line 1572
    :goto_0
    return-void

    .line 1570
    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setViewPivotHC(FF)V

    goto :goto_0
.end method

.method private static setAnimationRunningFor(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 1607
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setAnimationRunningFor(Landroid/view/View;Z)V

    .line 1608
    return-void
.end method

.method private static setAnimationRunningFor(Landroid/view/View;Z)V
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "running"    # Z

    .prologue
    .line 1620
    if-eqz p1, :cond_1

    .line 1621
    invoke-static {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->isAnimationRunningFor(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1622
    sget-object v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->sRunningViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1626
    :cond_1
    const/4 v2, 0x0

    .line 1628
    .local v2, "toRemove":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    sget-object v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->sRunningViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1629
    .local v3, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1630
    .local v1, "refd":Landroid/view/View;
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1631
    move-object v2, v3

    .line 1636
    .end local v1    # "refd":Landroid/view/View;
    .end local v3    # "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    :cond_3
    if-eqz v2, :cond_0

    .line 1637
    sget-object v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->sRunningViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setViewPivot(FF)V
    .locals 2
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    .line 725
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-static {v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    .line 726
    .local v0, "proxy":Lcom/nineoldandroids/view/animation/AnimatorProxy;
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setPivotX(F)V

    .line 727
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setPivotY(F)V

    .line 728
    return-void
.end method

.method private setViewPivotHC(FF)V
    .locals 1
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 720
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 721
    return-void
.end method


# virtual methods
.method public applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V
    .locals 1
    .param p1, "anim"    # Lorg/appcelerator/titanium/view/TiAnimation;

    .prologue
    .line 242
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    .line 243
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiAnimation;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Ljava/util/HashMap;)V

    .line 244
    return-void
.end method

.method public applyOptions(Ljava/util/HashMap;)V
    .locals 10
    .param p1, "options"    # Ljava/util/HashMap;

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 147
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v4, "anchorPoint"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    const-string v4, "anchorPoint"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "anchorPoint":Ljava/lang/Object;
    instance-of v4, v0, Ljava/util/HashMap;

    if-eqz v4, :cond_10

    move-object v3, v0

    .line 154
    check-cast v3, Ljava/util/HashMap;

    .line 155
    .local v3, "point":Ljava/util/HashMap;
    const-string v4, "x"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    .line 156
    const-string v4, "y"

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    .line 163
    .end local v0    # "anchorPoint":Ljava/lang/Object;
    .end local v3    # "point":Ljava/util/HashMap;
    :cond_1
    :goto_1
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const-string v4, "transform"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 166
    :cond_2
    const-string v4, "delay"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    const-string v4, "delay"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->delay:Ljava/lang/Double;

    .line 170
    :cond_3
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    const-string v4, "duration"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->duration:Ljava/lang/Double;

    .line 174
    :cond_4
    const-string v4, "opacity"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    const-string v4, "opacity"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->toOpacity:Ljava/lang/Double;

    .line 178
    :cond_5
    const-string v4, "repeat"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 179
    const-string v4, "repeat"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/util/HashMap;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 181
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_6

    .line 184
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    .line 190
    :cond_6
    :goto_2
    const-string v4, "autoreverse"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 191
    const-string v4, "autoreverse"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->autoreverse:Ljava/lang/Boolean;

    .line 195
    :cond_7
    const-string v4, "top"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 196
    const-string v4, "top"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->top:Ljava/lang/String;

    .line 199
    :cond_8
    const-string v4, "bottom"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 200
    const-string v4, "bottom"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->bottom:Ljava/lang/String;

    .line 203
    :cond_9
    const-string v4, "left"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 204
    const-string v4, "left"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->left:Ljava/lang/String;

    .line 207
    :cond_a
    const-string v4, "right"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 208
    const-string v4, "right"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->right:Ljava/lang/String;

    .line 211
    :cond_b
    const-string v4, "center"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 212
    const-string v4, "center"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    .local v2, "centerPoint":Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/HashMap;

    if-eqz v4, :cond_12

    move-object v1, v2

    .line 214
    check-cast v1, Ljava/util/HashMap;

    .line 215
    .local v1, "center":Ljava/util/HashMap;
    const-string v4, "x"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerX:Ljava/lang/String;

    .line 216
    const-string v4, "y"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->centerY:Ljava/lang/String;

    .line 224
    .end local v1    # "center":Ljava/util/HashMap;
    .end local v2    # "centerPoint":Ljava/lang/Object;
    :cond_c
    :goto_3
    const-string v4, "width"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 225
    const-string v4, "width"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->width:Ljava/lang/String;

    .line 228
    :cond_d
    const-string v4, "height"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 229
    const-string v4, "height"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->height:Ljava/lang/String;

    .line 232
    :cond_e
    const-string v4, "backgroundColor"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 233
    const-string v4, "backgroundColor"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->backgroundColor:Ljava/lang/Integer;

    .line 237
    :cond_f
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 158
    .restart local v0    # "anchorPoint":Ljava/lang/Object;
    :cond_10
    const-string v4, "TiAnimationBuilder"

    const-string v5, "Invalid argument type for anchorPoint property. Ignoring"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 187
    .end local v0    # "anchorPoint":Ljava/lang/Object;
    :cond_11
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->repeat:Ljava/lang/Double;

    goto/16 :goto_2

    .line 219
    .restart local v2    # "centerPoint":Ljava/lang/Object;
    :cond_12
    const-string v4, "TiAnimationBuilder"

    const-string v5, "Invalid argument type for center property. Ignoring"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    .locals 3
    .param p1, "matrix"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .prologue
    .line 732
    new-instance v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorX:F

    iget v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->anchorY:F

    invoke-direct {v0, p1, v1, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;-><init>(Lorg/appcelerator/titanium/view/Ti2DMatrix;FF)V

    return-object v0
.end method

.method public isUsingPropertyAnimators()Z
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->canUsePropertyAnimators()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 0
    .param p1, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    .line 249
    return-void
.end method

.method public start(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)V
    .locals 1
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1524
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->isAnimationRunningFor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1525
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOverrideCurrentAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1529
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 1532
    :cond_1
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setAnimationRunningFor(Landroid/view/View;)V

    .line 1534
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    .line 1535
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 1537
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->tdm:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->canUsePropertyAnimators()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    :cond_2
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->buildPropertyAnimators()Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1545
    :cond_3
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->buildViewAnimations()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
