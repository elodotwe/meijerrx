.class public Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "ListSectionProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
    }
.end annotation


# static fields
.field private static final MSG_APPEND_ITEMS:I = 0x779

.field private static final MSG_DELETE_ITEMS_AT:I = 0x77b

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_GET_ITEMS:I = 0x77f

.field private static final MSG_GET_ITEM_AT:I = 0x77c

.field private static final MSG_INSERT_ITEMS_AT:I = 0x77a

.field private static final MSG_REPLACE_ITEMS_AT:I = 0x77d

.field private static final MSG_SET_FOOTER_TITLE:I = 0x781

.field private static final MSG_SET_FOOTER_VIEW:I = 0x783

.field private static final MSG_SET_HEADER_TITLE:I = 0x780

.field private static final MSG_SET_HEADER_VIEW:I = 0x782

.field private static final MSG_SET_ITEMS:I = 0x778

.field private static final MSG_UPDATE_ITEM_AT:I = 0x77e

.field private static final TAG:Ljava/lang/String; = "ListSectionProxy"


# instance fields
.field private adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

.field public builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

.field private filterIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private footerTitle:Ljava/lang/String;

.field private footerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private headerTitle:Ljava/lang/String;

.field private headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private itemCount:I

.field private itemProperties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listItemData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lti/modules/titanium/ui/widget/listview/TiListView;",
            ">;"
        }
    .end annotation
.end field

.field private preload:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxy;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    .line 108
    iput v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 109
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 110
    return-void
.end method

.method private deleteItems(II)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "delete":Z
    :goto_0
    if-lez p2, :cond_2

    .line 592
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 593
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 594
    iget v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 595
    const/4 v0, 0x1

    .line 597
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 598
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFilterOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 604
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v1

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->applyFilter(Ljava/lang/String;)I

    .line 606
    :cond_3
    return v0
.end method

.method private handleAppendItems(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 534
    instance-of v6, p1, [Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 535
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "data":Ljava/lang/Object;
    move-object v5, p1

    check-cast v5, [Ljava/lang/Object;

    .line 536
    .local v5, "views":[Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 537
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 544
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v6

    if-nez v6, :cond_2

    .line 545
    const/4 v6, 0x1

    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 557
    .end local v5    # "views":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 539
    .restart local v5    # "views":[Ljava/lang/Object;
    :cond_1
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 540
    .local v4, "view":Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 549
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "view":Ljava/lang/Object;
    :cond_2
    iget v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 550
    .local v1, "count":I
    iget v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    array-length v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 552
    invoke-direct {p0, v5, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processData([Ljava/lang/Object;I)V

    goto :goto_0

    .line 555
    .end local v1    # "count":I
    .end local v5    # "views":[Ljava/lang/Object;
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_3
    const-string v6, "ListSectionProxy"

    const-string v7, "Invalid argument type to setData"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDeleteItemsAt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->deleteItems(II)Z

    .line 611
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 614
    :cond_0
    return-void
.end method

.method private handleGetItemAt(I)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 331
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleInsertItemsAt(ILjava/lang/Object;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 560
    instance-of v6, p2, [Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 561
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "data":Ljava/lang/Object;
    move-object v5, p2

    check-cast v5, [Ljava/lang/Object;

    .line 563
    .local v5, "views":[Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 564
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 577
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v6

    if-nez v6, :cond_4

    .line 578
    const/4 v6, 0x1

    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 587
    .end local v5    # "views":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 566
    .restart local v5    # "views":[Ljava/lang/Object;
    :cond_1
    if-ltz p1, :cond_2

    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le p1, v6, :cond_3

    .line 567
    :cond_2
    const-string v6, "ListSectionProxy"

    const-string v7, "Invalid index to handleInsertItem"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :cond_3
    move v1, p1

    .line 571
    .local v1, "counter":I
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 572
    .local v4, "view":Ljava/lang/Object;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 573
    add-int/lit8 v1, v1, 0x1

    .line 571
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 582
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "counter":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "view":Ljava/lang/Object;
    :cond_4
    iget v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    array-length v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 583
    invoke-direct {p0, v5, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processData([Ljava/lang/Object;I)V

    goto :goto_0

    .line 585
    .end local v5    # "views":[Ljava/lang/Object;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_5
    const-string v6, "ListSectionProxy"

    const-string v7, "Invalid argument type to insertItemsAt"

    const-string v8, "DEBUG_MODE"

    invoke-static {v6, v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleReplaceItemsAt(IILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 617
    if-nez p2, :cond_1

    .line 618
    invoke-direct {p0, p1, p3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->deleteItems(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-direct {p0, p1, p3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleSetFooterTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "footerTitle"    # Ljava/lang/String;

    .prologue
    .line 513
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    .line 514
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 517
    :cond_0
    return-void
.end method

.method private handleSetFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "footerView"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 527
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 528
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 531
    :cond_0
    return-void
.end method

.method private handleSetHeaderTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "headerTitle"    # Ljava/lang/String;

    .prologue
    .line 506
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 510
    :cond_0
    return-void
.end method

.method private handleSetHeaderView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "headerView"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 520
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 521
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 524
    :cond_0
    return-void
.end method

.method private handleSetItems(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 488
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 489
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "data":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 490
    .local v0, "items":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 491
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 493
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 494
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 503
    .end local v0    # "items":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 497
    .restart local v0    # "items":[Ljava/lang/Object;
    :cond_0
    array-length v1, v0

    iput v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    .line 498
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processData([Ljava/lang/Object;I)V

    goto :goto_0

    .line 501
    .end local v0    # "items":[Ljava/lang/Object;
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_1
    const-string v1, "ListSectionProxy"

    const-string v2, "Invalid argument type to setData"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUpdateItemAt(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 625
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleReplaceItemsAt(IILjava/lang/Object;)V

    .line 626
    const-string v0, "items"

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    return-void
.end method

.method private hideHeaderOrFooter()Z
    .locals 2

    .prologue
    .line 874
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v0

    .line 875
    .local v0, "listview":Lti/modules/titanium/ui/widget/listview/TiListView;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSearchText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processData([Ljava/lang/Object;I)V
    .locals 8
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 447
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 484
    :goto_0
    return-void

    .line 451
    :cond_0
    array-length v6, p1

    new-array v5, v6, [Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    .line 454
    .local v5, "temps":[Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 455
    aget-object v3, p1, v1

    .line 456
    .local v3, "itemData":Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 457
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "itemData":Ljava/lang/Object;
    invoke-direct {v0, v3}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 458
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    add-int v6, v1, p2

    invoke-direct {p0, v0, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 459
    .local v4, "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->updateOrMergeWithDefaultProperties(Lorg/appcelerator/kroll/KrollDict;Z)V

    .line 460
    aput-object v4, v5, v1

    .line 454
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    :cond_2
    const/4 v1, 0x0

    :goto_2
    array-length v6, p1

    if-ge v1, v6, :cond_5

    .line 465
    aget-object v3, p1, v1

    .line 466
    .restart local v3    # "itemData":Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/HashMap;

    if-eqz v6, :cond_4

    .line 467
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "itemData":Ljava/lang/Object;
    invoke-direct {v0, v3}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 468
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    aget-object v4, v5, v1

    .line 469
    .restart local v4    # "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    if-eqz v4, :cond_3

    .line 470
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->updateOrMergeWithDefaultProperties(Lorg/appcelerator/kroll/KrollDict;Z)V

    .line 472
    :cond_3
    new-instance v2, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-direct {v2, p0, v0, v4}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;-><init>(Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;)V

    .line 473
    .local v2, "itemD":Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
    const-string v6, "template"

    invoke-virtual {v0, v6}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    add-int v7, v1, p2

    invoke-virtual {v6, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 464
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "itemD":Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;
    .end local v4    # "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 479
    :cond_5
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFilterOn()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 480
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v6

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSearchText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->applyFilter(Ljava/lang/String;)I

    .line 483
    :cond_6
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private processDefaultTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 5
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "index"    # I

    .prologue
    .line 669
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    if-nez v1, :cond_0

    .line 672
    new-instance v1, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    const-string v2, "listDefaultTemplate"

    const/4 v3, 0x0

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;-><init>(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Landroid/app/Activity;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    .line 676
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v0

    .line 677
    .local v0, "listView":Lti/modules/titanium/ui/widget/listview/TiListView;
    if-eqz v0, :cond_0

    .line 678
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->setType(I)V

    .line 679
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->setRootParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 683
    .end local v0    # "listView":Lti/modules/titanium/ui/widget/listview/TiListView;
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    return-object v1
.end method

.method private processTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 7
    .param p1, "itemData"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "index"    # I

    .prologue
    .line 631
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v3

    .line 632
    .local v3, "listView":Lti/modules/titanium/ui/widget/listview/TiListView;
    const/4 v2, 0x0

    .line 633
    .local v2, "defaultTemplateBinding":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 634
    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->getDefaultTemplateBinding()Ljava/lang/String;

    move-result-object v2

    .line 638
    :cond_0
    const-string v5, "template"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "binding":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 641
    const-string v5, "listDefaultTemplate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 642
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processDefaultTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 662
    :cond_1
    :goto_0
    return-object v4

    .line 645
    :cond_2
    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getTemplateByBinding(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    .line 648
    .local v4, "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    if-nez v4, :cond_1

    .line 649
    const-string v5, "ListSectionProxy"

    const-string v6, "Template undefined"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    .end local v4    # "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_3
    if-eqz v2, :cond_4

    const-string v5, "listDefaultTemplate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 657
    invoke-virtual {v3, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->getTemplateByBinding(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v1

    .line 658
    .local v1, "defTemplate":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    if-eqz v1, :cond_4

    move-object v4, v1

    .line 659
    goto :goto_0

    .line 662
    .end local v1    # "defTemplate":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_4
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processDefaultTemplate(Lorg/appcelerator/kroll/KrollDict;I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public appendExtraEventData(Lorg/appcelerator/titanium/view/TiUIView;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p2, "itemIndex"    # I
    .param p3, "sectionIndex"    # I
    .param p4, "bindId"    # Ljava/lang/String;
    .param p5, "itemId"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getAdditionalEventData()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 734
    .local v0, "existingData":Lorg/appcelerator/kroll/KrollDict;
    if-nez v0, :cond_0

    .line 735
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "existingData":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 736
    .restart local v0    # "existingData":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setAdditionalEventData(Lorg/appcelerator/kroll/KrollDict;)V

    .line 740
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v2, :cond_2

    .line 741
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 744
    :cond_2
    const-string v2, "section"

    invoke-virtual {v0, v2, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v2, "sectionIndex"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    move v1, p2

    .line 747
    .local v1, "realItemIndex":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFilterOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 750
    :cond_3
    const-string v2, "itemIndex"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string v2, "generatedBinding:"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "properties"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 753
    const-string v2, "bindId"

    invoke-virtual {v0, v2, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_4
    :goto_0
    if-eqz p5, :cond_7

    .line 759
    const-string v2, "itemId"

    invoke-virtual {v0, v2, p5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_5
    :goto_1
    return-void

    .line 754
    :cond_6
    const-string v2, "bindId"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 755
    const-string v2, "bindId"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 760
    :cond_7
    const-string v2, "itemId"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 761
    const-string v2, "itemId"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public appendItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 358
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleAppendItems(Ljava/lang/Object;)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x779

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public applyFilter(Ljava/lang/String;)I
    .locals 5
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 946
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 947
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v3

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->getCaseInsensitive()Z

    move-result v0

    .line 949
    .local v0, "caseInsensitive":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 950
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getSearchableText()Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "searchableText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 954
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 957
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 958
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v2    # "searchableText":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3
.end method

.method public deleteItemsAt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleDeleteItemsAt(II)V

    goto :goto_0

    .line 394
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 395
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x77b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public generateCellContent(ILorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;ILandroid/view/View;)V
    .locals 9
    .param p1, "sectionIndex"    # I
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;
    .param p3, "template"    # Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .param p4, "itemContent"    # Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    .param p5, "itemPosition"    # I
    .param p6, "item_layout"    # Landroid/view/View;

    .prologue
    .line 695
    invoke-virtual {p3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getRootItem()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getViewProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v8

    .line 697
    .local v8, "itemProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    new-instance v7, Lti/modules/titanium/ui/widget/listview/TiListItem;

    invoke-virtual {p4}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v7, v8, v0, p4, p6}, Lti/modules/titanium/ui/widget/listview/TiListItem;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;Landroid/view/View;Landroid/view/View;)V

    .line 699
    .local v7, "item":Lti/modules/titanium/ui/widget/listview/TiListItem;
    invoke-virtual {p4, v7}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->setTag(Ljava/lang/Object;)V

    .line 701
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 702
    invoke-virtual {p3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getRootItem()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p4, v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->generateChildContentViews(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;Lorg/appcelerator/titanium/view/TiUIView;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    move v5, p1

    move-object v6, p6

    .line 703
    invoke-virtual/range {v0 .. v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->populateViews(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;IILandroid/view/View;)V

    .line 705
    :cond_0
    return-void
.end method

.method public generateChildContentViews(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;Lorg/appcelerator/titanium/view/TiUIView;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Z)V
    .locals 8
    .param p1, "item"    # Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .param p2, "parentContent"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p3, "rootItem"    # Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    .param p4, "root"    # Z

    .prologue
    .line 710
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 711
    .local v1, "childrenItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 712
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    .line 713
    .local v0, "child":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getViewProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 714
    .local v3, "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 715
    .local v4, "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch()V

    .line 716
    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 717
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v4, p3, v6}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->generateChildContentViews(Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;Lorg/appcelerator/titanium/view/TiUIView;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Z)V

    .line 720
    new-instance v5, Lti/modules/titanium/ui/widget/listview/ViewItem;

    new-instance v6, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v6}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-direct {v5, v4, v6}, Lti/modules/titanium/ui/widget/listview/ViewItem;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 721
    .local v5, "viewItem":Lti/modules/titanium/ui/widget/listview/ViewItem;
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getBindingId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6, v5}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->bindView(Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;)V

    .line 723
    if-eqz p4, :cond_0

    .line 724
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {p2, v4}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    goto :goto_1

    .line 730
    .end local v0    # "child":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v3    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v4    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v5    # "viewItem":Lti/modules/titanium/ui/widget/listview/ViewItem;
    :cond_1
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    const-string v0, "Ti.UI.ListSection"

    return-object v0
.end method

.method public getContentCount()I
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFilterOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 846
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    goto :goto_0
.end method

.method public getFooterTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterView()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getHeaderOrFooterTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderTitle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    .line 203
    :goto_0
    return-object v0

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterTitle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getHeaderOrFooterView(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isHeaderView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->layoutHeaderOrFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFooterView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->layoutHeaderOrFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderView()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getItemAt(I)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 322
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleGetItemAt(I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x77c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 854
    const/4 v0, 0x0

    .line 856
    .local v0, "totalCount":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFilterOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 857
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 862
    :goto_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->hideHeaderOrFooter()Z

    move-result v1

    if-nez v1, :cond_3

    .line 863
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_1

    .line 864
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 866
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_3

    .line 867
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 870
    :cond_3
    return v0

    .line 859
    :cond_4
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemCount:I

    goto :goto_0
.end method

.method public getItems()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 352
    :goto_0
    return-object v0

    .line 349
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x77f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public getListItemData(I)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 924
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_1

    .line 925
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 928
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFilterOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 929
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 933
    :goto_0
    return-object v0

    .line 930
    :cond_2
    if-ltz p1, :cond_3

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 931
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    goto :goto_0

    .line 933
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListView()Lti/modules/titanium/ui/widget/listview/TiListView;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListView;

    .line 906
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTemplateByIndex(I)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 835
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isFilterOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->filterIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getTemplate()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v0

    .line 838
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getTemplate()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v0

    goto :goto_0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 114
    const-string v1, "headerTitle"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "headerTitle"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    .line 117
    :cond_0
    const-string v1, "footerTitle"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string v1, "footerTitle"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    .line 120
    :cond_1
    const-string v1, "headerView"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string v1, "headerView"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_2

    .line 123
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v0    # "obj":Ljava/lang/Object;
    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 126
    :cond_2
    const-string v1, "footerView"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const-string v1, "footerView"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .restart local v0    # "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_3

    .line 129
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local v0    # "obj":Ljava/lang/Object;
    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 132
    :cond_3
    const-string v1, "items"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    const-string v1, "items"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 135
    :cond_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 218
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 314
    invoke-super {p0, p1}, Lti/modules/titanium/ui/ViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v5

    :goto_0
    return v5

    .line 221
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 222
    .local v4, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 224
    goto :goto_0

    .line 228
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 229
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetHeaderTitle(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 231
    goto :goto_0

    .line 235
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 236
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetFooterTitle(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 238
    goto :goto_0

    .line 242
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 243
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetHeaderView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 244
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 245
    goto :goto_0

    .line 249
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 250
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 251
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 252
    goto :goto_0

    .line 256
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 257
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 258
    goto :goto_0

    .line 262
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 263
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleAppendItems(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 265
    goto :goto_0

    .line 269
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 270
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 271
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "index"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 272
    .local v2, "index":I
    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    .line 273
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 274
    goto/16 :goto_0

    .line 278
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "index":I
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 279
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 280
    .restart local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "index"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 281
    .restart local v2    # "index":I
    const-string v5, "count"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 282
    .local v0, "count":I
    invoke-direct {p0, v2, v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleDeleteItemsAt(II)V

    .line 283
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 284
    goto/16 :goto_0

    .line 288
    .end local v0    # "count":I
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "index":I
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 289
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 290
    .restart local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "index"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 291
    .restart local v2    # "index":I
    const-string v5, "count"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 292
    .restart local v0    # "count":I
    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v2, v0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleReplaceItemsAt(IILjava/lang/Object;)V

    .line 293
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 294
    goto/16 :goto_0

    .line 298
    .end local v0    # "count":I
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "index":I
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 299
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleGetItemAt(I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 300
    .local v3, "item":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {v4, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 301
    goto/16 :goto_0

    .line 305
    .end local v3    # "item":Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_b
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 306
    .restart local v4    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 307
    .restart local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "index"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 308
    .restart local v2    # "index":I
    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleUpdateItemAt(ILjava/lang/Object;)V

    .line 309
    invoke-virtual {v4, v7}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v5, v6

    .line 310
    goto/16 :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x778
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertItemsAt(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleInsertItemsAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 378
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 379
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x77a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isFilterOn()Z
    .locals 2

    .prologue
    .line 937
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v0

    .line 938
    .local v0, "lv":Lti/modules/titanium/ui/widget/listview/TiListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSearchText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 939
    const/4 v1, 0x1

    .line 941
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFooterTitle(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 895
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFooterView(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->footerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderTitle(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 891
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderView(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 883
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->headerView:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndexValid(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 366
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public populateViews(Lorg/appcelerator/kroll/KrollDict;Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;IILandroid/view/View;)V
    .locals 23
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "cellContent"    # Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;
    .param p3, "template"    # Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .param p4, "itemIndex"    # I
    .param p5, "sectionIndex"    # I
    .param p6, "item_layout"    # Landroid/view/View;

    .prologue
    .line 767
    invoke-virtual/range {p2 .. p2}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 769
    .local v14, "cell":Ljava/lang/Object;
    instance-of v2, v14, Lti/modules/titanium/ui/widget/listview/TiListItem;

    if-nez v2, :cond_1

    .line 770
    const-string v2, "ListSectionProxy"

    const-string v4, "Cell is not TiListItem. Something is wrong.."

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v14

    .line 774
    check-cast v3, Lti/modules/titanium/ui/widget/listview/TiListItem;

    .line 776
    .local v3, "listItem":Lti/modules/titanium/ui/widget/listview/TiListItem;
    const/4 v7, 0x0

    .line 778
    .local v7, "itemId":Ljava/lang/String;
    const-string v2, "properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 779
    new-instance v19, Lorg/appcelerator/kroll/KrollDict;

    const-string v2, "properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 785
    .local v19, "listItemProperties":Lorg/appcelerator/kroll/KrollDict;
    :goto_1
    const-string v2, "itemId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 786
    const-string v2, "itemId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 790
    :cond_2
    const-string v6, "properties"

    move-object/from16 v2, p0

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v2 .. v7}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->appendExtraEventData(Lorg/appcelerator/titanium/view/TiUIView;IILjava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getViewsMap()Ljava/util/HashMap;

    move-result-object v22

    .line 794
    .local v22, "views":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 795
    .local v12, "binding":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getDataItem(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v15

    .line 796
    .local v15, "dataItem":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lti/modules/titanium/ui/widget/listview/ViewItem;

    .line 797
    .local v21, "viewItem":Lti/modules/titanium/ui/widget/listview/ViewItem;
    invoke-virtual/range {v21 .. v21}, Lti/modules/titanium/ui/widget/listview/ViewItem;->getView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v9

    .line 799
    .local v9, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v9, :cond_4

    move-object/from16 v8, p0

    move/from16 v10, p4

    move/from16 v11, p5

    move-object v13, v7

    .line 800
    invoke-virtual/range {v8 .. v13}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->appendExtraEventData(Lorg/appcelerator/titanium/view/TiUIView;IILjava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v9, :cond_6

    .line 805
    new-instance v20, Lorg/appcelerator/kroll/KrollDict;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 806
    .local v20, "properties":Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/ViewItem;->generateDiffProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v16

    .line 807
    .local v16, "diffProperties":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual/range {v16 .. v16}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 808
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_2

    .line 781
    .end local v9    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v12    # "binding":Ljava/lang/String;
    .end local v15    # "dataItem":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v16    # "diffProperties":Lorg/appcelerator/kroll/KrollDict;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "listItemProperties":Lorg/appcelerator/kroll/KrollDict;
    .end local v20    # "properties":Lorg/appcelerator/kroll/KrollDict;
    .end local v21    # "viewItem":Lti/modules/titanium/ui/widget/listview/ViewItem;
    .end local v22    # "views":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;>;"
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getRootItem()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;

    move-result-object v2

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getDefaultProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v19

    .restart local v19    # "listItemProperties":Lorg/appcelerator/kroll/KrollDict;
    goto/16 :goto_1

    .line 811
    .restart local v9    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v12    # "binding":Ljava/lang/String;
    .restart local v15    # "dataItem":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v21    # "viewItem":Lti/modules/titanium/ui/widget/listview/ViewItem;
    .restart local v22    # "views":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lti/modules/titanium/ui/widget/listview/ViewItem;>;"
    :cond_6
    if-eqz v15, :cond_7

    if-eqz v9, :cond_7

    .line 812
    invoke-virtual {v15}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;->getDefaultProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/listview/ViewItem;->generateDiffProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v16

    .line 813
    .restart local v16    # "diffProperties":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual/range {v16 .. v16}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 814
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto :goto_2

    .line 817
    .end local v16    # "diffProperties":Lorg/appcelerator/kroll/KrollDict;
    :cond_7
    const-string v2, "ListSectionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sorry, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isn\'t a valid binding. Perhaps you made a typo?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v2, v4, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 823
    .end local v9    # "view":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v12    # "binding":Ljava/lang/String;
    .end local v15    # "dataItem":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate$DataItem;
    .end local v21    # "viewItem":Lti/modules/titanium/ui/widget/listview/ViewItem;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lti/modules/titanium/ui/widget/listview/TiBaseListViewItem;->getViewItem()Lti/modules/titanium/ui/widget/listview/ViewItem;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/widget/listview/ViewItem;->generateDiffProperties(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v18

    .line 824
    .local v18, "listItemDiff":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 825
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lti/modules/titanium/ui/widget/listview/TiListItem;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0
.end method

.method public processPreloadData()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->preload:Z

    .line 440
    :cond_0
    return-void
.end method

.method public refreshItems()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 965
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 967
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    .line 970
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 972
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->itemProperties:Ljava/util/ArrayList;

    .line 975
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;->release()V

    .line 977
    iput-object v1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->builtInTemplate:Lti/modules/titanium/ui/widget/listview/TiDefaultListViewTemplate;

    .line 979
    :cond_2
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->release()V

    .line 980
    return-void
.end method

.method public releaseViews()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listView:Ljava/lang/ref/WeakReference;

    .line 985
    return-void
.end method

.method public replaceItemsAt(IILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 403
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleReplaceItemsAt(IILjava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_1
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 411
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v1, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x77d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAdapter(Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;)V
    .locals 0
    .param p1, "a"    # Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    .prologue
    .line 138
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    .line 139
    return-void
.end method

.method public setFooterTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "footerTitle"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetFooterTitle(Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x781

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "footerView"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 157
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x783

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "headerTitle"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetHeaderTitle(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x780

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setHeaderView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "headerView"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 143
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetHeaderView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x782

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setItems(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 338
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleSetItems(Ljava/lang/Object;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x778

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setListView(Lti/modules/titanium/ui/widget/listview/TiListView;)V
    .locals 1
    .param p1, "l"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 899
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listView:Ljava/lang/ref/WeakReference;

    .line 900
    return-void
.end method

.method public setTemplateType()V
    .locals 5

    .prologue
    .line 914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 915
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->listItemData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy$ListItemData;->getTemplate()Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    move-result-object v2

    .line 916
    .local v2, "temp":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getListView()Lti/modules/titanium/ui/widget/listview/TiListView;

    move-result-object v1

    .line 917
    .local v1, "listView":Lti/modules/titanium/ui/widget/listview/TiListView;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 918
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->getItemType()I

    move-result v3

    invoke-virtual {v2, v3}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->setType(I)V

    .line 914
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 921
    .end local v1    # "listView":Lti/modules/titanium/ui/widget/listview/TiListView;
    .end local v2    # "temp":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_1
    return-void
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->isIndexValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-direct {p0, p1, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->handleUpdateItemAt(ILjava/lang/Object;)V

    goto :goto_0

    .line 427
    :cond_2
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 428
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v1, "data"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x77e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
