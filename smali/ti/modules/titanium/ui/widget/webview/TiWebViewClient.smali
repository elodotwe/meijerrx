.class public Lti/modules/titanium/ui/widget/webview/TiWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "TiWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiWVC"


# instance fields
.field private binding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "tiWebView"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    .param p2, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 40
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .line 41
    new-instance v0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {v0, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->binding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    .line 42
    return-void
.end method

.method private shouldHandleMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 140
    const-string v2, "video/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lti/modules/titanium/media/TiVideoActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    const-string v2, "contentURL"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "play"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->binding:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    return-object v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 203
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 204
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "onLoadResource"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/WebViewProxy;

    .line 49
    .local v3, "proxy":Lti/modules/titanium/ui/WebViewProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v4, p2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->changeProxyUrl(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 51
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "url"

    invoke-virtual {v0, v4, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v4, "load"

    invoke-virtual {v3, v4, v0}, Lti/modules/titanium/ui/WebViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 53
    const/4 v1, 0x1

    .line 54
    .local v1, "enableJavascriptInjection":Z
    const-string v4, "enableJavascriptInterface"

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/WebViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "enableJavascriptInterface"

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/WebViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    .line 57
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-gt v4, v5, :cond_1

    if-eqz v1, :cond_3

    .line 58
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 60
    .local v2, "nativeWebView":Landroid/webkit/WebView;
    if-eqz v2, :cond_3

    .line 61
    iget-object v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->shouldInjectBindingCode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->INJECTION_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->POLLING_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    .end local v2    # "nativeWebView":Landroid/webkit/WebView;
    :cond_3
    iget-object v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBindingCodeInjected(Z)V

    .line 68
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 81
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "beforeload"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 91
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "errorCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {v0, p2, p3}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 94
    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->password:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->username:Ljava/lang/String;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->password:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 176
    iget-object v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 178
    .local v3, "webViewProxy":Lorg/appcelerator/kroll/KrollProxy;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 179
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "code"

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v4, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v4

    const-string v5, "sslerror"

    invoke-virtual {v4, v5, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "ignoreSslError":Z
    :try_start_0
    invoke-virtual {v3}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    const-string v5, "ignoreSslError"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 190
    :goto_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 191
    const-string v4, "TiWVC"

    const-string v5, "ran into SSL error but ignoring..."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 197
    :goto_1
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TiWVC"

    const-string v5, "ignoreSslError property does not contain a boolean value, ignoring"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v4, "TiWVC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSL error occurred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->username:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->password:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 102
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p2}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    :cond_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v6, v7, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :goto_0
    return v5

    .line 108
    :cond_1
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching dialer for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "Choose Dialer"

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, "dialer":Landroid/content/Intent;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v0    # "dialer":Landroid/content/Intent;
    :cond_2
    const-string v6, "mailto:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching mailer for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SENDTO"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "Send Message"

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 116
    .local v3, "mailer":Landroid/content/Intent;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 118
    .end local v3    # "mailer":Landroid/content/Intent;
    :cond_3
    const-string v6, "geo:0,0?q="

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    const-string v6, "TiWVC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Launching app for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "Choose Viewer"

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 126
    .local v2, "geoviewer":Landroid/content/Intent;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->webView:Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 129
    .end local v2    # "geoviewer":Landroid/content/Intent;
    :cond_4
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 132
    invoke-direct {p0, v4, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->shouldHandleMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .line 134
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method
