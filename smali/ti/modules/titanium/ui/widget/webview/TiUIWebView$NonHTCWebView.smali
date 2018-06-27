.class Lti/modules/titanium/ui/widget/webview/TiUIWebView$NonHTCWebView;
.super Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonHTCWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$NonHTCWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 141
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$NonHTCWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$500(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    const-string v4, "softKeyboardOnFocus"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$NonHTCWebView;->this$0:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->access$600(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    const-string v4, "softKeyboardOnFocus"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v0

    .line 150
    .local v0, "value":I
    if-ne v0, v2, :cond_0

    .line 156
    .end local v0    # "value":I
    :goto_0
    return v1

    .line 152
    .restart local v0    # "value":I
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v1, v2

    .line 153
    goto :goto_0

    .line 156
    .end local v0    # "value":I
    :cond_1
    invoke-super {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->onCheckIsTextEditor()Z

    move-result v1

    goto :goto_0
.end method
