.class public Lti/modules/titanium/ui/widget/TiUIScrollableView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIScrollableView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;,
        Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final PAGE_LEFT:I = 0xc8

.field private static final PAGE_RIGHT:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TiUIScrollableView"


# instance fields
.field private final mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

.field private final mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

.field private mCurIndex:I

.field private mEnabled:Z

.field private final mPager:Landroid/support/v4/view/ViewPager;

.field private final mPagingControl:Landroid/widget/RelativeLayout;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/ScrollableViewProxy;)V
    .locals 4
    .param p1, "proxy"    # Lti/modules/titanium/ui/ScrollableViewProxy;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    .line 59
    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    .line 62
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    .line 64
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;

    invoke-direct {v1, p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$TiViewPagerLayout;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .line 65
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildPagingControl(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setNativeView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$1100(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIScrollableView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return v0
.end method

.method static synthetic access$202(Lti/modules/titanium/ui/widget/TiUIScrollableView;I)I
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return p1
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->shouldShowPager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/TiUIScrollableView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIScrollableView;

    .prologue
    .line 40
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method private buildFillLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 217
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 218
    .local v0, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 219
    iput-boolean v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 220
    return-object v0
.end method

.method private buildPagingControl(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x50

    const/4 v5, -0x2

    .line 225
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 227
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 229
    new-instance v1, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-direct {v1, p1}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v1, "left":Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v1, v8}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 231
    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 232
    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 233
    invoke-virtual {v1, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 234
    new-instance v4, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$3;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v1, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v3, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-direct {v3, p1}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 247
    .local v3, "right":Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/widget/TiArrowView;->setLeft(Z)V

    .line 248
    invoke-virtual {v3, v8}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 249
    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 250
    invoke-virtual {v3, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 251
    invoke-virtual {v3, v6}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 252
    new-instance v4, Lti/modules/titanium/ui/widget/TiUIScrollableView$4;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$4;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 262
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 263
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 267
    return-object v0
.end method

.method private buildViewPager(Landroid/content/Context;Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;)Landroid/support/v4/view/ViewPager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    .prologue
    .line 75
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/TiUIScrollableView$1;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;Landroid/content/Context;)V

    .line 96
    .local v0, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$2;-><init>(Lti/modules/titanium/ui/widget/TiUIScrollableView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 202
    return-object v0
.end method

.method private clearViewsList()V
    .locals 3

    .prologue
    .line 433
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 437
    .local v1, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 438
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_1

    .line 440
    .end local v1    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private move(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 388
    if-ltz p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 389
    :cond_0
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    const-string v0, "TiUIScrollableView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to move to index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignored, as it is out-of-bounds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iput p1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    .line 395
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method private shouldShowPager()Z
    .locals 3

    .prologue
    .line 207
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "showPagingControl"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "showPagingControl":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 209
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 335
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 337
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 338
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "views"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 342
    :cond_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    return v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hidePager()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 374
    return-void
.end method

.method public moveNext()V
    .locals 2

    .prologue
    .line 378
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(IZ)V

    .line 379
    return-void
.end method

.method public movePrevious()V
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(IZ)V

    .line 384
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 273
    const-string v2, "views"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const-string v2, "views"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setViews(Ljava/lang/Object;)V

    .line 277
    :cond_0
    const-string v2, "currentPage"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const-string v2, "currentPage"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    .line 279
    .local v1, "page":I
    if-lez v1, :cond_1

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 284
    .end local v1    # "page":I
    :cond_1
    const-string v2, "showPagingControl"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    const-string v2, "showPagingControl"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    .line 290
    :cond_2
    const-string v2, "scrollingEnabled"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    const-string v2, "scrollingEnabled"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    .line 294
    :cond_3
    const-string v2, "overScrollMode"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 295
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    .line 296
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    const-string v3, "overScrollMode"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    .line 300
    :cond_4
    const-string v2, "cacheSize"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 301
    const-string v2, "cacheSize"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 302
    .local v0, "cacheSize":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 305
    .end local v0    # "cacheSize":I
    :cond_5
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 307
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 313
    const-string v1, "currentPage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->setCurrentPage(Ljava/lang/Object;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string v1, "showPagingControl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 317
    .local v0, "show":Z
    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->showPager()V

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->hidePager()V

    goto :goto_0

    .line 322
    .end local v0    # "show":Z
    :cond_3
    const-string v1, "scrollingEnabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    goto :goto_0

    .line 324
    :cond_4
    const-string v1, "overScrollMode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-static {p3, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOverScrollMode(I)V

    goto :goto_0

    .line 329
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 474
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 475
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 476
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 475
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 480
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 481
    .local v2, "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 482
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_1

    .line 484
    .end local v2    # "viewProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 486
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 487
    return-void
.end method

.method public removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 346
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 349
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    const-string v1, "views"

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 400
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 401
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(IZ)V

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 402
    .restart local p1    # "view":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(IZ)V

    goto :goto_0
.end method

.method public setCurrentPage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "view"    # Ljava/lang/Object;

    .prologue
    .line 414
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 415
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->move(IZ)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    .restart local p1    # "view":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const-string v0, "TiUIScrollableView"

    const-string v1, "Request to set current page is ignored, as it is not a number."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnabled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 423
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mEnabled:Z

    .line 424
    return-void
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 6
    .param p1, "viewsObject"    # Ljava/lang/Object;

    .prologue
    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, "changed":Z
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIScrollableView;->clearViewsList()V

    .line 448
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 449
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "viewsObject":Ljava/lang/Object;
    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    .line 450
    .local v4, "views":[Ljava/lang/Object;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 451
    .local v0, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 452
    aget-object v5, v4, v2

    instance-of v5, v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_0

    .line 453
    aget-object v3, v4, v2

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 454
    .local v3, "tv":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 455
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 456
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v1, 0x1

    .line 451
    .end local v3    # "tv":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "i":I
    .end local v4    # "views":[Ljava/lang/Object;
    :cond_1
    if-eqz v1, :cond_2

    .line 462
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mAdapter:Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiUIScrollableView$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 464
    :cond_2
    return-void
.end method

.method public showPager()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mContainer:Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v4, 0xc9

    invoke-virtual {v1, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_2

    .line 364
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mCurIndex:I

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_2
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->mPagingControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIScrollableView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v1, Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->setPagerTimeout()V

    .line 369
    return-void

    :cond_3
    move v1, v3

    .line 359
    goto :goto_0
.end method
