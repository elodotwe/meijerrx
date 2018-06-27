.class public Lti/modules/titanium/ui/TabGroupProxy;
.super Lorg/appcelerator/titanium/proxy/TiWindowProxy;
.source "TabGroupProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiActivityWindow;


# static fields
.field private static final MSG_ADD_TAB:I = 0x520

.field private static final MSG_DISABLE_TAB_NAVIGATION:I = 0x525

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_GET_ACTIVE_TAB:I = 0x523

.field protected static final MSG_LAST_ID:I = 0x8a3

.field private static final MSG_REMOVE_TAB:I = 0x521

.field private static final MSG_SET_ACTIVE_TAB:I = 0x522

.field private static final MSG_SET_TABS:I = 0x524

.field private static final PROPERTY_POST_TAB_GROUP_CREATED:Ljava/lang/String; = "postTabGroupCreated"

.field private static final TAG:Ljava/lang/String; = "TabGroupProxy"


# instance fields
.field private isFocused:Z

.field private selectedTab:Lti/modules/titanium/ui/TabProxy;

.field private tabGroupActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 67
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "swipeable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "smoothScrollOnTabClick"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 74
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;-><init>()V

    .line 75
    return-void
.end method

.method private fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 509
    const/4 v1, 0x0

    .line 510
    .local v1, "windowFlags":I
    const-string v2, "windowFlags"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    const-string v2, "windowFlags"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    .line 515
    :cond_0
    const-string v2, "fullscreen"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    const-string v2, "fullscreen"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 517
    .local v0, "flagVal":Z
    if-eqz v0, :cond_1

    .line 518
    or-int/lit16 v1, v1, 0x400

    .line 523
    .end local v0    # "flagVal":Z
    :cond_1
    const-string v2, "flagSecure"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    const-string v2, "flagSecure"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 525
    .restart local v0    # "flagVal":Z
    if-eqz v0, :cond_2

    .line 526
    or-int/lit16 v1, v1, 0x2000

    .line 531
    .end local v0    # "flagVal":Z
    :cond_2
    const-string v2, "windowFlags"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    const-string v2, "windowSoftInputMode"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 534
    const-string v2, "windowSoftInputMode"

    const-string v3, "windowSoftInputMode"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    :cond_3
    const-string v2, "exitOnClose"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/TabGroupProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 538
    const-string v2, "finishRoot"

    const-string v3, "exitOnClose"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/TabGroupProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_4
    const-string v2, "finishRoot"

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleAddTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 179
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 181
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 184
    .local v0, "tabGroup":Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->addTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 187
    :cond_0
    return-void
.end method

.method private handleDisableTabNavigation(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .line 158
    .local v0, "tabGroup":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->disableTabNavigation(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method private handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 339
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 337
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSetTabs(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 278
    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 279
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 280
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    .line 281
    .local v3, "objArray":[Ljava/lang/Object;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 282
    .local v4, "tabProxy":Ljava/lang/Object;
    instance-of v5, v4, Lti/modules/titanium/ui/TabProxy;

    if-eqz v5, :cond_0

    .line 283
    check-cast v4, Lti/modules/titanium/ui/TabProxy;

    .end local v4    # "tabProxy":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "objArray":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private parseTab(Ljava/lang/Object;)Lti/modules/titanium/ui/TabProxy;
    .locals 4
    .param p1, "tabOrIndex"    # Ljava/lang/Object;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "tab":Lti/modules/titanium/ui/TabProxy;
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 257
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "tabOrIndex":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 258
    .local v1, "tabIndex":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 259
    :cond_0
    const-string v2, "TabGroupProxy"

    const-string v3, "Invalid tab index."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v1    # "tabIndex":I
    :goto_0
    return-object v0

    .line 261
    .restart local v1    # "tabIndex":I
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tab":Lti/modules/titanium/ui/TabProxy;
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .restart local v0    # "tab":Lti/modules/titanium/ui/TabProxy;
    goto :goto_0

    .line 264
    .end local v1    # "tabIndex":I
    .restart local p1    # "tabOrIndex":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Lti/modules/titanium/ui/TabProxy;

    if-eqz v2, :cond_4

    .line 265
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 266
    const-string v2, "TabGroupProxy"

    const-string v3, "Cannot activate tab not in this group."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 268
    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    goto :goto_0

    .line 271
    :cond_4
    const-string v2, "TabGroupProxy"

    const-string v3, "No valid tab provided when setting active tab."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 166
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x520

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public closeFromActivity(Z)V
    .locals 3
    .param p1, "activityIsFinishing"    # Z

    .prologue
    .line 441
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 442
    .local v1, "tab":Lti/modules/titanium/ui/TabProxy;
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/TabProxy;->close(Z)V

    goto :goto_0

    .line 447
    .end local v1    # "tab":Lti/modules/titanium/ui/TabProxy;
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->closeFromActivity(Z)V

    .line 448
    return-void
.end method

.method public disableTabNavigation(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .prologue
    .line 146
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleDisableTabNavigation(Z)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x525

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getActiveTab()Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tab:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    const-string v0, "Ti.UI.TabGroup"

    return-object v0
.end method

.method public getTabIndex(Lti/modules/titanium/ui/TabProxy;)I
    .locals 1
    .param p1, "tabProxy"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 135
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getTabList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TabProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTabs()[Lti/modules/titanium/ui/TabProxy;
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "tps":[Lti/modules/titanium/ui/TabProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tps":[Lti/modules/titanium/ui/TabProxy;
    check-cast v0, [Lti/modules/titanium/ui/TabProxy;

    .line 130
    .restart local v0    # "tps":[Lti/modules/titanium/ui/TabProxy;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getWindowActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getWindowActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getWindowActivity()Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleClose(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v4, 0x0

    .line 426
    const-string v1, "TabGroupProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleClose: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 429
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->releaseViews()V

    .line 430
    iput-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 432
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 433
    .local v0, "activity":Landroid/support/v7/app/AppCompatActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 436
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 294
    const-string v3, "orientationModes"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 295
    .local v2, "orientationModes":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 297
    :try_start_0
    check-cast v2, [Ljava/lang/Object;

    .end local v2    # "orientationModes":Ljava/lang/Object;
    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toIntArray([Ljava/lang/Object;)[I

    move-result-object v1

    .line 298
    .local v1, "modes":[I
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->setOrientationModes([I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1    # "modes":[I
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "TabGroupProxy"

    const-string v4, "Invalid orientationMode array. Must only contain orientation mode constants."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 82
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 83
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleAddTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 84
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 85
    goto :goto_0

    .line 88
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 89
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 90
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 91
    goto :goto_0

    .line 94
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 95
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetActiveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 96
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 97
    goto :goto_0

    .line 100
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 101
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 102
    goto :goto_0

    .line 105
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 106
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetTabs(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 108
    goto :goto_0

    .line 111
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 112
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->handleDisableTabNavigation(Z)V

    .line 113
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 114
    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x520
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected handleOpen(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 346
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 348
    .local v1, "topActivity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lorg/appcelerator/titanium/TiActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1, v0}, Lti/modules/titanium/ui/TabGroupProxy;->fillIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 354
    invoke-static {p0}, Lorg/appcelerator/titanium/TiActivityWindows;->addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I

    move-result v2

    .line 355
    .local v2, "windowId":I
    const-string v3, "useActivityWindow"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    const-string v3, "windowId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected handlePostOpen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 391
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->handlePostOpen()V

    .line 393
    iput-boolean v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    .line 394
    const/4 v4, 0x0

    iput-boolean v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->opening:Z

    .line 397
    const-string v4, "open"

    invoke-virtual {p0, v4, v6}, Lti/modules/titanium/ui/TabGroupProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 400
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v3, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 401
    .local v3, "tg":Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/TabProxy;

    .line 402
    .local v2, "tab":Lti/modules/titanium/ui/TabProxy;
    invoke-virtual {v3, v2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->addTab(Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_0

    .line 405
    .end local v2    # "tab":Lti/modules/titanium/ui/TabProxy;
    :cond_0
    invoke-direct {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handleGetActiveTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v0

    .line 406
    .local v0, "activeTab":Lti/modules/titanium/ui/TabProxy;
    if-eqz v0, :cond_1

    .line 407
    iput-object v6, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 410
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->getSelectedTab()Lti/modules/titanium/ui/TabProxy;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 411
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->onTabSelected(Lti/modules/titanium/ui/TabProxy;)V

    .line 420
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->isFocused:Z

    .line 421
    return-void

    .line 413
    :cond_2
    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->selectTab(Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_1
.end method

.method public handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 202
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 203
    .local v0, "tabGroup":Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->removeTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method protected handleSetActiveTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 1
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 229
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;

    .line 230
    .local v0, "tabGroup":Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->selectTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    goto :goto_0
.end method

.method public handleToImage()Lorg/appcelerator/titanium/TiBlob;
    .locals 3

    .prologue
    .line 547
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 548
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getImageFromDict(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v1

    return-object v1
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 309
    iget-boolean v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->opening:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->opened:Z

    if-eqz v2, :cond_1

    .line 310
    :cond_0
    const-string v2, "exitOnClose"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    .line 312
    .local v0, "activity":Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "finishRoot"

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void

    .line 311
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTabSelected(Lti/modules/titanium/ui/TabProxy;)V
    .locals 8
    .param p1, "tabProxy"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 480
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 481
    .local v2, "previousSelectedTab":Lti/modules/titanium/ui/TabProxy;
    iput-object p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    .line 485
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 486
    .local v1, "focusEventData":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "source"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v3, "previousTab"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v3, "previousIndex"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v3, "tab"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v3, "index"

    iget-object v4, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    iget-object v5, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollDict;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 495
    .local v0, "blurEventData":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "source"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v2, v6}, Lti/modules/titanium/ui/TabProxy;->onSelectionChanged(Z)V

    .line 501
    invoke-virtual {v2, v6, v0}, Lti/modules/titanium/ui/TabProxy;->onFocusChanged(ZLorg/appcelerator/kroll/KrollDict;)V

    .line 503
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/TabProxy;->onSelectionChanged(Z)V

    .line 504
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    invoke-virtual {v3, v7, v1}, Lti/modules/titanium/ui/TabProxy;->onFocusChanged(ZLorg/appcelerator/kroll/KrollDict;)V

    .line 505
    return-void
.end method

.method public onWindowFocusChange(Z)V
    .locals 2
    .param p1, "focused"    # Z

    .prologue
    .line 456
    iget-boolean v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->isFocused:Z

    if-ne v0, p1, :cond_0

    .line 472
    :goto_0
    return-void

    .line 459
    :cond_0
    iput-boolean p1, p0, Lti/modules/titanium/ui/TabGroupProxy;->isFocused:Z

    .line 461
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    if-nez v0, :cond_1

    .line 463
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->onWindowFocusChange(Z)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->selectedTab:Lti/modules/titanium/ui/TabProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lti/modules/titanium/ui/TabProxy;->onFocusChanged(ZLorg/appcelerator/kroll/KrollDict;)V

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    .line 554
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 555
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 556
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    monitor-enter v3

    .line 557
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 558
    .local v1, "t":Lti/modules/titanium/ui/TabProxy;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TabProxy;->setTabGroup(Lti/modules/titanium/ui/TabGroupProxy;)V

    .line 559
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->releaseViews()V

    goto :goto_0

    .line 561
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lti/modules/titanium/ui/TabProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public releaseViewsForActivityForcedToDestroy()V
    .locals 4

    .prologue
    .line 568
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->releaseViews()V

    .line 569
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 570
    iget-object v3, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    monitor-enter v3

    .line 571
    :try_start_0
    iget-object v2, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TabProxy;

    .line 574
    .local v1, "t":Lti/modules/titanium/ui/TabProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TabProxy;->releaseViewsForActivityForcedToDestroy()V

    goto :goto_0

    .line 576
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lti/modules/titanium/ui/TabProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public removeTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 2
    .param p1, "tab"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 191
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleRemoveTab(Lti/modules/titanium/ui/TabProxy;)V

    .line 198
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/TabProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 199
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setActiveTab(Ljava/lang/Object;)V
    .locals 3
    .param p1, "tabOrIndex"    # Ljava/lang/Object;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->parseTab(Ljava/lang/Object;)Lti/modules/titanium/ui/TabProxy;

    move-result-object v0

    .line 215
    .local v0, "tab":Lti/modules/titanium/ui/TabProxy;
    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetActiveTab(Lti/modules/titanium/ui/TabProxy;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x522

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTabs(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 245
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->handleSetTabs(Ljava/lang/Object;)V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x524

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 363
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->tabGroupActivity:Ljava/lang/ref/WeakReference;

    .line 364
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->setWindowProxy(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 365
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->setLayoutProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 366
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/TabGroupProxy;->setActivity(Landroid/app/Activity;)V

    .line 368
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    invoke-direct {v0, p0, p1, p2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;-><init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Bundle;)V

    iput-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 375
    iget-object v0, p0, Lti/modules/titanium/ui/TabGroupProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/TabGroupProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 377
    invoke-virtual {p0}, Lti/modules/titanium/ui/TabGroupProxy;->handlePostOpen()V

    .line 382
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addWindowToStack(Lorg/appcelerator/titanium/proxy/TiWindowProxy;)V

    .line 385
    const-string v0, "postTabGroupCreated"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/TabGroupProxy;->callPropertySync(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :goto_0
    return-void

    .line 371
    :cond_0
    const-string v0, "TabGroupProxy"

    const-string v1, "ActionBar not available for TabGroup"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
