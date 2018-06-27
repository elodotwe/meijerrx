.class Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener$1;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;)V
    .locals 0

    .prologue
    .line 1386
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener$1;->this$1:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    .line 1389
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener$1;->this$1:Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    const-string v1, "complete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiAnimation;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1391
    const/4 v0, 0x0

    return v0
.end method
