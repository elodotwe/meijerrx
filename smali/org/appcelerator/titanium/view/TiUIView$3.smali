.class Lorg/appcelerator/titanium/view/TiUIView$3;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V
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
    .line 583
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 586
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->this$0:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-static {v1}, Lorg/appcelerator/titanium/view/TiUIView;->access$000(Lorg/appcelerator/titanium/view/TiUIView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 588
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 589
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView$3;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const-string v1, "TiUIView"

    const-string v2, "Unable to remove the OnGlobalLayoutListener."

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
