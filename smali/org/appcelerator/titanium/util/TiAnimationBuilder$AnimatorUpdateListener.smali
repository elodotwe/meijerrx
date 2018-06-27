.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimatorUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 1316
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorUpdateListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1317
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1319
    check-cast v0, Landroid/view/View;

    .end local v0    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1321
    :cond_0
    return-void
.end method
