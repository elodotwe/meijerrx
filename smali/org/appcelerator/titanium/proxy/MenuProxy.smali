.class public Lorg/appcelerator/titanium/proxy/MenuProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "MenuProxy.java"


# static fields
.field private static final MSG_ADD:I = 0x138

.field private static final MSG_CLEAR:I = 0x13a

.field private static final MSG_CLOSE:I = 0x139

.field private static final MSG_FIRST_ID:I = 0xd4

.field protected static final MSG_LAST_ID:I = 0x4bb

.field private static final MSG_REMOVE_GROUP:I = 0x13b

.field private static final MSG_REMOVE_ITEM:I = 0x13c

.field private static final MSG_SET_GROUP_ENABLED:I = 0x13d

.field private static final MSG_SET_GROUP_VISIBLE:I = 0x13e

.field private static final TAG:Ljava/lang/String; = "MenuProxy"


# instance fields
.field protected menu:Landroid/view/Menu;

.field protected menuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Lorg/appcelerator/titanium/proxy/MenuItemProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 51
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    move-object v2, v1

    .line 114
    :goto_0
    return-object v2

    .line 110
    :cond_0
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollDict;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 111
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .end local p1    # "d":Lorg/appcelerator/kroll/KrollDict;
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    move-object p1, v0

    .line 114
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    .restart local p1    # "d":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x138

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public findItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 3
    .param p1, "itemId"    # I

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 232
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    .line 236
    .end local v1    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    return-object v1
.end method

.method public findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 255
    instance-of v1, p1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 256
    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    .line 257
    .local v0, "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getWrappedObject()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "item":Landroid/view/MenuItem;
    check-cast p1, Landroid/view/MenuItem;

    .line 259
    .end local v0    # "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    .restart local p1    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 260
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    monitor-exit v2

    return-object v1

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    const-string v0, "Ti.Android.Menu"

    return-object v0
.end method

.method public getItem(I)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 245
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    .line 249
    :cond_0
    return-object v1
.end method

.method public getItems()[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 6

    .prologue
    .line 380
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v1

    .line 381
    .local v1, "len":I
    new-array v4, v1, [Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 382
    .local v4, "proxies":[Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 383
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v5, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 384
    .local v2, "mi":Landroid/view/MenuItem;
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/proxy/MenuProxy;->findItem(Landroid/view/MenuItem;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v3

    .line 385
    .local v3, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    aput-object v3, v4, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "mi":Landroid/view/MenuItem;
    .end local v3    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_0
    return-object v4
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    .locals 13
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 121
    .local v3, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    const-string v6, ""

    .line 122
    .local v6, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 123
    .local v2, "itemId":I
    const/4 v0, 0x0

    .line 124
    .local v0, "groupId":I
    const/4 v5, 0x0

    .line 126
    .local v5, "order":I
    const-string v11, "title"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 127
    const-string v11, "title"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 129
    :cond_0
    const-string v11, "itemId"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 130
    const-string v11, "itemId"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    .line 132
    :cond_1
    const-string v11, "groupId"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 133
    const-string v11, "groupId"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 135
    :cond_2
    const-string v11, "order"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 136
    const-string v11, "order"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    .line 139
    :cond_3
    iget-object v11, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v11, v0, v2, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 140
    .local v1, "item":Landroid/view/MenuItem;
    new-instance v3, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .end local v3    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-direct {v3, v1}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;-><init>(Landroid/view/MenuItem;)V

    .line 143
    .restart local v3    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    instance-of v11, v1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    if-eqz v11, :cond_4

    move-object v10, v1

    .line 144
    check-cast v10, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    .line 145
    .local v10, "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    invoke-virtual {v10}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getWrappedObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Landroid/view/MenuItem;
    check-cast v1, Landroid/view/MenuItem;

    .line 147
    .end local v10    # "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    .restart local v1    # "item":Landroid/view/MenuItem;
    :cond_4
    iget-object v12, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 148
    :try_start_0
    iget-object v11, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const-string v11, "actionView"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 153
    const-string v11, "actionView"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 154
    .local v9, "viewProxy":Ljava/lang/Object;
    instance-of v11, v9, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v11, :cond_6

    move-object v11, v9

    .line 155
    check-cast v11, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v11}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v7

    .line 156
    .local v7, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v7, :cond_6

    .line 157
    invoke-virtual {v7}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v4

    .line 158
    .local v4, "nativeView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 159
    .local v8, "viewParent":Landroid/view/ViewGroup;
    if-eqz v8, :cond_5

    .line 160
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    :cond_5
    invoke-virtual {v3, v9}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setActionView(Ljava/lang/Object;)V

    .line 166
    .end local v4    # "nativeView":Landroid/view/View;
    .end local v7    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v8    # "viewParent":Landroid/view/ViewGroup;
    .end local v9    # "viewProxy":Ljava/lang/Object;
    :cond_6
    const-string v11, "checkable"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 167
    const-string v11, "checkable"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setCheckable(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 169
    :cond_7
    const-string v11, "checked"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 170
    const-string v11, "checked"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setChecked(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 172
    :cond_8
    const-string v11, "enabled"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 173
    const-string v11, "enabled"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setEnabled(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 175
    :cond_9
    const-string v11, "icon"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 176
    const-string v11, "icon"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setIcon(Ljava/lang/Object;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 178
    :cond_a
    const-string v11, "showAsAction"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 179
    const-string v11, "showAsAction"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setShowAsAction(I)V

    .line 181
    :cond_b
    const-string v11, "titleCondensed"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 182
    const-string v11, "titleCondensed"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setTitleCondensed(Ljava/lang/String;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 184
    :cond_c
    const-string v11, "visible"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 185
    const-string v11, "visible"

    invoke-static {p1, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lorg/appcelerator/titanium/proxy/MenuItemProxy;->setVisible(Z)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 187
    :cond_d
    return-object v3

    .line 149
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method

.method public handleClear()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 204
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 206
    monitor-exit v1

    .line 208
    :cond_0
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleClose()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 225
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 59
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 61
    :pswitch_0
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleAdd(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 62
    goto :goto_0

    .line 65
    :pswitch_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClose()V

    .line 66
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 67
    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleClear()V

    .line 71
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 72
    goto :goto_0

    .line 75
    :pswitch_3
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    .line 76
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 77
    goto :goto_0

    .line 80
    :pswitch_4
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    .line 81
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 82
    goto :goto_0

    .line 85
    :pswitch_5
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    .line 86
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 87
    goto :goto_0

    .line 90
    :pswitch_6
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    .line 91
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 92
    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x138
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleRemoveGroup(I)V
    .locals 9
    .param p1, "groupId"    # I

    .prologue
    .line 282
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 283
    :try_start_0
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v7, p1}, Landroid/view/Menu;->removeGroup(I)V

    .line 284
    new-instance v5, Ljava/util/HashMap;

    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v7}, Landroid/view/Menu;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 285
    .local v5, "mm":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v7}, Landroid/view/Menu;->size()I

    move-result v2

    .line 286
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 287
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v7, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 289
    .local v3, "mi":Landroid/view/MenuItem;
    instance-of v7, v3, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    if-eqz v7, :cond_0

    .line 290
    move-object v0, v3

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    move-object v6, v0

    .line 291
    .local v6, "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    invoke-virtual {v6}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getWrappedObject()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mi":Landroid/view/MenuItem;
    check-cast v3, Landroid/view/MenuItem;

    .line 293
    .end local v6    # "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    .restart local v3    # "mi":Landroid/view/MenuItem;
    :cond_0
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 294
    .local v4, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v3    # "mi":Landroid/view/MenuItem;
    .end local v4    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_1
    iget-object v7, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 297
    iput-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    .line 298
    monitor-exit v8

    .line 299
    return-void

    .line 298
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v5    # "mm":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/MenuItem;Lorg/appcelerator/titanium/proxy/MenuItemProxy;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public handleRemoveItem(I)V
    .locals 6
    .param p1, "itemId"    # I

    .prologue
    .line 314
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 315
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v4, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 316
    .local v1, "mi":Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 318
    instance-of v4, v1, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    if-eqz v4, :cond_0

    .line 319
    move-object v0, v1

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;

    move-object v3, v0

    .line 320
    .local v3, "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;->getWrappedObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mi":Landroid/view/MenuItem;
    check-cast v1, Landroid/view/MenuItem;

    .line 322
    .end local v3    # "wrapper":Landroid/support/v7/internal/view/menu/MenuItemWrapperICS;
    .restart local v1    # "mi":Landroid/view/MenuItem;
    :cond_0
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/MenuItemProxy;

    .line 323
    .local v2, "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    if-eqz v2, :cond_1

    .line 326
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v4, p1}, Landroid/view/Menu;->removeItem(I)V

    .line 328
    .end local v2    # "mip":Lorg/appcelerator/titanium/proxy/MenuItemProxy;
    :cond_2
    monitor-exit v5

    .line 329
    return-void

    .line 328
    .end local v1    # "mi":Landroid/view/MenuItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public handleSetGroupEnabled(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "args"    # Ljava/util/HashMap;

    .prologue
    .line 351
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 352
    return-void
.end method

.method public handleSetGroupVisible(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "args"    # Ljava/util/HashMap;

    .prologue
    .line 370
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "visible"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 371
    return-void
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 410
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 415
    return-void
.end method

.method public removeGroup(I)V
    .locals 2
    .param p1, "groupId"    # I

    .prologue
    .line 272
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveGroup(I)V

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    .line 304
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleRemoveItem(I)V

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 333
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v0, "args":Ljava/util/HashMap;
    const-string v1, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "enabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupEnabled(Ljava/util/HashMap;)V

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGroupVisible(IZ)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v0, "args":Ljava/util/HashMap;
    const-string v1, "groupId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v1, "visible"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->handleSetGroupVisible(Ljava/util/HashMap;)V

    .line 367
    :goto_0
    return-void

    .line 366
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 396
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    if-eq v0, p1, :cond_0

    .line 397
    const-string v0, "MenuProxy"

    const-string v1, "A new menu has been set, cleaning up old menu first"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/MenuProxy;->release()V

    .line 400
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    .line 401
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/MenuProxy;->menu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method
