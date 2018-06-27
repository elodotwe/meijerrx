.class Lorg/appcelerator/titanium/view/TiUIView$2;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->startTransformAfterLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/view/TiUIView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 527
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$v:Landroid/view/View;

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->isAnimationRunningFor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 538
    :goto_0
    return v1

    .line 532
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$2;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    const-string v1, "TiUIView"

    const-string v2, "Unable to remove the OnPreDrawListener."

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
