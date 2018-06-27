.class public Lti/modules/titanium/ui/ActivityIndicatorProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ActivityIndicatorProxy.java"


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_SHOW:I = 0x138


# instance fields
.field visible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 36
    iput-boolean v2, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->visible:Z

    .line 41
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "visible"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 46
    invoke-direct {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 53
    .local v0, "view":Lorg/appcelerator/titanium/view/TiUIView;
    iget-boolean v1, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->visible:Z

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x138

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 56
    :cond_0
    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "Ti.UI.ActivityIndicator"

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 73
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "message"

    const-string v2, "messageid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object v0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->visible:Z

    .line 93
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 95
    .local v0, "ai":Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->hide()V

    .line 99
    .end local v0    # "ai":Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 64
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x138
        :pswitch_0
    .end packed-switch
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->visible:Z

    .line 81
    iget-object v1, p0, Lti/modules/titanium/ui/ActivityIndicatorProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/ui/ActivityIndicatorProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;

    .line 83
    .local v0, "ai":Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIActivityIndicator;->show()V

    .line 87
    .end local v0    # "ai":Lti/modules/titanium/ui/widget/TiUIActivityIndicator;
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method
