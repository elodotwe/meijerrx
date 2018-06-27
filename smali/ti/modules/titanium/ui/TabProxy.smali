.class public Lti/modules/titanium/ui/TabProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TabProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TabProxy"


# instance fields
.field private tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

.field private window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

.field private windowId:I

.field private windowOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/TabProxy;->windowOpened:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 46
    invoke-direct {p0}, Lti/modules/titanium/ui/TabProxy;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method close(Z)V
    .locals 3
    .param p1, "activityIsFinishing"    # Z

    .prologue
    .line 231
    iget-boolean v1, p0, Lti/modules/titanium/ui/TabProxy;->windowOpened:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/TabProxy;->windowOpened:Z

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    if-nez p1, :cond_0

    .line 235
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 236
    .restart local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "_closeFromActivityForcedToDestroy"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "close"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 240
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/TabGroupProxy;->getActiveTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v1

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    .line 79
    :cond_0
    return v0
.end method

.method public getActiveTabColor()I
    .locals 3

    .prologue
    .line 176
    const-string v1, "backgroundSelectedColor"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "color":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 178
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    const-string v2, "activeTabBackgroundColor"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    :cond_0
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    .line 185
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "Ti.UI.Tab"

    return-object v0
.end method

.method protected getLangConversionTable()Lorg/appcelerator/kroll/KrollDict;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 53
    .local v0, "table":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "title"

    const-string v2, "titleid"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object v0
.end method

.method public getTabColor()I
    .locals 3

    .prologue
    .line 195
    const-string v1, "backgroundColor"

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "color":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 197
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    const-string v2, "tabsBackgroundColor"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    :cond_0
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    .line 204
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTabGroup()Lti/modules/titanium/ui/TabGroupProxy;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    return-object v0
.end method

.method public getWindow()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    return-object v0
.end method

.method public getWindowId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lti/modules/titanium/ui/TabProxy;->windowId:I

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    const-string v1, "window"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "window":Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .end local v0    # "window":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabProxy;->setWindow(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 71
    :cond_0
    return-void
.end method

.method onFocusChanged(ZLorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .param p1, "focused"    # Z
    .param p2, "eventData"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 210
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/TabProxy;->windowOpened:Z

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "loadUrl"

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->callPropertySync(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iput-boolean v5, p0, Lti/modules/titanium/ui/TabProxy;->windowOpened:Z

    .line 214
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v2, "open"

    invoke-virtual {v1, v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 221
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "focus"

    .line 223
    .local v0, "event":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v1, v0, v3, v4}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 226
    :cond_1
    invoke-virtual {p0, v0, p2, v5}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 228
    return-void

    .line 221
    .end local v0    # "event":Ljava/lang/String;
    :cond_2
    const-string v0, "blur"

    goto :goto_0
.end method

.method onSelectionChanged(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 246
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 247
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 252
    .end local v0    # "currentActivity":Landroid/app/Activity;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;

    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTab;->onSelectionChange(Z)V

    .line 253
    return-void
.end method

.method public releaseViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 154
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 156
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 157
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 159
    :cond_0
    return-void
.end method

.method public releaseViewsForActivityForcedToDestroy()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 164
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 167
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/TabGroupProxy;->setActiveTab(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V
    .locals 1
    .param p1, "tabGroupProxy"    # Lti/modules/titanium/ui/TabGroupProxy;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TabProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 130
    iput-object p1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    .line 132
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setWindow(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V
    .locals 3
    .param p1, "window"    # Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .prologue
    const/4 v2, 0x0

    .line 92
    iput-object p1, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    .line 97
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "window"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 105
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    iget-object v1, p0, Lti/modules/titanium/ui/TabProxy;->tabGroupProxy:Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setTabGroupProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v1, "addedtotab"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/TabProxy;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    const-string v1, "addedToTab"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->fireSyncEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setWindowId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 142
    iput p1, p0, Lti/modules/titanium/ui/TabProxy;->windowId:I

    .line 143
    return-void
.end method
