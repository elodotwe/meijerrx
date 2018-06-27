.class public Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;
.super Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;
.source "TiUIActionBarTabGroup.java"

# interfaces
.implements Landroid/support/v7/app/ActionBar$TabListener;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;
    }
.end annotation


# static fields
.field private static final FRAGMENT_ID_ARRAY:Ljava/lang/String; = "fragmentIdArray"

.field private static final FRAGMENT_TAGS_ARRAYLIST:Ljava/lang/String; = "fragmentTagsArrayList"

.field private static final SAVED_INITIAL_FRAGMENT_ID:Ljava/lang/String; = "savedInitialFragmentId"

.field private static final TABS_DISABLED:Ljava/lang/String; = "tabsDisabled"

.field private static final TAG:Ljava/lang/String; = "TiUIActionBarTabGroup"


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private activityPaused:Z

.field private fragmentIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

.field private fragmentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numTabsWhenDisabled:I

.field private pendingDisableTabs:Z

.field private restoredFragmentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private restoredFragmentTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private savedSwipeable:Z

.field private selectedTabOnResume:Landroid/support/v7/app/ActionBar$Tab;

.field private smoothScrollOnTabClick:Z

.field private swipeable:Z

.field private tabActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private tabClicked:Z

.field private tabGroupPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private tabGroupViewPager:Landroid/support/v4/view/ViewPager;

.field private tabsDisabled:Z

.field private tempTabsDisabled:Z

.field private viewPagerRestoreComplete:Z


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "proxy"    # Lti/modules/titanium/ui/TabGroupProxy;
    .param p2, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 86
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;-><init>(Lti/modules/titanium/ui/TabGroupProxy;Lorg/appcelerator/titanium/TiBaseActivity;)V

    .line 61
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    .line 63
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabClicked:Z

    .line 64
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    .line 65
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tempTabsDisabled:Z

    .line 67
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->savedSwipeable:Z

    .line 68
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->swipeable:Z

    .line 69
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->smoothScrollOnTabClick:Z

    .line 70
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->pendingDisableTabs:Z

    .line 71
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->viewPagerRestoreComplete:Z

    .line 72
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->restoredFragmentIds:Ljava/util/ArrayList;

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIds:Ljava/util/ArrayList;

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentTags:Ljava/util/ArrayList;

    .line 88
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabActivity:Ljava/lang/ref/WeakReference;

    .line 96
    if-eqz p3, :cond_2

    .line 97
    const-string v4, "fragmentIdArray"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 98
    .local v0, "fragmentIdArray":[J
    const-string v4, "fragmentTagsArrayList"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->restoredFragmentTags:Ljava/util/ArrayList;

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "numRestoredTabs":I
    if-eqz v0, :cond_0

    .line 101
    array-length v2, v0

    .line 103
    :cond_0
    if-lez v2, :cond_1

    .line 105
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v5, "savedInitialFragmentId"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 107
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->restoredFragmentIds:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Long;

    aget-wide v6, v0, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_1
    const-string v4, "tabsDisabled"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tempTabsDisabled:Z

    .line 113
    .end local v0    # "fragmentIdArray":[J
    .end local v2    # "numRestoredTabs":I
    :cond_2
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 114
    invoke-virtual {p2, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnInstanceStateEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;)V

    .line 117
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 118
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 119
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 121
    new-instance v4, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;

    invoke-virtual {p2}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$TabGroupFragmentPagerAdapter;-><init>(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;Landroid/support/v4/app/FragmentManager;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 123
    new-instance v4, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;

    invoke-virtual {p1}, Lti/modules/titanium/ui/TabGroupProxy;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$1;-><init>(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    .line 144
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 146
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 148
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$2;

    invoke-direct {v5, p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup$2;-><init>(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 166
    new-instance v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v3}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 167
    .local v3, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v8, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 168
    iput-boolean v8, v3, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 169
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->setNativeView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .prologue
    .line 54
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->swipeable:Z

    return v0
.end method

.method static synthetic access$102(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->viewPagerRestoreComplete:Z

    return p1
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .prologue
    .line 54
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->checkAndDisableTabsIfRequired()V

    return-void
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Landroid/support/v7/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .prologue
    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .prologue
    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .prologue
    .line 54
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    return v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .prologue
    .line 54
    iget v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->numTabsWhenDisabled:I

    return v0
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;

    .prologue
    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkAndDisableTabsIfRequired()V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->viewPagerRestoreComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->pendingDisableTabs:Z

    if-eqz v0, :cond_0

    .line 287
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tempTabsDisabled:Z

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tempTabsDisabled:Z

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->disableTabNavigation(Z)V

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 14
    .param p1, "tabProxy"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 296
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v10}, Landroid/support/v7/app/ActionBar;->newTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v9

    .line 297
    .local v9, "tab":Landroid/support/v7/app/ActionBar$Tab;
    invoke-virtual {v9, p0}, Landroid/support/v7/app/ActionBar$Tab;->setTabListener(Landroid/support/v7/app/ActionBar$TabListener;)Landroid/support/v7/app/ActionBar$Tab;

    .line 298
    new-instance v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    invoke-direct {v0, p1, v9}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;-><init>(Lti/modules/titanium/ui/TabProxy;Landroid/support/v7/app/ActionBar$Tab;)V

    .line 299
    .local v0, "actionBarTab":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    const/4 v8, 0x0

    .line 304
    .local v8, "shouldUpdateTabsDisabled":Z
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->restoredFragmentIds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 305
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->restoredFragmentIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 306
    .local v4, "itemId":J
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->restoredFragmentTags:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 307
    .local v7, "restoredFragmentTag":Ljava/lang/String;
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v10}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 308
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;

    .line 309
    .local v2, "fragment":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->setTabOnFragment(Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;)V

    .line 312
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->restoredFragmentIds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 315
    const/4 v8, 0x1

    .line 322
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "fragment":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab$TabFragment;
    .end local v7    # "restoredFragmentTag":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIds:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/TabProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 328
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v10, v9, v13}, Landroid/support/v7/app/ActionBar;->addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V

    .line 329
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v10}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 330
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v10}, Landroid/support/v7/app/ActionBar;->getTabCount()I

    move-result v3

    .line 331
    .local v3, "numTabs":I
    if-le v3, v11, :cond_4

    add-int/lit8 v6, v3, -0x1

    .line 332
    .local v6, "offscreen":I
    :goto_1
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 333
    iget-boolean v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tempTabsDisabled:Z

    if-eqz v10, :cond_2

    if-eqz v8, :cond_2

    .line 334
    iput-boolean v11, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->pendingDisableTabs:Z

    .line 335
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->checkAndDisableTabsIfRequired()V

    .line 337
    :cond_2
    return-void

    .line 319
    .end local v3    # "numTabs":I
    .end local v4    # "itemId":J
    .end local v6    # "offscreen":I
    :cond_3
    iget-object v10, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v4

    .restart local v4    # "itemId":J
    goto :goto_0

    .restart local v3    # "numTabs":I
    :cond_4
    move v6, v11

    .line 331
    goto :goto_1
.end method

.method public disableTabNavigation(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 476
    if-eqz p1, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 477
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->swipeable:Z

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->savedSwipeable:Z

    .line 478
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->swipeable:Z

    .line 479
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getNavigationItemCount()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->numTabsWhenDisabled:I

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    .line 481
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    .line 484
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setNavigationMode(I)V

    .line 485
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->savedSwipeable:Z

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->swipeable:Z

    goto :goto_0
.end method

.method public getSelectedTab()Lti/modules/titanium/ui/TabProxy;
    .locals 4

    .prologue
    .line 372
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 380
    .local v1, "tab":Landroid/support/v7/app/ActionBar$Tab;
    :goto_0
    if-nez v1, :cond_0

    .line 383
    const/4 v3, 0x0

    .line 387
    :goto_1
    return-object v3

    .line 373
    .end local v1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .restart local v1    # "tab":Landroid/support/v7/app/ActionBar$Tab;
    goto :goto_0

    .line 386
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 387
    .local v2, "tabView":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    check-cast v3, Lti/modules/titanium/ui/TabProxy;

    goto :goto_1
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 416
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 440
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    .line 434
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 473
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    .line 425
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/support/v7/app/ActionBar$Tab;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/support/v7/app/ActionBar$Tab;

    .line 429
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 451
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    if-nez v3, :cond_0

    .line 452
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBar;->getNavigationItemCount()I

    move-result v2

    .line 456
    .local v2, "numTabs":I
    :goto_0
    const-string v3, "tabsDisabled"

    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    if-nez v2, :cond_1

    .line 458
    const-string v3, "fragmentIdArray"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 459
    const-string v3, "savedInitialFragmentId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 460
    const-string v3, "fragmentTagsArrayList"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 470
    :goto_1
    return-void

    .line 454
    .end local v2    # "numTabs":I
    :cond_0
    iget v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->numTabsWhenDisabled:I

    .restart local v2    # "numTabs":I
    goto :goto_0

    .line 463
    :cond_1
    const-string v3, "fragmentTagsArrayList"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentTags:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 464
    new-array v0, v2, [J

    .line 465
    .local v0, "fragmentIdArray":[J
    const-string v3, "savedInitialFragmentId"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 466
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 467
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 469
    :cond_2
    const-string v3, "fragmentIdArray"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_1
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 419
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 437
    return-void
.end method

.method public onTabReselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 413
    return-void
.end method

.method public onTabSelected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 6
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    const/4 v5, 0x0

    .line 392
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 393
    .local v1, "tabView":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getPosition()I

    move-result v3

    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->smoothScrollOnTabClick:Z

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 394
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 395
    .local v0, "tabProxy":Lti/modules/titanium/ui/TabProxy;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v2, Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v2, v0}, Lti/modules/titanium/ui/TabGroupProxy;->onTabSelected(Lti/modules/titanium/ui/TabProxy;)V

    .line 396
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabClicked:Z

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "click"

    invoke-virtual {v0, v2, v5}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 401
    :goto_0
    const-string v2, "selected"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v5, v3}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 402
    return-void

    .line 399
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabClicked:Z

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/support/v7/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 5
    .param p1, "tab"    # Landroid/support/v7/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/support/v4/app/FragmentTransaction;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 407
    .local v1, "tabView":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TabProxy;

    .line 408
    .local v0, "tabProxy":Lti/modules/titanium/ui/TabProxy;
    const-string v2, "unselected"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lti/modules/titanium/ui/TabProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    .line 409
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 254
    invoke-super {p0, p1}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 255
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    const-string v0, "swipeable"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string v0, "swipeable"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->swipeable:Z

    .line 261
    :cond_1
    const-string v0, "smoothScrollOnTabClick"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    const-string v0, "smoothScrollOnTabClick"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->smoothScrollOnTabClick:Z

    .line 264
    :cond_2
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 270
    const-string v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string v0, "swipeable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabsDisabled:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->savedSwipeable:Z

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->swipeable:Z

    goto :goto_0

    .line 278
    :cond_2
    const-string v0, "smoothScrollOnTabClick"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->smoothScrollOnTabClick:Z

    goto :goto_0

    .line 281
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/tabgroup/TiUIAbstractTabGroup;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public removeTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 7
    .param p1, "tabProxy"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 341
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v5, Lti/modules/titanium/ui/TabGroupProxy;

    invoke-virtual {v5, p1}, Lti/modules/titanium/ui/TabGroupProxy;->getTabIndex(Lti/modules/titanium/ui/TabProxy;)I

    move-result v3

    .line 342
    .local v3, "tabIndex":I
    invoke-virtual {p1}, Lti/modules/titanium/ui/TabProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 343
    .local v4, "tabView":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v6, v4, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->removeTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 344
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentTags:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    .local v2, "removedTag":Ljava/lang/String;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->fragmentIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 346
    .local v0, "removedId":J
    iget-object v5, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabGroupPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 347
    return-void
.end method

.method public selectTab(Lti/modules/titanium/ui/TabProxy;)V
    .locals 3
    .param p1, "tabProxy"    # Lti/modules/titanium/ui/TabProxy;

    .prologue
    .line 351
    invoke-virtual {p1}, Lti/modules/titanium/ui/TabProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;

    .line 352
    .local v0, "tabView":Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;
    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->tabClicked:Z

    .line 358
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->activityPaused:Z

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/support/v7/app/ActionBar$Tab;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->selectedTabOnResume:Landroid/support/v7/app/ActionBar$Tab;

    goto :goto_0

    .line 364
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTabGroup;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, v0, Lti/modules/titanium/ui/widget/tabgroup/TiUIActionBarTab;->tab:Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    goto :goto_0
.end method
