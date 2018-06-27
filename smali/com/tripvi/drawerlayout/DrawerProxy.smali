.class public Lcom/tripvi/drawerlayout/DrawerProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "DrawerProxy.java"


# static fields
.field private static final MSG_ARROW_STATE:I = 0x526

.field private static final MSG_CLOSE_LEFT_VIEW:I = 0x524

.field private static final MSG_CLOSE_RIGHT_VIEW:I = 0x525

.field private static final MSG_FIRST_ID:I = 0x4bc

.field protected static final MSG_LAST_ID:I = 0x8a3

.field private static final MSG_OPEN_LEFT_VIEW:I = 0x522

.field private static final MSG_OPEN_RIGHT_VIEW:I = 0x523

.field private static final MSG_TOGGLE_LEFT_VIEW:I = 0x520

.field private static final MSG_TOGGLE_RIGHT_VIEW:I = 0x521

.field private static final TAG:Ljava/lang/String; = "TripviDrawer"


# instance fields
.field private drawer:Lcom/tripvi/drawerlayout/Drawer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 34
    return-void
.end method

.method private handleArrowState(Ljava/lang/Float;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Float;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0, p1}, Lcom/tripvi/drawerlayout/Drawer;->setArrowState(Ljava/lang/Float;)V

    .line 107
    return-void
.end method

.method private handleCloseLeftView()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->closeLeftDrawer()V

    .line 91
    return-void
.end method

.method private handleCloseRightView()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->closeRightDrawer()V

    .line 103
    return-void
.end method

.method private handleOpenLeftView()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->openLeftDrawer()V

    .line 87
    return-void
.end method

.method private handleOpenRightView()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->openRightDrawer()V

    .line 99
    return-void
.end method

.method private handleToggleLeftView()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->toggleLeftDrawer()V

    .line 83
    return-void
.end method

.method private handleToggleRightView()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->toggleRightDrawer()V

    .line 95
    return-void
.end method


# virtual methods
.method public closeLeftWindow()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleCloseLeftView()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x524

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public closeRightWindow()V
    .locals 3

    .prologue
    .line 161
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleCloseRightView()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x525

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 38
    new-instance v0, Lcom/tripvi/drawerlayout/Drawer;

    invoke-direct {v0, p0}, Lcom/tripvi/drawerlayout/Drawer;-><init>(Lcom/tripvi/drawerlayout/DrawerProxy;)V

    iput-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    .line 39
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 40
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v0

    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 41
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    return-object v0
.end method

.method public getIsLeftDrawerOpen()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->isLeftDrawerOpen()Z

    move-result v0

    return v0
.end method

.method public getIsLeftDrawerVisible()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->isLeftDrawerVisible()Z

    move-result v0

    return v0
.end method

.method public getIsRightDrawerOpen()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->isRightDrawerOpen()Z

    move-result v0

    return v0
.end method

.method public getIsRightDrawerVisible()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerProxy;->drawer:Lcom/tripvi/drawerlayout/Drawer;

    invoke-virtual {v0}, Lcom/tripvi/drawerlayout/Drawer;->isRightDrawerVisible()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :pswitch_0
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleToggleLeftView()V

    move v0, v1

    .line 49
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleOpenLeftView()V

    move v0, v1

    .line 53
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleCloseLeftView()V

    move v0, v1

    .line 57
    goto :goto_0

    .line 60
    :pswitch_3
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleToggleRightView()V

    move v0, v1

    .line 61
    goto :goto_0

    .line 64
    :pswitch_4
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleOpenRightView()V

    move v0, v1

    .line 65
    goto :goto_0

    .line 68
    :pswitch_5
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleCloseRightView()V

    move v0, v1

    .line 69
    goto :goto_0

    .line 72
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleArrowState(Ljava/lang/Float;)V

    move v0, v1

    .line 73
    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x520
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public interceptTouchEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "view"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "disallowIntercept"    # Ljava/lang/Boolean;

    .prologue
    .line 249
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 250
    return-void
.end method

.method public openLeftWindow()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleOpenLeftView()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x522

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public openRightWindow()V
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleOpenRightView()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x523

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public replaceCenterView(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "backstack"    # Z

    .prologue
    .line 225
    const-string v0, "TripviDrawer"

    const-string v1, "replaceCenterView is deprecated. Please use setCenterView instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "centerView"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public setArrowState(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x526

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method public setCenterView(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 220
    const-string v0, "centerView"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public setDrawerIndicatorEnabled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 232
    const-string v0, "drawerIndicatorEnabled"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public setDrawerIndicatorImage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 244
    const-string v0, "drawerIndicatorImage"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public setDrawerLockMode(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 238
    const-string v0, "drawerLockMode"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public setLeftDrawerWidth(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 196
    const-string v0, "leftDrawerWidth"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public setLeftView(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 202
    const-string v0, "leftView"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public setRightDrawerWidth(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 208
    const-string v0, "rightDrawerWidth"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public setRightView(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 214
    const-string v0, "rightView"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public setToolbarHidden(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 261
    const-string v0, "hideToolbar"

    invoke-virtual {p0, v0, p1}, Lcom/tripvi/drawerlayout/DrawerProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public toggleLeftWindow(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleToggleLeftView()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x520

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public toggleRightWindow(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 141
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->handleToggleRightView()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x521

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
