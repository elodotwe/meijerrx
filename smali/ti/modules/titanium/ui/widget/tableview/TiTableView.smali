.class public Lti/modules/titanium/ui/widget/tableview/TiTableView;
.super Landroid/widget/FrameLayout;
.source "TiTableView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;,
        Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;,
        Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
    }
.end annotation


# static fields
.field protected static final MAX_CLASS_NAMES:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TiTableView"

.field public static final TI_TABLE_VIEW_ID:I = 0x65


# instance fields
.field private adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

.field private filterAnchored:Z

.field private filterAttribute:Ljava/lang/String;

.field private filterCaseInsensitive:Z

.field private filterText:Ljava/lang/String;

.field private itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

.field private itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

.field private listView:Landroid/widget/ListView;

.field private proxy:Lti/modules/titanium/ui/TableViewProxy;

.field private rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private rowTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selector:Landroid/graphics/drawable/StateListDrawable;

.field private viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "proxy"    # Lti/modules/titanium/ui/TableViewProxy;

    .prologue
    .line 428
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    .line 429
    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/TableViewProxy;)V
    .locals 8
    .param p1, "proxy"    # Lti/modules/titanium/ui/TableViewProxy;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 277
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    .line 67
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAnchored:Z

    .line 278
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 280
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    .line 281
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__header__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__normal__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    const-string v3, "__default__"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-direct {v2, p1}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 287
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    .line 288
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    .line 290
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 291
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 292
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 293
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 294
    move-object v0, p1

    .line 295
    .local v0, "fProxy":Lorg/appcelerator/kroll/KrollProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;

    invoke-direct {v3, p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/kroll/KrollProxy;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 344
    const-string v2, "separatorColor"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "separatorColor"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->setSeparatorColor(Ljava/lang/String;)V

    .line 347
    :cond_0
    new-instance v2, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-direct {v2, p0, v3}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lti/modules/titanium/ui/widget/tableview/TableViewModel;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    .line 348
    const-string v2, "headerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    const-string v2, "headerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 350
    .local v1, "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 352
    .end local v1    # "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    const-string v2, "footerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    const-string v2, "footerView"

    invoke-virtual {p1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 354
    .restart local v1    # "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 357
    .end local v1    # "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$3;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 385
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->addView(Landroid/view/View;)V

    .line 386
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowTypeCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/ui/widget/tableview/TiTableView;Landroid/view/View;)Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getParentTableViewItem(Landroid/view/View;)Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    return v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAnchored:Z

    return v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/TableViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    return-object v0
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;
    .param p1, "x1"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tableview/TiTableView;

    .prologue
    .line 44
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    return-object v0
.end method

.method private getParentTableViewItem(Landroid/view/View;)Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 434
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 435
    instance-of v1, v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    if-eqz v1, :cond_0

    .line 436
    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    .line 440
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .line 438
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 10
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 508
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v2, 0x0

    .line 509
    .local v2, "outerView":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 511
    .local v6, "vParent":Landroid/view/ViewParent;
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 512
    check-cast v6, Landroid/view/ViewGroup;

    .end local v6    # "vParent":Landroid/view/ViewParent;
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 515
    :cond_0
    invoke-static {p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->clearChildViews(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 516
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    .line 517
    .local v5, "tiView":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v1

    .line 518
    .local v1, "nativeView":Landroid/view/View;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v4

    .line 521
    .local v4, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    const/4 v7, -0x1

    .line 522
    .local v7, "width":I
    const/4 v0, -0x2

    .line 523
    .local v0, "height":I
    iget-boolean v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    if-eqz v8, :cond_3

    .line 524
    iget-boolean v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    if-eqz v8, :cond_1

    .line 525
    const/4 v0, -0x1

    .line 531
    :cond_1
    :goto_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v7, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 532
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    return-object v5

    .line 508
    .end local v0    # "height":I
    .end local v1    # "nativeView":Landroid/view/View;
    .end local v2    # "outerView":Landroid/view/View;
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v5    # "tiView":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v7    # "width":I
    :cond_2
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 527
    .restart local v0    # "height":I
    .restart local v1    # "nativeView":Landroid/view/View;
    .restart local v2    # "outerView":Landroid/view/View;
    .restart local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .restart local v5    # "tiView":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v7    # "width":I
    :cond_3
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    if-eqz v8, :cond_1

    .line 528
    iget-object v8, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    iget-object v9, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public dataSetChanged()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->notifyDataSetChanged()V

    .line 540
    :cond_0
    return-void
.end method

.method public enableCustomSelector()V
    .locals 6

    .prologue
    .line 444
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 445
    .local v0, "currentSelector":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    if-eq v0, v2, :cond_0

    .line 446
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    .line 447
    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {v1, v2}, Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;-><init>(Landroid/widget/ListView;)V

    .line 448
    .local v1, "selectorDrawable":Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->selector:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 451
    .end local v1    # "selectorDrawable":Lti/modules/titanium/ui/widget/tableview/TiTableViewSelector;
    :cond_0
    return-void
.end method

.method public filterBy(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 568
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$4;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 576
    :cond_0
    return-void
.end method

.method public getIndexFromXY(DD)I
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 465
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v0, v3, v4

    .line 466
    .local v0, "bound":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 467
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-double v4, v3

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-double v4, v3

    cmpg-double v3, p1, v4

    if-gtz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-double v4, v3

    cmpl-double v3, p3, v4

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-double v4, v3

    cmpg-double v3, p3, v4

    if-gtz v3, :cond_0

    .line 469
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 472
    .end local v1    # "child":Landroid/view/View;
    :goto_1
    return v3

    .line 466
    .restart local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    const-string v1, "headerView"

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    add-int/lit8 p1, p1, -0x1

    .line 458
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 459
    :cond_1
    const/4 v0, 0x0

    .line 461
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->getViewModel()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->index:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getTableViewModel()Lti/modules/titanium/ui/widget/tableview/TableViewModel;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 620
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    if-nez v4, :cond_1

    .line 621
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v0, 0x0

    .line 625
    .local v0, "focusListener":Landroid/view/View$OnFocusChangeListener;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 626
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 627
    invoke-virtual {v1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    .line 628
    .local v2, "listener":Landroid/view/View$OnFocusChangeListener;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v4, :cond_2

    .line 629
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 630
    move-object v0, v2

    .line 634
    .end local v2    # "listener":Landroid/view/View$OnFocusChangeListener;
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 636
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    .line 637
    .local v3, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v3, :cond_3

    const-string v4, "postlayout"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 638
    const-string v4, "postlayout"

    invoke-virtual {v3, v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 642
    :cond_3
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 645
    if-eqz p1, :cond_0

    .line 646
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 602
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    .line 603
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 606
    :cond_0
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    .line 607
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/tableview/TableViewModel;->release()V

    .line 610
    :cond_1
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    .line 611
    iput-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    .line 612
    return-void
.end method

.method public removeFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 409
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 410
    .local v1, "peekView":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 411
    .local v0, "outerView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 412
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 414
    :cond_0
    return-void

    .line 410
    .end local v0    # "outerView":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public removeHeaderView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 390
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 391
    .local v1, "peekView":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 392
    .local v0, "outerView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 393
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 395
    :cond_0
    return-void

    .line 391
    .end local v0    # "outerView":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected rowClicked(Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;IZ)Z
    .locals 8
    .param p1, "rowView"    # Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;
    .param p2, "position"    # I
    .param p3, "longClick"    # Z

    .prologue
    .line 476
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;->getLastClickedViewName()Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "viewClicked":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getItemAtPosition(I)Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;

    move-result-object v2

    .line 478
    .local v2, "item":Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 479
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    if-eqz p3, :cond_2

    const-string v1, "longclick"

    .line 480
    .local v1, "eventName":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->viewModel:Lti/modules/titanium/ui/widget/tableview/TableViewModel;

    invoke-static {v0, v6, v2}, Lti/modules/titanium/ui/TableViewRowProxy;->fillClickEvent(Ljava/util/HashMap;Lti/modules/titanium/ui/widget/tableview/TableViewModel;Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;)V

    .line 481
    if-eqz v5, :cond_0

    .line 482
    const-string v6, "layoutName"

    invoke-virtual {v0, v6, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_0
    const-string v6, "searchMode"

    iget-object v7, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v7}, Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;->isFiltered()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, "longClickFired":Z
    iget-object v6, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    instance-of v6, v6, Lti/modules/titanium/ui/TableViewRowProxy;

    if-eqz v6, :cond_1

    .line 488
    iget-object v4, v2, Lti/modules/titanium/ui/widget/tableview/TableViewModel$Item;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v4, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 489
    .local v4, "rp":Lti/modules/titanium/ui/TableViewRowProxy;
    const-string v6, "source"

    invoke-virtual {v0, v6, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {v4, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->hierarchyHasListener(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    invoke-virtual {v4, v1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 493
    const/4 v3, 0x1

    .line 496
    .end local v4    # "rp":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_1
    if-eqz p3, :cond_3

    if-nez v3, :cond_3

    .line 497
    iget-object v6, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    invoke-interface {v6, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;->onLongClick(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v6

    .line 501
    :goto_1
    return v6

    .line 479
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v3    # "longClickFired":Z
    :cond_2
    const-string v1, "click"

    goto :goto_0

    .line 498
    .restart local v1    # "eventName":Ljava/lang/String;
    .restart local v3    # "longClickFired":Z
    :cond_3
    if-eqz v3, :cond_4

    .line 499
    const/4 v6, 0x1

    goto :goto_1

    .line 501
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setFilterAnchored(Z)V
    .locals 0
    .param p1, "filterAnchored"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAnchored:Z

    .line 595
    return-void
.end method

.method public setFilterAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterAttribute"    # Ljava/lang/String;

    .prologue
    .line 590
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterAttribute:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public setFilterCaseInsensitive(Z)V
    .locals 0
    .param p1, "filterCaseInsensitive"    # Z

    .prologue
    .line 598
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterCaseInsensitive:Z

    .line 599
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 579
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->filterText:Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/widget/tableview/TiTableView$5;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/tableview/TiTableView$5;-><init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 587
    :cond_0
    return-void
.end method

.method public setFooterView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 418
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    const-string v2, "footerView"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    const-string v2, "footerView"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 421
    .local v0, "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 422
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 424
    .end local v0    # "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    return-void
.end method

.method public setHeaderView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 399
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    const-string v2, "headerView"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->proxy:Lti/modules/titanium/ui/TableViewProxy;

    const-string v2, "headerView"

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/TableViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 402
    .local v0, "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->layoutHeaderOrFooter(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 403
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->adapter:Lti/modules/titanium/ui/widget/tableview/TiTableView$TTVListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    .end local v0    # "view":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    .prologue
    .line 543
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    .line 544
    return-void
.end method

.method public setOnItemLongClickListener(Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    .prologue
    .line 548
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->itemLongClickListener:Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemLongClickedListener;

    .line 549
    return-void
.end method

.method public setSeparatorColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "colorstring"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 553
    .local v1, "sepColor":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 554
    .local v0, "dividerHeight":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 555
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 556
    return-void
.end method
