.class public Lti/modules/titanium/ui/widget/listview/ListViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "ListViewProxy.java"


# static fields
.field private static final MSG_APPEND_SECTION:I = 0x64d

.field private static final MSG_DELETE_SECTION_AT:I = 0x64f

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_GET_SECTIONS:I = 0x651

.field private static final MSG_INSERT_SECTION_AT:I = 0x64e

.field private static final MSG_REPLACE_SECTION_AT:I = 0x650

.field private static final MSG_SCROLL_TO_ITEM:I = 0x64c

.field private static final MSG_SECTION_COUNT:I = 0x64b

.field private static final MSG_SET_SECTIONS:I = 0x652

.field private static final TAG:Ljava/lang/String; = "ListViewProxy"


# instance fields
.field private preload:Z

.field private preloadMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private preloadSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 67
    return-void
.end method

.method private addPreloadSection(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "section"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 130
    instance-of v0, p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 132
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    check-cast p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .end local p1    # "section":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local p1    # "section":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    check-cast p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .end local p1    # "section":Ljava/lang/Object;
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addPreloadSections(Ljava/lang/Object;IZ)V
    .locals 5
    .param p1, "secs"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "arrayOnly"    # Z

    .prologue
    const/4 v4, -0x1

    .line 118
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 119
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "secs":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 120
    .local v2, "sections":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 121
    aget-object v1, v2, v0

    .line 122
    .local v1, "section":Ljava/lang/Object;
    invoke-direct {p0, v1, v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSection(Ljava/lang/Object;I)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    .end local v1    # "section":Ljava/lang/Object;
    .end local v2    # "sections":[Ljava/lang/Object;
    .restart local p1    # "secs":Ljava/lang/Object;
    :cond_0
    if-nez p3, :cond_1

    .line 125
    invoke-direct {p0, p1, v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSection(Ljava/lang/Object;I)V

    .line 127
    .end local p1    # "secs":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private handleAppendSection(Ljava/lang/Object;)V
    .locals 3
    .param p1, "section"    # Ljava/lang/Object;

    .prologue
    .line 296
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 297
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 298
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->appendSection(Ljava/lang/Object;)V

    .line 303
    :goto_0
    return-void

    .line 300
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 301
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSections(Ljava/lang/Object;IZ)V

    goto :goto_0
.end method

.method private handleDeleteSectionAt(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 316
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 317
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->deleteSectionAt(I)V

    .line 326
    :goto_0
    return-void

    .line 319
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 320
    :cond_1
    const-string v1, "ListViewProxy"

    const-string v2, "Invalid index to delete section"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 324
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleInsertSectionAt(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 345
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 346
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 347
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->insertSectionAt(ILjava/lang/Object;)V

    .line 356
    :goto_0
    return-void

    .line 349
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 350
    :cond_1
    const-string v1, "ListViewProxy"

    const-string v2, "Invalid index to insertSection"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 354
    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSections(Ljava/lang/Object;IZ)V

    goto :goto_0
.end method

.method private handleReplaceSectionAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 375
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 376
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 377
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->replaceSectionAt(ILjava/lang/Object;)V

    .line 383
    :goto_0
    return-void

    .line 379
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleDeleteSectionAt(I)V

    .line 380
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleInsertSectionAt(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleScrollToItem(IIZ)V
    .locals 1
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 280
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 281
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 282
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, p1, p2, p3}, Lti/modules/titanium/ui/widget/listview/TiListView;->scrollToItem(IIZ)V

    .line 284
    :cond_0
    return-void
.end method

.method private handleSections()[Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 426
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 427
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSections()[Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    move-result-object v2

    .line 430
    :goto_0
    return-object v2

    .line 429
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreloadSections()Ljava/util/ArrayList;

    move-result-object v1

    .line 430
    .local v1, "preloadedSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    goto :goto_0
.end method

.method private sendInsertSectionMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 338
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 339
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "section"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method private sendReplaceSectionMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 368
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 369
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "section"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x650

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method


# virtual methods
.method public addMarker(Ljava/lang/Object;)V
    .locals 3
    .param p1, "marker"    # Ljava/lang/Object;

    .prologue
    .line 194
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 195
    check-cast v1, Ljava/util/HashMap;

    .line 196
    .local v1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 197
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_1

    .line 198
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->addMarker(Ljava/util/HashMap;)V

    .line 203
    .end local v1    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v1    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public appendSection(Ljava/lang/Object;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/Object;

    .prologue
    .line 288
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public clearPreloadSections()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    new-instance v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method public deleteSectionAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 307
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleDeleteSectionAt(I)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    const-string v0, "Ti.UI.ListView"

    return-object v0
.end method

.method public getPreload()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    return v0
.end method

.method public getPreloadMarkers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadMarkers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreloadSections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSectionCount()I
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleSectionCount()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleSections()[Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x651

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    check-cast v0, [Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    goto :goto_0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "createdInModule"    # Lorg/appcelerator/kroll/KrollModule;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadSections:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadMarkers:Ljava/util/ArrayList;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "defaultItemTemplate"

    const-string v2, "listDefaultTemplate"

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "caseInsensitiveSearch"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-super {p0, p1, p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 85
    const-string v1, "sections"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "sections"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "obj":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSections(Ljava/lang/Object;IZ)V

    .line 91
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    .line 208
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 276
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v8

    :goto_0
    return v8

    .line 211
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 212
    .local v5, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleSectionCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 213
    goto :goto_0

    .line 217
    .end local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 218
    .restart local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v5}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 219
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "sectionIndex"

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 220
    .local v7, "sectionIndex":I
    const-string v8, "itemIndex"

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 221
    .local v3, "itemIndex":I
    const-string v8, "animated"

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 222
    .local v0, "animated":Z
    invoke-direct {p0, v7, v3, v0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleScrollToItem(IIZ)V

    .line 223
    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 224
    goto :goto_0

    .line 227
    .end local v0    # "animated":Z
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v3    # "itemIndex":I
    .end local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v7    # "sectionIndex":I
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 228
    .restart local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v5}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleAppendSection(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 230
    goto :goto_0

    .line 233
    .end local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 234
    .restart local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v5}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v8

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleDeleteSectionAt(I)V

    .line 235
    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 236
    goto :goto_0

    .line 239
    .end local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 240
    .restart local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v5}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 241
    .restart local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "index"

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 242
    .local v2, "index":I
    const-string v8, "section"

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 243
    .local v6, "section":Ljava/lang/Object;
    invoke-direct {p0, v2, v6}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleInsertSectionAt(ILjava/lang/Object;)V

    .line 244
    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 245
    goto/16 :goto_0

    .line 248
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "index":I
    .end local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v6    # "section":Ljava/lang/Object;
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 249
    .restart local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v5}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 250
    .restart local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "index"

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 251
    .restart local v2    # "index":I
    const-string v8, "section"

    invoke-virtual {v1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 252
    .restart local v6    # "section":Ljava/lang/Object;
    invoke-direct {p0, v2, v6}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleReplaceSectionAt(ILjava/lang/Object;)V

    .line 253
    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 254
    goto/16 :goto_0

    .line 258
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "index":I
    .end local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    .end local v6    # "section":Ljava/lang/Object;
    :pswitch_6
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 259
    .restart local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleSections()[Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 260
    goto/16 :goto_0

    .line 264
    .end local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 265
    .restart local v5    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 266
    .local v4, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v4, :cond_0

    .line 267
    check-cast v4, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v4    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v5}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v4, v8}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSectionsAndNotify([Ljava/lang/Object;)V

    .line 271
    :goto_1
    invoke-virtual {v5, v12}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v8, v9

    .line 272
    goto/16 :goto_0

    .line 269
    .restart local v4    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const-string v8, "ListViewProxy"

    const-string v10, "Unable to set sections, listView is null"

    const-string v11, "DEBUG_MODE"

    invoke-static {v8, v10, v11}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :pswitch_data_0
    .packed-switch 0x64b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public handleSectionCount()I
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 150
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 151
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSectionCount()I

    move-result v1

    .line 153
    :goto_0
    return v1

    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertSectionAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 330
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleInsertSectionAt(ILjava/lang/Object;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->sendInsertSectionMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public replaceSectionAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 360
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleReplaceSectionAt(ILjava/lang/Object;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->sendReplaceSectionMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public scrollToItem(IILjava/util/HashMap;)V
    .locals 5
    .param p1, "sectionIndex"    # I
    .param p2, "itemIndex"    # I
    .param p3, "options"    # Ljava/util/HashMap;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 158
    const/4 v0, 0x1

    .line 159
    .local v0, "animated":Z
    if-eqz p3, :cond_0

    instance-of v3, p3, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 161
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, p3}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 162
    .local v1, "animationargs":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "animated"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const-string v3, "animated"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 166
    .end local v1    # "animationargs":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-direct {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->handleScrollToItem(IIZ)V

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 170
    .local v2, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "itemIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v3, "sectionIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v3, "animated"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMarker(Ljava/lang/Object;)V
    .locals 3
    .param p1, "marker"    # Ljava/lang/Object;

    .prologue
    .line 179
    instance-of v2, p1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 180
    check-cast v1, Ljava/util/HashMap;

    .line 181
    .local v1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 182
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_1

    .line 183
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->setMarker(Ljava/util/HashMap;)V

    .line 189
    .end local v1    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v1    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 186
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preloadMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPreload(Z)V
    .locals 0
    .param p1, "pload"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 110
    return-void
.end method

.method public setSections(Ljava/lang/Object;)V
    .locals 5
    .param p1, "sections"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 398
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 399
    const-string v2, "ListViewProxy"

    const-string v3, "Invalid argument type to setSection(), needs to be an array"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local p1    # "sections":Ljava/lang/Object;
    :goto_0
    return-void

    .line 403
    .restart local p1    # "sections":Ljava/lang/Object;
    :cond_0
    const-string v2, "sections"

    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "sections":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 406
    .local v1, "sectionsArray":[Ljava/lang/Object;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 408
    .local v0, "listView":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v0, :cond_1

    .line 409
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->preload:Z

    .line 410
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->clearPreloadSections()V

    .line 411
    const/4 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->addPreloadSections(Ljava/lang/Object;IZ)V

    goto :goto_0

    .line 413
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .end local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSectionsAndNotify([Ljava/lang/Object;)V

    goto :goto_0

    .line 416
    .restart local v0    # "listView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x652

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
