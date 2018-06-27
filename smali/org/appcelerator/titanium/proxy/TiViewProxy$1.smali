.class Lorg/appcelerator/titanium/proxy/TiViewProxy$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TiViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 798
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 799
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy$1;->this$0:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iget-object v0, v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->hide()V

    .line 800
    return-void
.end method
