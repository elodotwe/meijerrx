.class public Lti/modules/titanium/ui/widget/listview/TiListView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiListView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;,
        Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;
    }
.end annotation


# static fields
.field public static final BUILT_IN_TEMPLATE_ITEM_TYPE:I = 0x2

.field public static final CUSTOM_TEMPLATE_ITEM_TYPE:I = 0x3

.field public static final HEADER_FOOTER_TITLE_TYPE:I = 0x1

.field public static final HEADER_FOOTER_VIEW_TYPE:I = 0x0

.field public static final HEADER_FOOTER_WRAP_ID:I = 0x3039

.field public static final MIN_ROW_HEIGHT:Ljava/lang/String; = "30dp"

.field public static final MIN_SEARCH_HEIGHT:Ljava/lang/String; = "50dp"

.field public static MUST_SET_PROPERTIES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TiListView"

.field public static accessory:I

.field public static disclosure:I

.field public static hasChild:I

.field public static inflater:Landroid/view/LayoutInflater;

.field public static isCheck:I

.field public static listContentId:I


# instance fields
.field private adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

.field private caseInsensitive:Z

.field private defaultTemplateBinding:Ljava/lang/String;

.field private dividerHeight:I

.field private footerView:Landroid/view/View;

.field private headerFooterId:I

.field private headerView:Landroid/view/View;

.field private itemTypeCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private listItemId:I

.field private listView:Landroid/widget/ListView;

.field private markers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private searchLayout:Landroid/widget/RelativeLayout;

.field private searchText:Ljava/lang/String;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            ">;"
        }
    .end annotation
.end field

.field private templatesByBinding:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private titleId:I

.field private wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "autoLink"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "html"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lti/modules/titanium/ui/widget/listview/TiListView;->MUST_SET_PROPERTIES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 9
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 279
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->markers:Ljava/util/ArrayList;

    .line 282
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    .line 283
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->itemTypeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 284
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    .line 285
    const-string v4, "listDefaultTemplate"

    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    .line 286
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->caseInsensitive:Z

    move-object v4, p1

    .line 289
    check-cast v4, Lti/modules/titanium/ui/widget/listview/ListViewProxy;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreloadMarkers()Ljava/util/ArrayList;

    move-result-object v2

    .line 290
    .local v2, "preloadMarkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->setMarkers(Ljava/util/ArrayList;)V

    .line 295
    :cond_0
    new-instance v3, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    invoke-direct {v3, p0, p2}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;-><init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/content/Context;)V

    .line 296
    .local v3, "wrapper":Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;
    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->setFocusable(Z)V

    .line 297
    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->setFocusableInTouchMode(Z)V

    .line 298
    new-instance v4, Landroid/widget/ListView;

    invoke-direct {v4, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    .line 299
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->addView(Landroid/view/View;)V

    .line 301
    new-instance v4, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-direct {v4, p0, p2}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;-><init>(Lti/modules/titanium/ui/widget/listview/TiListView;Landroid/app/Activity;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    .line 304
    sget-object v4, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    if-nez v4, :cond_1

    .line 305
    const-string v4, "layout_inflater"

    invoke-virtual {p2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    sput-object v4, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    .line 308
    :cond_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 309
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v4

    iput-boolean v6, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 310
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v4

    iput-boolean v6, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 311
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 312
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 313
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 315
    move-object v1, p1

    .line 316
    .local v1, "fProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    new-instance v5, Lti/modules/titanium/ui/widget/listview/TiListView$1;

    invoke-direct {v5, p0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView$1;-><init>(Lti/modules/titanium/ui/widget/listview/TiListView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 374
    :try_start_0
    const-string v4, "layout.titanium_ui_list_header_or_footer"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    .line 375
    const-string v4, "layout.titanium_ui_list_item"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listItemId:I

    .line 376
    const-string v4, "id.titanium_ui_list_header_or_footer_title"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    .line 377
    const-string v4, "id.titanium_ui_list_item_content"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    sput v4, Lti/modules/titanium/ui/widget/listview/TiListView;->listContentId:I

    .line 378
    const-string v4, "drawable.btn_check_buttonless_on_64"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    sput v4, Lti/modules/titanium/ui/widget/listview/TiListView;->isCheck:I

    .line 379
    const-string v4, "drawable.btn_more_64"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    sput v4, Lti/modules/titanium/ui/widget/listview/TiListView;->hasChild:I

    .line 380
    const-string v4, "drawable.disclosure_64"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    sput v4, Lti/modules/titanium/ui/widget/listview/TiListView;->disclosure:I

    .line 381
    const-string v4, "id.titanium_ui_list_item_accessoryType"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    sput v4, Lti/modules/titanium/ui/widget/listview/TiListView;->accessory:I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    .line 387
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->setNativeView(Landroid/view/View;)V

    .line 388
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v4, "TiListView"

    const-string v5, "XML resources could not be found!!!"

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/listview/TiListView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/listview/TiListView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/listview/TiListView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 58
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    return v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/listview/TiListView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 58
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    return v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/listview/TiListView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/listview/TiListView;

    .prologue
    .line 58
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listItemId:I

    return v0
.end method

.method private addSearchLayout(Landroid/widget/RelativeLayout;Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 8
    .param p1, "layout"    # Landroid/widget/RelativeLayout;
    .param p2, "searchView"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p3, "search"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    const/4 v7, 0x0

    .line 598
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->createBasicSearchLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 599
    .local v2, "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 602
    const-string v6, "height"

    invoke-virtual {p2, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 603
    const-string v6, "height"

    invoke-virtual {p2, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    .line 607
    .local v5, "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    :goto_0
    invoke-virtual {v5, p1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 609
    invoke-virtual {p3}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 610
    .local v1, "nativeView":Landroid/view/View;
    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->createBasicSearchLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 613
    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 614
    const/4 v6, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 615
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 616
    .local v4, "parentWrapper":Landroid/view/ViewParent;
    if-eqz v4, :cond_1

    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 618
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    invoke-virtual {v6}, Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object v3, v4

    .line 619
    check-cast v3, Landroid/view/ViewGroup;

    .line 621
    .local v3, "parentView":Landroid/view/ViewGroup;
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 623
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    invoke-virtual {p1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    invoke-virtual {v3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "parentView":Landroid/view/ViewGroup;
    :goto_1
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchLayout:Landroid/widget/RelativeLayout;

    .line 630
    return-void

    .line 605
    .end local v1    # "nativeView":Landroid/view/View;
    .end local v4    # "parentWrapper":Landroid/view/ViewParent;
    .end local v5    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    :cond_0
    const-string v6, "50dp"

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    .restart local v5    # "rawHeight":Lorg/appcelerator/titanium/TiDimension;
    goto :goto_0

    .line 627
    .restart local v1    # "nativeView":Landroid/view/View;
    .restart local v4    # "parentWrapper":Landroid/view/ViewParent;
    :cond_1
    iget-object v6, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    invoke-virtual {p1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private createBasicSearchLayout()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 633
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 634
    .local v0, "p":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 635
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 636
    return-object v0
.end method

.method private findItemPosition(II)I
    .locals 5
    .param p1, "sectionIndex"    # I
    .param p2, "sectionItemIndex"    # I

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 917
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 918
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 919
    .local v2, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    if-ne v0, p1, :cond_2

    .line 920
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getContentCount()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 921
    const-string v3, "TiListView"

    const-string v4, "Invalid item index"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v3, -0x1

    .line 933
    .end local v2    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :goto_1
    return v3

    .line 924
    .restart local v2    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    add-int/2addr v1, p2

    .line 925
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getHeaderTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 926
    add-int/lit8 v1, v1, 0x1

    .end local v2    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_1
    move v3, v1

    .line 933
    goto :goto_1

    .line 930
    .restart local v2    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_2
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSearchViewValid(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 669
    instance-of v0, p1, Lti/modules/titanium/ui/SearchBarProxy;

    if-nez v0, :cond_0

    instance-of v0, p1, Lti/modules/titanium/ui/android/SearchViewProxy;

    if-eqz v0, :cond_1

    .line 670
    :cond_0
    const/4 v0, 0x1

    .line 672
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutSearchView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .param p1, "searchView"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v3, 0x0

    .line 589
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 590
    .local v1, "search":Lorg/appcelerator/titanium/view/TiUIView;
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 591
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 592
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 593
    invoke-direct {p0, v0, p1, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->addSearchLayout(Landroid/widget/RelativeLayout;Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 594
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->setNativeView(Landroid/view/View;)V

    .line 595
    return-void
.end method

.method private reFilter(Ljava/lang/String;)V
    .locals 5
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "numResults":I
    if-eqz p1, :cond_0

    .line 655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 656
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 657
    .local v2, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v2, p1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->applyFilter(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    .end local v0    # "i":I
    .end local v2    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    if-nez v1, :cond_1

    .line 661
    const-string v3, "noresults"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 663
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v3, :cond_2

    .line 664
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 666
    :cond_2
    return-void
.end method

.method private refreshItems()V
    .locals 3

    .prologue
    .line 751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 752
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 753
    .local v1, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->refreshItems()V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .end local v1    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    return-void
.end method

.method private setHeaderOrFooterView(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "viewObj"    # Ljava/lang/Object;
    .param p2, "isHeader"    # Z

    .prologue
    .line 639
    instance-of v2, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 640
    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 641
    .local v1, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->layoutHeaderOrFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;

    move-result-object v0

    .line 642
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 643
    if-eqz p2, :cond_1

    .line 644
    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    .line 650
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    :goto_0
    return-void

    .line 646
    .restart local v0    # "view":Landroid/view/View;
    .restart local v1    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    iput-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    goto :goto_0
.end method

.method private setSearchListener(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .param p1, "searchView"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "search"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 731
    instance-of v0, p1, Lti/modules/titanium/ui/SearchBarProxy;

    if-eqz v0, :cond_1

    .line 732
    check-cast p2, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    .end local p2    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 733
    .restart local p2    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    instance-of v0, p1, Lti/modules/titanium/ui/android/SearchViewProxy;

    if-eqz v0, :cond_0

    .line 734
    check-cast p2, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;

    .end local p2    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/widget/searchview/TiUISearchView;->setOnSearchChangeListener(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$OnSearchChangeListener;)V

    goto :goto_0
.end method

.method private setSeparatorColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 739
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 740
    .local v1, "sepColor":I
    const/4 v0, 0x0

    .line 741
    .local v0, "dHeight":I
    iget v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->dividerHeight:I

    if-nez v2, :cond_0

    .line 742
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 746
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 747
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 748
    return-void

    .line 744
    :cond_0
    iget v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->dividerHeight:I

    goto :goto_0
.end method


# virtual methods
.method public addMarker(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "markerItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "sectionIndex"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 465
    .local v1, "sectionIndex":I
    const-string v2, "itemIndex"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 466
    .local v0, "itemIndex":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->markers:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method public appendSection(Ljava/lang/Object;)V
    .locals 4
    .param p1, "section"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 873
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 874
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "section":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 875
    .local v1, "secs":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 876
    aget-object v2, v1, v0

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    .end local v0    # "i":I
    .end local v1    # "secs":[Ljava/lang/Object;
    .restart local p1    # "section":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 881
    .end local p1    # "section":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 882
    return-void
.end method

.method public checkMarker(IIZ)V
    .locals 6
    .param p1, "sectionIndex"    # I
    .param p2, "sectionItemIndex"    # I
    .param p3, "hasHeader"    # Z

    .prologue
    .line 439
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->markers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    :cond_0
    return-void

    .line 443
    :cond_1
    if-eqz p3, :cond_2

    .line 444
    add-int/lit8 p2, p2, -0x1

    .line 447
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->markers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 450
    .local v2, "marker":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_3

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p2, v3, :cond_3

    .line 451
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 452
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "sectionIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v3, "itemIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "marker"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasListeners(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 455
    iget-object v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "marker"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 457
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public deleteSectionAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 885
    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 886
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 887
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    const-string v0, "TiListView"

    const-string v1, "Invalid index to delete section"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public filterBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 983
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    .line 984
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->reFilter(Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method public getCaseInsensitive()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->caseInsensitive:Z

    return v0
.end method

.method public getDefaultTemplateBinding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->itemTypeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionCount()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getSectionInfoByEntryIndex(I)Landroid/util/Pair;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lti/modules/titanium/ui/widget/listview/ListSectionProxy;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 840
    if-gez p1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-object v3

    .line 843
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 844
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 845
    .local v1, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->getItemCount()I

    move-result v2

    .line 846
    .local v2, "sectionItemCount":I
    add-int/lit8 v4, v2, -0x1

    if-gt p1, v4, :cond_2

    .line 847
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 849
    :cond_2
    sub-int/2addr p1, v2

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSections()[Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    return-object v0
.end method

.method public getTemplateByBinding(Ljava/lang/String;)Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    .locals 1
    .param p1, "binding"    # Ljava/lang/String;

    .prologue
    .line 861
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    return-object v0
.end method

.method public insertSectionAt(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 894
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    .line 895
    const-string v2, "TiListView"

    const-string v3, "Invalid index to insert/replace section"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    .end local p2    # "section":Ljava/lang/Object;
    :goto_0
    return-void

    .line 898
    .restart local p2    # "section":Ljava/lang/Object;
    :cond_0
    instance-of v2, p2, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 899
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "section":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    .line 900
    .local v1, "secs":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 901
    aget-object v2, v1, v0

    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 902
    add-int/lit8 p1, p1, 0x1

    .line 900
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 905
    .end local v0    # "i":I
    .end local v1    # "secs":[Ljava/lang/Object;
    .restart local p2    # "section":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p2, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 907
    .end local p2    # "section":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public layoutHeaderOrFooterView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Landroid/view/View;
    .locals 10
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/16 v9, 0x3039

    .line 771
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 772
    .local v4, "tiView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v4, :cond_1

    .line 773
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    .line 775
    .local v2, "parentProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v2, :cond_0

    .line 776
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    .line 777
    .local v3, "parentView":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v3, :cond_0

    .line 778
    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->remove(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 784
    .end local v2    # "parentProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v3    # "parentView":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 785
    .local v0, "outerView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 786
    .local v3, "parentView":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 796
    .end local v3    # "parentView":Landroid/view/ViewGroup;
    :goto_1
    return-object v3

    .line 782
    .end local v0    # "outerView":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->forceCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    goto :goto_0

    .line 790
    .restart local v0    # "outerView":Landroid/view/View;
    .restart local v3    # "parentView":Landroid/view/ViewGroup;
    :cond_2
    new-instance v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v7, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;->DEFAULT:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutArrangement;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 791
    .local v5, "wrapper":Lorg/appcelerator/titanium/view/TiCompositeLayout;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 792
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v5, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 794
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    invoke-virtual {v5, v9}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setId(I)V

    move-object v3, v5

    .line 796
    goto :goto_1
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 471
    const-string v9, "templates"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 472
    const-string v9, "templates"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 473
    .local v7, "templates":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 474
    new-instance v9, Lorg/appcelerator/kroll/KrollDict;

    check-cast v7, Ljava/util/HashMap;

    .end local v7    # "templates":Ljava/lang/Object;
    invoke-direct {v9, v7}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->processTemplates(Lorg/appcelerator/kroll/KrollDict;)V

    .line 478
    :cond_0
    const-string v9, "searchText"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 479
    const-string v9, "searchText"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    .line 482
    :cond_1
    const-string v9, "searchView"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 483
    const-string v9, "searchView"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 484
    .local v6, "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/listview/TiListView;->isSearchViewValid(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 485
    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v5

    .line 486
    .local v5, "search":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-direct {p0, v6, v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->setSearchListener(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 487
    invoke-direct {p0, v6}, Lti/modules/titanium/ui/widget/listview/TiListView;->layoutSearchView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 493
    .end local v5    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v6    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    :goto_0
    const-string v9, "caseInsensitiveSearch"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 494
    const-string v9, "caseInsensitiveSearch"

    const/4 v10, 0x1

    invoke-static {p1, v9, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->caseInsensitive:Z

    .line 497
    :cond_3
    const-string v9, "separatorHeight"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 498
    const-string v9, "separatorHeight"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v9, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v1

    .line 499
    .local v1, "dHeight":Lorg/appcelerator/titanium/TiDimension;
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    .line 500
    .local v3, "height":I
    if-ltz v3, :cond_4

    .line 501
    iput v3, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->dividerHeight:I

    .line 502
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v9, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 506
    .end local v1    # "dHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v3    # "height":I
    :cond_4
    const-string v9, "separatorColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 507
    const-string v9, "separatorColor"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "color":Ljava/lang/String;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->setSeparatorColor(Ljava/lang/String;)V

    .line 511
    .end local v0    # "color":Ljava/lang/String;
    :cond_5
    const-string v9, "footerDividersEnabled"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 512
    const-string v9, "footerDividersEnabled"

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v2

    .line 513
    .local v2, "enabled":Z
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 518
    .end local v2    # "enabled":Z
    :goto_1
    const-string v9, "headerDividersEnabled"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 519
    const-string v9, "headerDividersEnabled"

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v2

    .line 520
    .restart local v2    # "enabled":Z
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v9, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 525
    .end local v2    # "enabled":Z
    :goto_2
    const-string v9, "showVerticalScrollIndicator"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 526
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    const-string v10, "showVerticalScrollIndicator"

    const/4 v11, 0x1

    invoke-static {p1, v10, v11}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 529
    :cond_6
    const-string v9, "defaultItemTemplate"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 530
    const-string v9, "defaultItemTemplate"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    .line 533
    :cond_7
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v4, Lti/modules/titanium/ui/widget/listview/ListViewProxy;

    .line 534
    .local v4, "listProxy":Lti/modules/titanium/ui/widget/listview/ListViewProxy;
    const-string v9, "sections"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 538
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreload()Z

    move-result v9

    if-nez v9, :cond_10

    .line 539
    const-string v9, "sections"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    .line 549
    :cond_8
    :goto_3
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->clearPreloadSections()V

    .line 550
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->setPreload(Z)V

    .line 552
    const-string v9, "headerView"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 553
    const-string v9, "headerView"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 554
    .local v8, "viewObj":Ljava/lang/Object;
    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->setHeaderOrFooterView(Ljava/lang/Object;Z)V

    .line 560
    .end local v8    # "viewObj":Ljava/lang/Object;
    :cond_9
    :goto_4
    const-string v9, "footerView"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 561
    const-string v9, "footerView"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 562
    .restart local v8    # "viewObj":Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->setHeaderOrFooterView(Ljava/lang/Object;Z)V

    .line 569
    .end local v8    # "viewObj":Ljava/lang/Object;
    :cond_a
    :goto_5
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    if-nez v9, :cond_b

    .line 570
    sget-object v9, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    .line 571
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    iget v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_b
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    if-nez v9, :cond_c

    .line 575
    sget-object v9, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    .line 576
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    iget v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 580
    :cond_c
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    iget-object v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 581
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    iget-object v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 583
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    iget-object v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 586
    return-void

    .line 489
    .end local v4    # "listProxy":Lti/modules/titanium/ui/widget/listview/ListViewProxy;
    .restart local v6    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_d
    const-string v9, "TiListView"

    const-string v10, "Searchview type is invalid"

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    .end local v6    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_e
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    goto/16 :goto_1

    .line 522
    :cond_f
    iget-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    goto/16 :goto_2

    .line 541
    .restart local v4    # "listProxy":Lti/modules/titanium/ui/widget/listview/ListViewProxy;
    :cond_10
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreloadSections()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 543
    :cond_11
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreload()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 546
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/listview/ListViewProxy;->getPreloadSections()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 555
    :cond_12
    const-string v9, "headerTitle"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 556
    sget-object v9, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    .line 557
    const-string v9, "headerTitle"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->setHeaderTitle(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 563
    :cond_13
    const-string v9, "footerTitle"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 564
    sget-object v9, Lti/modules/titanium/ui/widget/listview/TiListView;->inflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerFooterId:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    .line 565
    const-string v9, "footerTitle"

    invoke-static {p1, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/listview/TiListView;->setFooterTitle(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method protected processSection(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "sec"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 816
    instance-of v1, p1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 817
    check-cast v0, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    .line 818
    .local v0, "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 837
    .end local v0    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_0
    :goto_0
    return-void

    .line 821
    .restart local v0    # "section":Lti/modules/titanium/ui/widget/listview/ListSectionProxy;
    :cond_1
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_3

    .line 822
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :goto_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setAdapter(Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;)V

    .line 827
    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setListView(Lti/modules/titanium/ui/widget/listview/TiListView;)V

    .line 829
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->setTemplateType()V

    .line 831
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->processPreloadData()V

    .line 833
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->applyFilter(Ljava/lang/String;)I

    goto :goto_0

    .line 824
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method protected processSections([Ljava/lang/Object;)V
    .locals 3
    .param p1, "sections"    # [Ljava/lang/Object;

    .prologue
    .line 802
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 804
    aget-object v1, p1, v0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSection(Ljava/lang/Object;I)V

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_0
    return-void
.end method

.method protected processSectionsAndNotify([Ljava/lang/Object;)V
    .locals 1
    .param p1, "sections"    # [Ljava/lang/Object;

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSections([Ljava/lang/Object;)V

    .line 810
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->adapter:Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/listview/TiListView$TiBaseAdapter;->notifyDataSetChanged()V

    .line 813
    :cond_0
    return-void
.end method

.method protected processTemplates(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "templates"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 758
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 760
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 761
    .local v2, "properties":Lorg/appcelerator/kroll/KrollDict;
    new-instance v3, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;

    invoke-direct {v3, v1, v2}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;-><init>(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 763
    .local v3, "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->getItemType()I

    move-result v4

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->setType(I)V

    .line 764
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v4, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;->setRootParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 768
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "properties":Lorg/appcelerator/kroll/KrollDict;
    .end local v3    # "template":Lti/modules/titanium/ui/widget/listview/TiListViewTemplate;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 678
    const-string v5, "headerTitle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 679
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->setHeaderTitle(Ljava/lang/String;)V

    .line 727
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 680
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v5, "footerTitle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 681
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->setFooterTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_2
    const-string v5, "sections"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, p3, [Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 683
    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "newValue":Ljava/lang/Object;
    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lti/modules/titanium/ui/widget/listview/TiListView;->processSectionsAndNotify([Ljava/lang/Object;)V

    goto :goto_0

    .line 684
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v5, "searchText"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 685
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    .line 686
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 687
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->reFilter(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_4
    const-string v5, "caseInsensitiveSearch"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 690
    const/4 v5, 0x1

    invoke-static {p3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v5

    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->caseInsensitive:Z

    .line 691
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 692
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchText:Ljava/lang/String;

    invoke-direct {p0, v5}, Lti/modules/titanium/ui/widget/listview/TiListView;->reFilter(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_5
    const-string v5, "searchView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v4, p3

    .line 695
    check-cast v4, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 696
    .local v4, "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->isSearchViewValid(Lorg/appcelerator/titanium/proxy/TiViewProxy;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 697
    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    .line 698
    .local v3, "search":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-direct {p0, v4, v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->setSearchListener(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 699
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_6

    .line 700
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 701
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->searchLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v5, v4, v3}, Lti/modules/titanium/ui/widget/listview/TiListView;->addSearchLayout(Landroid/widget/RelativeLayout;Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/view/TiUIView;)V

    goto :goto_0

    .line 703
    :cond_6
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/listview/TiListView;->layoutSearchView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 706
    .end local v3    # "search":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_7
    const-string v5, "TiListView"

    const-string v6, "Searchview type is invalid"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 709
    .end local v4    # "searchView":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_8
    const-string v5, "showVerticalScrollIndicator"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz p3, :cond_9

    .line 710
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto/16 :goto_0

    .line 711
    :cond_9
    const-string v5, "defaultItemTemplate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz p3, :cond_a

    .line 712
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->defaultTemplateBinding:Ljava/lang/String;

    .line 713
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/listview/TiListView;->refreshItems()V

    goto/16 :goto_0

    .line 714
    :cond_a
    const-string v5, "separatorColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 715
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "color":Ljava/lang/String;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->setSeparatorColor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 717
    .end local v0    # "color":Ljava/lang/String;
    :cond_b
    const-string v5, "separatorHeight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 718
    const/4 v5, -0x1

    invoke-static {p3, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v1

    .line 719
    .local v1, "dHeight":Lorg/appcelerator/titanium/TiDimension;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v2

    .line 720
    .local v2, "height":I
    if-ltz v2, :cond_0

    .line 721
    iput v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->dividerHeight:I

    .line 722
    iget-object v5, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto/16 :goto_0

    .line 725
    .end local v1    # "dHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v2    # "height":I
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method public registerForTouch()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->registerForTouch(Landroid/view/View;)V

    .line 419
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 955
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 956
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/listview/ListSectionProxy;->releaseViews()V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->templatesByBinding:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 960
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 962
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    if-eqz v1, :cond_1

    .line 963
    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->wrapper:Lti/modules/titanium/ui/widget/listview/TiListView$ListViewWrapper;

    .line 966
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 967
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 968
    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    .line 970
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 971
    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    .line 973
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 974
    iput-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    .line 977
    :cond_4
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 978
    return-void
.end method

.method public replaceSectionAt(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "section"    # Ljava/lang/Object;

    .prologue
    .line 911
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->deleteSectionAt(I)V

    .line 912
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->insertSectionAt(ILjava/lang/Object;)V

    .line 913
    return-void
.end method

.method protected scrollToItem(IIZ)V
    .locals 3
    .param p1, "sectionIndex"    # I
    .param p2, "sectionItemIndex"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 937
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/listview/TiListView;->findItemPosition(II)I

    move-result v0

    .line 938
    .local v0, "position":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 939
    if-eqz p3, :cond_1

    .line 940
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->listView:Landroid/widget/ListView;

    new-instance v2, Lti/modules/titanium/ui/widget/listview/TiListView$2;

    invoke-direct {v2, p0, v0}, Lti/modules/titanium/ui/widget/listview/TiListView$2;-><init>(Lti/modules/titanium/ui/widget/listview/TiListView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFooterTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->footerView:Landroid/view/View;

    iget v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 409
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    :cond_0
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->headerView:Landroid/view/View;

    iget v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->titleId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 401
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 403
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    :cond_0
    return-void
.end method

.method public setMarker(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "markerItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/listview/TiListView;->addMarker(Ljava/util/HashMap;)V

    .line 425
    return-void
.end method

.method public setMarkers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "markerItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListView;->markers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 431
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 432
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 433
    .local v1, "markerItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/listview/TiListView;->addMarker(Ljava/util/HashMap;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v1    # "markerItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method
