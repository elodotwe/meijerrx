.class public abstract Lti/modules/titanium/android/TiJSActivity;
.super Lorg/appcelerator/titanium/TiLaunchActivity;
.source "TiJSActivity.java"


# instance fields
.field protected activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    .line 37
    iput-object p1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    .line 28
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setActivity(Landroid/app/Activity;)V

    .line 29
    iput-object p1, p0, Lti/modules/titanium/android/TiJSActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .line 30
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method protected contextCreated()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->contextCreated()V

    .line 58
    new-instance v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;

    invoke-direct {v0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;-><init>()V

    .line 59
    .local v0, "window":Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;->setActivity(Landroid/app/Activity;)V

    .line 60
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiBindingHelper;->bindCurrentWindow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 61
    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 62
    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSActivity;->setLayoutProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 63
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lti/modules/titanium/android/TiJSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->url:Ljava/lang/String;

    return-object v1

    .line 48
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity url required."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isJSActivity()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected scriptLoaded()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->scriptLoaded()V

    .line 69
    iget-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;->open()V

    .line 70
    return-void
.end method

.method protected windowCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    iget-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/TiJSActivity;->setLayoutProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 79
    new-instance v1, Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    iget-object v0, p0, Lti/modules/titanium/android/TiJSActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;

    invoke-virtual {p0}, Lti/modules/titanium/android/TiJSActivity;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lorg/appcelerator/titanium/view/TiUIActivityWindow;-><init>(Lorg/appcelerator/titanium/proxy/TiActivityWindowProxy;Lti/modules/titanium/android/TiJSActivity;Landroid/view/View;)V

    iput-object v1, p0, Lti/modules/titanium/android/TiJSActivity;->activityWindow:Lorg/appcelerator/titanium/view/TiUIActivityWindow;

    .line 80
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->windowCreated(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method
