.class Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
.super Landroid/webkit/WebView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiWebView"
.end annotation


# instance fields
.field public client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 82
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 83
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroy()V

    .line 91
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 92
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 131
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 132
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$400(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 133
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    const/4 v0, 0x0

    .line 107
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getHeight()I

    move-result v7

    invoke-direct {v1, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-static {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$100(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    const-string v7, "click"

    iget-object v8, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-static {v8, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$000(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 114
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_0
    const/4 v3, 0x0

    .line 117
    .local v3, "swipeHandled":Z
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-static {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$200(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Landroid/view/GestureDetector;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 118
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-static {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$300(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 123
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 125
    .local v2, "superHandled":Z
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    return v4
.end method
