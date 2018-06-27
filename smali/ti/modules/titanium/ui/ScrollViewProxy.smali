.class public Lti/modules/titanium/ui/ScrollViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ScrollViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field protected static final MSG_LAST_ID:I = 0x4bb

.field private static final MSG_SCROLL_TO:I = 0x138

.field private static final MSG_SCROLL_TO_BOTTOM:I = 0x139


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 46
    iget-object v1, p0, Lti/modules/titanium/ui/ScrollViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v2, "overScrollMode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 48
    .local v0, "offset":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "y"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lti/modules/titanium/ui/ScrollViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v2, "contentOffset"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 55
    invoke-direct {p0}, Lti/modules/titanium/ui/ScrollViewProxy;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIScrollView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "Ti.UI.ScrollView"

    return-object v0
.end method

.method public getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIScrollView;

    return-object v0
.end method

.method public getScrollingEnabled()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->getScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 106
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x138

    if-ne v2, v3, :cond_0

    .line 107
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 109
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 117
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :goto_0
    return v1

    .line 111
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x139

    if-ne v2, v3, :cond_1

    .line 112
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    .line 113
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 114
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public handleScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollTo(II)V

    .line 122
    return-void
.end method

.method public handleScrollToBottom()V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollView;->scrollToBottom()V

    .line 126
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 69
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollTo(II)V

    goto :goto_0
.end method

.method public scrollToBottom()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->handleScrollToBottom()V

    goto :goto_0
.end method

.method public setScrollingEnabled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "enabled"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0}, Lti/modules/titanium/ui/ScrollViewProxy;->getScrollView()Lti/modules/titanium/ui/widget/TiUIScrollView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollView;->setScrollingEnabled(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
