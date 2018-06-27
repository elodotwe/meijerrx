.class public Lti/modules/titanium/ui/widget/webview/TiUIWebView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$1;,
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$NonHTCWebView;,
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;,
        Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;
    }
.end annotation


# static fields
.field public static final PLUGIN_STATE_OFF:I = 0x0

.field public static final PLUGIN_STATE_ON:I = 0x1

.field public static final PLUGIN_STATE_ON_DEMAND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TiUIWebView"

.field private static enumPluginStateOff:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static enumPluginStateOn:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static enumPluginStateOnDemand:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field private static final escapeChars:[C

.field private static internalSetPluginState:Ljava/lang/reflect/Method;

.field private static internalWebViewPause:Ljava/lang/reflect/Method;

.field private static internalWebViewResume:Ljava/lang/reflect/Method;


# instance fields
.field private bindingCodeInjected:Z

.field private chromeClient:Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

.field private client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

.field private isLocalHTML:Z

.field private reloadData:Ljava/lang/Object;

.field private reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x25s
        0x23s
        0x27s
        0x3fs
    .end array-data
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 14
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/16 v13, 0x10

    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 185
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 55
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    .line 56
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    .line 73
    sget-object v10, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DEFAULT:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 74
    const/4 v10, 0x0

    iput-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isHTCSenseDevice()Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v9, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V

    .line 188
    .local v9, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :goto_0
    invoke-virtual {v9, v12}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setVerticalScrollbarOverlay(Z)V

    .line 190
    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 191
    .local v6, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 192
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 193
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 194
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 195
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 196
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 197
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiApplication;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 198
    .local v5, "path":Ljava/io/File;
    if-eqz v5, :cond_0

    .line 199
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 203
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v10

    invoke-virtual {v10}, Lorg/appcelerator/titanium/TiApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 204
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 210
    :cond_1
    const/4 v2, 0x1

    .line 212
    .local v2, "enableZoom":Z
    const-string v10, "enableZoomControls"

    invoke-virtual {p1, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 213
    const-string v10, "enableZoomControls"

    invoke-virtual {p1, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 216
    :cond_2
    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 217
    invoke-virtual {v6, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 219
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v13, :cond_3

    .line 220
    invoke-virtual {v6, v12}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 224
    :cond_3
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_4

    .line 225
    invoke-direct {p0, v9}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->initializePluginAPI(Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;)V

    .line 228
    :cond_4
    const-string v10, "enableJavascriptInterface"

    invoke-virtual {p1, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    .line 229
    .local v1, "enableJavascriptInterface":Z
    new-instance v10, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    invoke-direct {v10, p0}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)V

    iput-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->chromeClient:Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    .line 230
    iget-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->chromeClient:Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    invoke-virtual {v9, v10}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 231
    new-instance v10, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-direct {v10, p0, v9}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/webkit/WebView;)V

    iput-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 232
    iget-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v9, v10}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 233
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v10, v13, :cond_5

    if-eqz v1, :cond_6

    .line 234
    :cond_5
    iget-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v10}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v10

    invoke-virtual {v10}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->addJavascriptInterfaces()V

    .line 237
    :cond_6
    iget-object v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    iput-object v10, v9, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    .line 239
    instance-of v10, p1, Lti/modules/titanium/ui/WebViewProxy;

    if-eqz v10, :cond_8

    move-object v8, p1

    .line 240
    check-cast v8, Lti/modules/titanium/ui/WebViewProxy;

    .line 241
    .local v8, "webProxy":Lti/modules/titanium/ui/WebViewProxy;
    invoke-virtual {v8}, Lti/modules/titanium/ui/WebViewProxy;->getBasicAuthenticationUserName()Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "username":Ljava/lang/String;
    invoke-virtual {v8}, Lti/modules/titanium/ui/WebViewProxy;->getBasicAuthenticationPassword()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "password":Ljava/lang/String;
    if-eqz v7, :cond_7

    if-eqz v4, :cond_7

    .line 244
    invoke-virtual {p0, v7, v4}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_7
    invoke-virtual {v8}, Lti/modules/titanium/ui/WebViewProxy;->clearBasicAuthentication()V

    .line 249
    .end local v4    # "password":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    .end local v8    # "webProxy":Lti/modules/titanium/ui/WebViewProxy;
    :cond_8
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    .line 250
    .local v3, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v12, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 251
    iput-boolean v12, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 253
    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setNativeView(Landroid/view/View;)V

    .line 254
    return-void

    .line 187
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v1    # "enableJavascriptInterface":Z
    .end local v2    # "enableZoom":Z
    .end local v3    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "settings":Landroid/webkit/WebSettings;
    .end local v9    # "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :cond_9
    new-instance v9, Lti/modules/titanium/ui/widget/webview/TiUIWebView$NonHTCWebView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$NonHTCWebView;-><init>(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/webview/TiUIWebView;Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->detector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->detector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/webview/TiUIWebView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView;

    .prologue
    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private escapeContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 487
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeChars:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 488
    .local v1, "escapeChar":C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, "regex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "escapeChar":C
    .end local v4    # "regex":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private initializePluginAPI(Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;)V
    .locals 8
    .param p1, "webView"    # Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    .prologue
    .line 264
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 266
    :try_start_1
    sget-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    if-nez v4, :cond_0

    .line 267
    const-string v4, "android.webkit.WebSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 268
    .local v3, "webSettings":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "android.webkit.WebSettings$PluginState"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 270
    .local v2, "pluginState":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "OFF"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 271
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    .line 272
    const-string v4, "ON"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 273
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOn:Ljava/lang/Enum;

    .line 274
    const-string v4, "ON_DEMAND"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 275
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Enum;

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOnDemand:Ljava/lang/Enum;

    .line 276
    const-string v4, "setPluginState"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onPause"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewPause:Ljava/lang/reflect/Method;

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "onResume"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewResume:Ljava/lang/reflect/Method;

    .line 282
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "pluginState":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "webSettings":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    monitor-exit v5

    .line 292
    :goto_0
    return-void

    .line 282
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFound: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 285
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchMethod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchField: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "TiUIWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isHTCSenseDevice()Z
    .locals 11

    .prologue
    .line 162
    const/4 v5, 0x0

    .line 164
    .local v5, "isHTC":Z
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v3

    .line 165
    .local v3, "features":[Landroid/content/pm/FeatureInfo;
    if-nez v3, :cond_0

    move v6, v5

    .line 179
    .end local v5    # "isHTC":Z
    .local v6, "isHTC":I
    :goto_0
    return v6

    .line 168
    .end local v6    # "isHTC":I
    .restart local v5    # "isHTC":Z
    :cond_0
    move-object v0, v3

    .local v0, "arr$":[Landroid/content/pm/FeatureInfo;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v1, v0, v4

    .line 169
    .local v1, "f":Landroid/content/pm/FeatureInfo;
    iget-object v2, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 170
    .local v2, "fName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 171
    const-string v8, "com.htc.software.Sense"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 172
    if-eqz v5, :cond_2

    .line 173
    const-string v8, "TiUIWebView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Detected com.htc.software.Sense feature "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "f":Landroid/content/pm/FeatureInfo;
    .end local v2    # "fName":Ljava/lang/String;
    :cond_1
    move v6, v5

    .line 179
    .restart local v6    # "isHTC":I
    goto :goto_0

    .line 168
    .end local v6    # "isHTC":I
    .restart local v1    # "f":Landroid/content/pm/FeatureInfo;
    .restart local v2    # "fName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private mightBeHtml(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 381
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "mime":Ljava/lang/String;
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    const-string v2, "application/xhtml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 538
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 539
    .local v0, "webView":Landroid/webkit/WebView;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "scalesPageToFit"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 542
    :cond_0
    const/4 v6, 0x1

    .line 543
    .local v6, "enableJavascriptInjection":Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "enableJavascriptInterface"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "enableJavascriptInterface"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v6

    .line 547
    :cond_1
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    .line 548
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v2, v3, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    move v6, v10

    .line 550
    :goto_0
    if-nez v6, :cond_4

    .line 551
    const-string v4, "utf-8"

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :goto_1
    return-void

    :cond_3
    move v6, v1

    .line 548
    goto :goto_0

    .line 555
    :cond_4
    const-string v2, "__ti_injection"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 557
    const-string v4, "utf-8"

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 561
    :cond_5
    const-string v2, "<html"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 562
    .local v9, "tagStart":I
    const/4 v8, -0x1

    .line 563
    .local v8, "tagEnd":I
    if-ltz v9, :cond_7

    .line 564
    const-string v2, ">"

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 566
    if-le v8, v9, :cond_7

    .line 567
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x9c4

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 568
    .local v7, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    sget-object v1, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->SCRIPT_TAG_INJECTION_CODE:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 571
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "utf-8"

    move-object v1, p2

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    goto :goto_1

    .line 579
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    const-string v4, "utf-8"

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public changeProxyUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    const-string v0, "file:///android_asset/Resources/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->URL:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 470
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 472
    :cond_0
    return-void
.end method

.method public destroyWebViewBinding()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->destroy()V

    .line 626
    return-void
.end method

.method public getJSValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->getBinding()Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->getJSValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 705
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 706
    .local v0, "currWebView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 721
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 722
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 727
    return-void
.end method

.method public interceptOnBackPressed()Z
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->chromeClient:Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/webview/TiWebChromeClient;->interceptOnBackPressed()Z

    move-result v0

    return v0
.end method

.method public pauseWebView()V
    .locals 4

    .prologue
    .line 659
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 660
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 661
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 663
    :try_start_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewPause:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 671
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 664
    .restart local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIWebView"

    const-string v3, "Method not supported"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 666
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIWebView"

    const-string v3, "Illegal Access"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v5, 0x0

    .line 297
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 299
    const-string v3, "scalesPageToFit"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 300
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 301
    .local v1, "settings":Landroid/webkit/WebSettings;
    const-string v3, "scalesPageToFit"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 304
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    :cond_0
    const-string v3, "cacheMode"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    const-string v3, "cacheMode"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v0

    .line 306
    .local v0, "mode":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 309
    .end local v0    # "mode":I
    :cond_1
    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "file:///android_asset/Resources/"

    const-string v4, "url"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 310
    const-string v3, "url"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 320
    :cond_2
    :goto_0
    const-string v3, "lightTouchEnabled"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 322
    .restart local v1    # "settings":Landroid/webkit/WebSettings;
    const-string v3, "lightTouchEnabled"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 328
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    :cond_3
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v3, :cond_4

    .line 329
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 332
    :cond_4
    const-string v3, "pluginState"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    const-string v3, "pluginState"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setPluginState(I)V

    .line 336
    :cond_5
    const-string v3, "overScrollMode"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 337
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_6

    .line 338
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    const-string v4, "overScrollMode"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 341
    :cond_6
    return-void

    .line 311
    :cond_7
    const-string v3, "html"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 312
    const-string v3, "html"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "optionsInSetHtml"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {p0, v4, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 313
    :cond_8
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 315
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_2

    .line 316
    check-cast v2, Lorg/appcelerator/titanium/TiBlob;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto/16 :goto_0
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v3, "url"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 347
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 373
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    const-string v3, "background"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "border"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_1
    const/4 v0, 0x1

    .line 374
    .local v0, "isBgRelated":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v3, :cond_2

    .line 375
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 377
    :cond_2
    return-void

    .line 348
    .end local v0    # "isBgRelated":Z
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v3, "html"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 349
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_4
    const-string v3, "data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 351
    instance-of v3, p3, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_0

    .line 352
    check-cast p3, Lorg/appcelerator/titanium/TiBlob;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0

    .line 354
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v3, "scalesPageToFit"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 355
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 356
    .local v1, "settings":Landroid/webkit/WebSettings;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    goto :goto_0

    .line 357
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    :cond_6
    const-string v3, "overScrollMode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 358
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 359
    iget-object v3, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->nativeView:Landroid/view/View;

    invoke-static {p3, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_0

    .line 361
    :cond_7
    const-string v3, "cacheMode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_0

    .line 363
    :cond_8
    const-string v3, "lightTouchEnabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 364
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 365
    .restart local v1    # "settings":Landroid/webkit/WebSettings;
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    goto/16 :goto_0

    .line 367
    .end local v1    # "settings":Landroid/webkit/WebSettings;
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0

    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_a
    move v0, v2

    .line 373
    goto/16 :goto_1
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 731
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$1;->$SwitchMap$ti$modules$titanium$ui$widget$webview$TiUIWebView$reloadTypes:[I

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 760
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 762
    :goto_0
    return-void

    .line 733
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    instance-of v0, v0, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setData(Lorg/appcelerator/titanium/TiBlob;)V

    goto :goto_0

    .line 736
    :cond_0
    const-string v0, "TiUIWebView"

    const-string v1, "reloadMethod points to data but reloadData is null or of wrong type. Calling default"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 742
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 743
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 745
    :cond_2
    const-string v0, "TiUIWebView"

    const-string v1, "reloadMethod points to html but reloadData is of wrong type. Calling default"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 751
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_3
    const-string v0, "TiUIWebView"

    const-string v1, "reloadMethod points to url but reloadData is null or of wrong type. Calling default"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 731
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resumeWebView()V
    .locals 4

    .prologue
    .line 675
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 676
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 677
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 679
    :try_start_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalWebViewResume:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 680
    .restart local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIWebView"

    const-string v3, "Method not supported"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 682
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIWebView"

    const-string v3, "Illegal Access"

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->client:Lti/modules/titanium/ui/widget/webview/TiWebViewClient;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewClient;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method public setBindingCodeInjected(Z)V
    .locals 0
    .param p1, "injected"    # Z

    .prologue
    .line 776
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    .line 777
    return-void
.end method

.method public setData(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 5
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    const/4 v4, 0x1

    .line 584
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->DATA:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 585
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 586
    const-string v1, "text/html"

    .line 591
    .local v1, "mimeType":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "scalesPageToFit"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 595
    :cond_0
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 596
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "fullPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setUrl(Ljava/lang/String;)V

    .line 611
    .end local v0    # "fullPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 604
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 606
    :cond_2
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 607
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->toBase64()Ljava/lang/String;

    move-result-object v3

    const-string v4, "base64"

    invoke-virtual {v2, v3, v1, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_3
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->escapeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v2, v3, v1, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableZoomControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 691
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 692
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 693
    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 2
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 496
    sget-object v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->HTML:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 498
    const-string v0, "file:///android_asset/Resources/"

    const-string v1, "text/html"

    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public setHtml(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p2, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 504
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtml(Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->HTML:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    iput-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 509
    iput-object p2, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 510
    const-string v0, "file:///android_asset/Resources/"

    .line 511
    .local v0, "baseUrl":Ljava/lang/String;
    const-string v1, "text/html"

    .line 512
    .local v1, "mimeType":Ljava/lang/String;
    const-string v2, "baseURL"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    const-string v2, "baseURL"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    :cond_1
    const-string v2, "mimeType"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    const-string v2, "mimeType"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 519
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPluginState(I)V
    .locals 7
    .param p1, "pluginState"    # I

    .prologue
    .line 630
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    .line 631
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;

    .line 632
    .local v2, "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 633
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    if-eqz v2, :cond_0

    .line 635
    packed-switch p1, :pswitch_data_0

    .line 646
    :try_start_0
    const-string v3, "TiUIWebView"

    const-string v4, "Not a valid plugin state. Ignoring setPluginState request"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v1    # "webSettings":Landroid/webkit/WebSettings;
    .end local v2    # "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :cond_0
    :goto_0
    return-void

    .line 637
    .restart local v1    # "webSettings":Landroid/webkit/WebSettings;
    .restart local v2    # "webView":Lti/modules/titanium/ui/widget/webview/TiUIWebView$TiWebView;
    :pswitch_0
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOff:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "TiUIWebView"

    const-string v4, "Method not supported"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 640
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :pswitch_1
    :try_start_1
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOn:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 650
    :catch_1
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "TiUIWebView"

    const-string v4, "Illegal Access"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 643
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :pswitch_2
    :try_start_2
    sget-object v3, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->internalSetPluginState:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->enumPluginStateOnDemand:Ljava/lang/Enum;

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 635
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 21
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-object v17, Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;->URL:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadMethod:Lti/modules/titanium/ui/widget/webview/TiUIWebView$reloadTypes;

    .line 394
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->reloadData:Ljava/lang/Object;

    .line 395
    move-object/from16 v6, p1

    .line 396
    .local v6, "finalUrl":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 397
    .local v16, "uri":Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    const/4 v10, 0x1

    .line 399
    .local v10, "originalUrlHasScheme":Z
    :goto_0
    if-nez v10, :cond_0

    .line 400
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 403
    :cond_0
    invoke-static {v6}, Lorg/appcelerator/titanium/io/TiFileFactory;->isLocalScheme(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->mightBeHtml(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 404
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v15

    .line 405
    .local v15, "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v15, :cond_7

    .line 406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v11, "out":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 409
    .local v7, "fis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v15}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 410
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v17, "utf-8"

    move-object/from16 v0, v17

    invoke-direct {v14, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 411
    .local v14, "reader":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 412
    .local v4, "breader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 413
    .local v9, "line":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_4

    .line 414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 415
    const-string v17, "<html"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 416
    .local v12, "pos":I
    if-ltz v12, :cond_3

    .line 417
    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 418
    .local v13, "posEnd":I
    if-le v13, v12, :cond_3

    .line 419
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    sget-object v17, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->SCRIPT_TAG_INJECTION_CODE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    add-int/lit8 v17, v13, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 422
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_1
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    .line 426
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 427
    goto :goto_1

    .line 397
    .end local v4    # "breader":Ljava/io/BufferedReader;
    .end local v7    # "fis":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "originalUrlHasScheme":Z
    .end local v11    # "out":Ljava/lang/StringBuilder;
    .end local v12    # "pos":I
    .end local v13    # "posEnd":I
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 431
    .restart local v4    # "breader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "originalUrlHasScheme":Z
    .restart local v11    # "out":Ljava/lang/StringBuilder;
    .restart local v14    # "reader":Ljava/io/InputStreamReader;
    .restart local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 435
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    if-eqz v10, :cond_6

    move-object/from16 v17, p1

    :goto_2
    const-string v19, "text/html"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->setHtmlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    if-eqz v7, :cond_5

    .line 445
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    .end local v4    # "breader":Ljava/io/BufferedReader;
    .end local v7    # "fis":Ljava/io/InputStream;
    .end local v9    # "line":Ljava/lang/String;
    .end local v11    # "out":Ljava/lang/StringBuilder;
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    .end local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_5
    :goto_3
    return-void

    .restart local v4    # "breader":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v11    # "out":Ljava/lang/StringBuilder;
    .restart local v14    # "reader":Ljava/io/InputStreamReader;
    .restart local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_6
    move-object/from16 v17, v6

    .line 435
    goto :goto_2

    .line 446
    :catch_0
    move-exception v5

    .line 447
    .local v5, "e":Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 439
    .end local v4    # "breader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v8

    .line 440
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem reading from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Will let WebView try loading it directly."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    if-eqz v7, :cond_7

    .line 445
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 454
    .end local v7    # "fis":Ljava/io/InputStream;
    .end local v8    # "ioe":Ljava/io/IOException;
    .end local v11    # "out":Ljava/lang/StringBuilder;
    .end local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_7
    :goto_4
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "WebView will load "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " directly without code injection."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v17, v0

    const-string v18, "scalesPageToFit"

    invoke-virtual/range {v17 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 459
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 461
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    .line 462
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 446
    .restart local v7    # "fis":Ljava/io/InputStream;
    .restart local v8    # "ioe":Ljava/io/IOException;
    .restart local v11    # "out":Ljava/lang/StringBuilder;
    .restart local v15    # "tiFile":Lorg/appcelerator/titanium/io/TiBaseFile;
    :catch_2
    move-exception v5

    .line 447
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v17, "TiUIWebView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Problem closing stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 443
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    if-eqz v7, :cond_9

    .line 445
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 448
    :cond_9
    :goto_5
    throw v17

    .line 446
    :catch_3
    move-exception v5

    .line 447
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v18, "TiUIWebView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Problem closing stream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 2
    .param p1, "userAgentString"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 698
    .local v0, "currWebView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 701
    :cond_0
    return-void
.end method

.method public shouldInjectBindingCode()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->isLocalHTML:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->bindingCodeInjected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/webview/TiUIWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 767
    return-void
.end method
