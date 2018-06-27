.class public Lti/modules/titanium/ui/WebViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "WebViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
.implements Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;


# static fields
.field private static final MSG_CAN_GO_BACK:I = 0x528

.field private static final MSG_CAN_GO_FORWARD:I = 0x529

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_GET_USER_AGENT:I = 0x527

.field private static final MSG_GO_BACK:I = 0x521

.field private static final MSG_GO_FORWARD:I = 0x522

.field protected static final MSG_LAST_ID:I = 0x8a3

.field private static final MSG_PAUSE:I = 0x52b

.field private static final MSG_RELEASE:I = 0x52a

.field private static final MSG_RELOAD:I = 0x523

.field private static final MSG_RESUME:I = 0x52c

.field private static final MSG_SET_HTML:I = 0x525

.field private static final MSG_SET_USER_AGENT:I = 0x526

.field private static final MSG_STOP_LOADING:I = 0x524

.field public static final OPTIONS_IN_SETHTML:Ljava/lang/String; = "optionsInSetHtml"

.field private static final TAG:Ljava/lang/String; = "WebViewProxy"

.field private static fpassword:Ljava/lang/String;

.field private static fusername:Ljava/lang/String;


# instance fields
.field private postCreateMessage:Landroid/os/Message;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "overScrollMode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "lightTouchEnabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "enableJavascriptInterface"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 78
    invoke-direct {p0}, Lti/modules/titanium/ui/WebViewProxy;-><init>()V

    .line 79
    return-void
.end method

.method private static sendPostCreateMessage(Landroid/webkit/WebView;Landroid/os/Message;)V
    .locals 1
    .param p0, "view"    # Landroid/webkit/WebView;
    .param p1, "postCreateMessage"    # Landroid/os/Message;

    .prologue
    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 390
    .local v0, "transport":Landroid/webkit/WebView$WebViewTransport;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 394
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoBack()Z

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x528

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 262
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoForward()Z

    move-result v0

    .line 268
    :goto_0
    return v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x529

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearBasicAuthentication()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 364
    sput-object v0, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    .line 365
    sput-object v0, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    move-object v1, p1

    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 85
    check-cast p1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addInterceptOnBackPressedEventListener(Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;)V

    .line 86
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 88
    .local v0, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    iget-object v1, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    invoke-static {v1, v2}, Lti/modules/titanium/ui/WebViewProxy;->sendPostCreateMessage(Landroid/webkit/WebView;Landroid/os/Message;)V

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    .line 93
    :cond_0
    return-object v0
.end method

.method public evalJS(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 110
    .local v0, "view":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-nez v0, :cond_0

    .line 111
    const-string v1, "WebViewProxy"

    const-string v2, "WebView not available, returning null for evalJS result."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    .line 114
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    const-string v0, "Ti.UI.WebView"

    return-object v0
.end method

.method public getBasicAuthenticationPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    return-object v0
.end method

.method public getBasicAuthenticationUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableZoomControls()Z
    .locals 2

    .prologue
    .line 354
    const/4 v0, 0x1

    .line 356
    .local v0, "enabled":Z
    const-string v1, "enableZoomControls"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    const-string v1, "enableZoomControls"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 359
    :cond_0
    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const-string v0, "html"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    const-string v1, "document.documentElement.outerHTML"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "html"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPluginState()I
    .locals 2

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "pluginState":I
    const-string v1, "pluginState"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const-string v1, "pluginState"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 304
    :cond_0
    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    .line 235
    .local v0, "currWebView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-eqz v0, :cond_1

    .line 236
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x527

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 275
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 147
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 148
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 199
    :cond_0
    invoke-super {p0, p1}, Lti/modules/titanium/ui/ViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v4

    :goto_0
    return v4

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goBack()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->goForward()V

    goto :goto_0

    .line 156
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reload()V

    goto :goto_0

    .line 159
    :pswitch_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->stopLoading()V

    goto :goto_0

    .line 162
    :pswitch_4
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 166
    .local v2, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 171
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoBack()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 176
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->canGoForward()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_8
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 181
    .local v3, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->destroyWebViewBinding()V

    .line 184
    :cond_1
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->releaseViews()V

    goto :goto_0

    .line 187
    .end local v3    # "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    :pswitch_9
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->pauseWebView()V

    goto :goto_0

    .line 190
    :pswitch_a
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->resumeWebView()V

    goto/16 :goto_0

    .line 193
    :pswitch_b
    const-string v5, "html"

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "html":Ljava/lang/String;
    const-string v5, "optionsInSetHtml"

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 195
    .local v0, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x521
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public interceptOnBackPressed()Z
    .locals 2

    .prologue
    .line 417
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 418
    .local v0, "view":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-nez v0, :cond_0

    .line 419
    const/4 v1, 0x0

    .line 421
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->interceptOnBackPressed()Z

    move-result v1

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 444
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 445
    .local v1, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-nez v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->destroyWebViewBinding()V

    .line 454
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 455
    .local v0, "nativeWebView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 460
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->releaseViews()V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 435
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->pause()V

    .line 436
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 430
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->resume()V

    .line 431
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 426
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 440
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->pauseWebView()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x52b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->releaseViews()V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x52a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->resumeWebView()V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x52c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 207
    sput-object p1, Lti/modules/titanium/ui/WebViewProxy;->fusername:Ljava/lang/String;

    .line 208
    sput-object p2, Lti/modules/titanium/ui/WebViewProxy;->fpassword:Ljava/lang/String;

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->clearBasicAuthentication()V

    .line 212
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableZoomControls(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 348
    const-string v0, "enableZoomControls"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/WebViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public setHtml(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "d"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 129
    const-string v1, "html"

    invoke-virtual {p0, v1, p1}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v1, "optionsInSetHtml"

    invoke-virtual {p0, v1, p2}, Lti/modules/titanium/ui/WebViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 135
    .local v0, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    check-cast v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .end local v0    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v0    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x525

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setPluginState(I)V
    .locals 2
    .param p1, "pluginState"    # I

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_0

    .line 317
    const-string v0, "pluginState"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/WebViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    :goto_0
    return-void

    .line 314
    :pswitch_0
    const-string v0, "pluginState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/WebViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPostCreateMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "postCreateMessage"    # Landroid/os/Message;

    .prologue
    .line 380
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lti/modules/titanium/ui/WebViewProxy;->sendPostCreateMessage(Landroid/webkit/WebView;Landroid/os/Message;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/WebViewProxy;->postCreateMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getWebView()Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    move-result-object v0

    .line 220
    .local v0, "currWebView":Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUserAgentString(Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x526

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 225
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lti/modules/titanium/ui/WebViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x524

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 293
    return-void
.end method
