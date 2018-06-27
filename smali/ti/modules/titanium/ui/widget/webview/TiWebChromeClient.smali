.class public Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "TiWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$2;
    }
.end annotation


# static fields
.field private static final CONSOLE_TAG:Ljava/lang/String; = "TiWebChromeClient.console"

.field private static final TAG:Ljava/lang/String; = "TiWebChromeClient"


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)V
    .locals 0
    .param p1, "webView"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 46
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 47
    return-void
.end method


# virtual methods
.method public interceptOnBackPressed()Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->onHideCustomView()V

    .line 168
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "TiWebChromeClient"

    const-string v1, "WebView intercepts the OnBackPressed event to close the full-screen video."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "message"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 57
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$2;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    const-string v0, "TiWebChromeClient.console"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 59
    :pswitch_0
    const-string v0, "TiWebChromeClient.console"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v7, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    .line 90
    .local v4, "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v4, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v6

    .line 94
    :cond_1
    const-string v7, "onCreateWindow"

    invoke-virtual {v4, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "onCreateWindow":Ljava/lang/Object;
    instance-of v7, v2, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v7, :cond_0

    move-object v3, v2

    .line 99
    check-cast v3, Lorg/appcelerator/kroll/KrollFunction;

    .line 100
    .local v3, "onCreateWindowFunction":Lorg/appcelerator/kroll/KrollFunction;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "isDialog"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v7, "isUserGesture"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v7

    invoke-interface {v3, v7, v0}, Lorg/appcelerator/kroll/KrollFunction;->call(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v5

    .line 105
    .local v5, "result":Ljava/lang/Object;
    instance-of v7, v5, Lti/modules/titanium/ui/WebViewProxy;

    if-eqz v7, :cond_0

    move-object v1, v5

    .line 106
    check-cast v1, Lti/modules/titanium/ui/WebViewProxy;

    .line 107
    .local v1, "newProxy":Lti/modules/titanium/ui/WebViewProxy;
    invoke-virtual {v1, p4}, Lti/modules/titanium/ui/WebViewProxy;->setPostCreateMessage(Landroid/os/Message;)V

    .line 108
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 117
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 118
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 51
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 52
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 150
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomView:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 161
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 70
    const-string v0, "Alert"

    new-instance v1, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;

    invoke-direct {v1, p0, p4}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient$1;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;Landroid/webkit/JsResult;)V

    invoke-static {v0, p3, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v4, -0x1

    .line 123
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 127
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->tiWebView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_2

    .line 135
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 136
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomView:Landroid/view/View;

    .line 142
    iput-object p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 143
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
