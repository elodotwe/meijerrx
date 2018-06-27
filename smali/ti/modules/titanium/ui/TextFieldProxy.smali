.class public Lti/modules/titanium/ui/TextFieldProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TextFieldProxy.java"


# static fields
.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_GET_SELECTION:I = 0x586

.field private static final MSG_SET_SELECTION:I = 0x585


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/TextFieldProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "value"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/TextFieldProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "maxLength"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 63
    invoke-direct {p0}, Lti/modules/titanium/ui/TextFieldProxy;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIText;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIText;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Z)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "Ti.UI.TextField"

    return-object v0
.end method

.method public getSelection()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 105
    .local v0, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lti/modules/titanium/ui/widget/TiUIText;

    .end local v0    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIText;->getSelection()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 109
    .restart local v0    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x586

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 119
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    .line 121
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    .line 122
    .local v3, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v3, :cond_0

    .line 123
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .local v1, "argsObj":Ljava/lang/Object;
    instance-of v5, v1, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 125
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 126
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    check-cast v3, Lti/modules/titanium/ui/widget/TiUIText;

    .end local v3    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    const-string v5, "start"

    invoke-virtual {v0, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "stop"

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lti/modules/titanium/ui/widget/TiUIText;->setSelection(II)V

    goto :goto_0

    .line 132
    .end local v0    # "args":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "argsObj":Ljava/lang/Object;
    :pswitch_1
    const/4 v2, 0x0

    .line 133
    .local v2, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v2, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 134
    .restart local v2    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    .line 135
    .restart local v3    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v3, :cond_1

    .line 136
    check-cast v3, Lti/modules/titanium/ui/widget/TiUIText;

    .end local v3    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUIText;->getSelection()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .restart local v3    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x585
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasText()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 81
    const-string v1, "value"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TextFieldProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "text":Ljava/lang/Object;
    const-string v1, ""

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelection(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 89
    .local v1, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    check-cast v1, Lti/modules/titanium/ui/widget/TiUIText;

    .end local v1    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v1, p1, p2}, Lti/modules/titanium/ui/widget/TiUIText;->setSelection(II)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v1    # "v":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 95
    .local v0, "args":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "start"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "stop"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lti/modules/titanium/ui/TextFieldProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x585

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
