.class public abstract Lorg/appcelerator/titanium/view/TiUIFragment;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static viewId:I


# instance fields
.field private fragment:Landroid/support/v4/app/Fragment;

.field protected fragmentOnly:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x3e8

    sput v0, Lorg/appcelerator/titanium/view/TiUIFragment;->viewId:I

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 23
    iput-boolean v4, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragmentOnly:Z

    .line 31
    const-string v3, "fragmentOnly"

    invoke-virtual {p1, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-string v3, "fragmentOnly"

    invoke-virtual {p1, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragmentOnly:Z

    .line 35
    :cond_0
    iget-boolean v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragmentOnly:Z

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIFragment;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    .line 56
    .end local p2    # "activity":Landroid/app/Activity;
    :goto_0
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getMainMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->handler:Landroid/os/Handler;

    .line 58
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIFragment;->sendMessage()V

    .line 60
    return-void

    .line 38
    .restart local p2    # "activity":Landroid/app/Activity;
    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIFragment$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/appcelerator/titanium/view/TiUIFragment$1;-><init>(Lorg/appcelerator/titanium/view/TiUIFragment;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 46
    .local v0, "container":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    sget v3, Lorg/appcelerator/titanium/view/TiUIFragment;->viewId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/appcelerator/titanium/view/TiUIFragment;->viewId:I

    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setId(I)V

    .line 47
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIFragment;->setNativeView(Landroid/view/View;)V

    .line 49
    check-cast p2, Landroid/support/v4/app/FragmentActivity;

    .end local p2    # "activity":Landroid/app/Activity;
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 50
    .local v1, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 51
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIFragment;->createFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    .line 52
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->getId()I

    move-result v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 53
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method protected abstract createFragment()Landroid/support/v4/app/Fragment;
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIFragment;->onViewCreated()V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onViewCreated()V
.end method

.method public release()V
    .locals 5

    .prologue
    .line 89
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 91
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x1020011

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 94
    .local v2, "tabFragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 96
    .local v0, "childManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 100
    .end local v0    # "childManager":Landroid/support/v4/app/FragmentManager;
    :goto_0
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 104
    .end local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "tabFragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 105
    return-void

    .line 98
    .restart local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .restart local v2    # "tabFragment":Landroid/support/v4/app/Fragment;
    .restart local v3    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    goto :goto_0
.end method

.method public sendMessage()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    :cond_0
    return-void
.end method
