.class Lti/modules/titanium/ui/widget/listview/TiListView$1;
.super Ljava/lang/Object;
.source "TiListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/listview/TiListView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private _firstVisibleItem:I

.field private _visibleItemCount:I

.field private canFireScrollEnd:Z

.field private canFireScrollStart:Z

.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

.field final synthetic val$fProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->val$fProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->_firstVisibleItem:I

    .line 319
    iput v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->_visibleItemCount:I

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollStart:Z

    .line 321
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollEnd:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 368
    iput p2, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->_firstVisibleItem:I

    .line 369
    iput p3, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->_visibleItemCount:I

    .line 370
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 9
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 327
    if-nez p2, :cond_1

    iget-boolean v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollEnd:Z

    if-eqz v6, :cond_1

    .line 328
    const-string v1, "scrollend"

    .line 329
    .local v1, "eventName":Ljava/lang/String;
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollEnd:Z

    .line 330
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollStart:Z

    .line 339
    :goto_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 340
    .local v0, "eventArgs":Lorg/appcelerator/kroll/KrollDict;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    iget v7, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->_firstVisibleItem:I

    invoke-virtual {v6, v7}, Lti/modules/titanium/ui/widget/listview/TiListView;->getSectionInfoByEntryIndex(I)Landroid/util/Pair;

    move-result-object v2

    .line 342
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    if-nez v2, :cond_2

    .line 364
    .end local v0    # "eventArgs":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_1
    return-void

    .line 331
    :cond_1
    if-ne p2, v7, :cond_0

    iget-boolean v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollStart:Z

    if-eqz v6, :cond_0

    .line 332
    const-string v1, "scrollstart"

    .line 333
    .restart local v1    # "eventName":Ljava/lang/String;
    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollEnd:Z

    .line 334
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->canFireScrollStart:Z

    goto :goto_0

    .line 346
    .restart local v0    # "eventArgs":Lorg/appcelerator/kroll/KrollDict;
    .restart local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Lti/modules/titanium/ui/widget/listview/ListSectionProxy;Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_2
    iget v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->_visibleItemCount:I

    .line 348
    .local v5, "visibleItemCount":I
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 349
    .local v3, "itemIndex":I
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 351
    .local v4, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getHeaderTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getHeaderView()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v6

    if-nez v6, :cond_5

    .line 352
    :cond_3
    if-lez v3, :cond_4

    .line 353
    add-int/lit8 v3, v3, -0x1

    .line 355
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 357
    :cond_5
    const-string v6, "firstVisibleSection"

    invoke-virtual {v0, v6, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v7, "firstVisibleSectionIndex"

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v7, v6}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v6, "firstVisibleItem"

    invoke-virtual {v4, v3}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemAt(I)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v6, "firstVisibleItemIndex"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v6, "visibleItemCount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView$1;->val$fProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6, v1, v0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    goto :goto_1
.end method
