.class public abstract Lorg/appcelerator/titanium/proxy/TiViewProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiViewProxy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ADD_CHILD:I = 0x13a

.field private static final MSG_ANIMATE:I = 0x140

.field private static final MSG_BLUR:I = 0x13c

.field private static final MSG_FINISH_LAYOUT:I = 0x144

.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_FOCUS:I = 0x13d

.field private static final MSG_GETRECT:I = 0x143

.field private static final MSG_GETSIZE:I = 0x142

.field private static final MSG_GETVIEW:I = 0x138

.field private static final MSG_HIDE:I = 0x13f

.field private static final MSG_HIDE_KEYBOARD:I = 0x148

.field private static final MSG_INSERT_VIEW_AT:I = 0x147

.field protected static final MSG_LAST_ID:I = 0x4bb

.field private static final MSG_QUEUED_ANIMATE:I = 0x146

.field private static final MSG_REMOVE_CHILD:I = 0x13b

.field private static final MSG_SHOW:I = 0x13e

.field private static final MSG_TOIMAGE:I = 0x141

.field private static final MSG_UPDATE_LAYOUT:I = 0x145

.field private static final TAG:Ljava/lang/String; = "TiViewProxy"

.field private static styleSheetUrlCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/appcelerator/titanium/util/TiUrl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private isDecorView:Z

.field private layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private overrideCurrentAnimation:Z

.field protected parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field protected pendingAnimationLock:Ljava/lang/Object;

.field protected view:Lorg/appcelerator/titanium/view/TiUIView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 102
    iput-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    .line 103
    iput-boolean v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->overrideCurrentAnimation:Z

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "backgroundRepeat"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "visible"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "enabled"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method private handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 668
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 670
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 671
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 672
    instance-of v0, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 677
    :cond_1
    return-void
.end method

.method private handleFinishLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1242
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->iszIndexChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->forceLayoutNativeView(Z)V

    .line 1244
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->setzIndexChanged(Z)V

    .line 1248
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->forceLayoutNativeView(Z)V

    goto :goto_0
.end method

.method private handleInsertAt(Ljava/util/HashMap;)V
    .locals 5
    .param p1, "options"    # Ljava/util/HashMap;

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 639
    .local v2, "position":Ljava/lang/Integer;
    const-string v3, "view"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    const-string v3, "view"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 642
    .restart local v0    # "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    const-string v3, "position"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const-string v3, "position"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "position":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 645
    .restart local v2    # "position":Ljava/lang/Integer;
    :cond_1
    if-nez v0, :cond_3

    .line 646
    const-string v3, "TiViewProxy"

    const-string v4, "insertAt must be contain a view"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2
    :goto_0
    return-void

    .line 649
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 650
    :cond_4
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 653
    :cond_5
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 654
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 656
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v3, :cond_2

    .line 657
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 658
    instance-of v3, p0, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-eqz v3, :cond_6

    .line 659
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    .line 661
    :cond_6
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 662
    .local v1, "cv":Lorg/appcelerator/titanium/view/TiUIView;
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lorg/appcelerator/titanium/view/TiUIView;->insertAt(Lorg/appcelerator/titanium/view/TiUIView;I)V

    goto :goto_0
.end method

.method private handleUpdateLayout(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1252
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1253
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1255
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFinishLayout()V

    .line 1256
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 559
    const-string v0, "TiViewProxy"

    const-string v1, "Add called with a null child"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    .line 567
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 568
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 576
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public addClass([Ljava/lang/Object;)V
    .locals 9
    .param p1, "classNames"    # [Ljava/lang/Object;

    .prologue
    .line 1067
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "baseUrl":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v3, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1070
    .local v2, "c":Ljava/lang/Object;
    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1072
    .end local v2    # "c":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v3, v8}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 1073
    .local v6, "options":Lorg/appcelerator/kroll/KrollDict;
    invoke-virtual {p0, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 1074
    return-void
.end method

.method public animate(Ljava/lang/Object;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "callback"    # Lorg/appcelerator/kroll/KrollFunction;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 813
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 814
    :try_start_0
    instance-of v3, p1, Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 816
    move-object v0, p1

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0

    .line 817
    .local v2, "options":Ljava/util/HashMap;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 818
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Ljava/util/HashMap;)V

    .line 827
    .end local v2    # "options":Ljava/util/HashMap;
    :goto_0
    if-eqz p2, :cond_0

    .line 828
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, p2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->setCallback(Lorg/appcelerator/kroll/KrollFunction;)V

    .line 831
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 832
    monitor-exit v4

    .line 833
    return-void

    .line 819
    :cond_1
    instance-of v3, p1, Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v3, :cond_2

    .line 820
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/view/TiAnimation;

    move-object v1, v0

    .line 821
    .local v1, "anim":Lorg/appcelerator/titanium/view/TiAnimation;
    new-instance v3, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 822
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyAnimation(Lorg/appcelerator/titanium/view/TiAnimation;)V

    goto :goto_0

    .line 832
    .end local v1    # "anim":Lorg/appcelerator/titanium/view/TiAnimation;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 824
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled argument to animate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public blur()V
    .locals 2

    .prologue
    .line 887
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    .line 892
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public clearAnimation(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 2
    .param p1, "builder"    # Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .prologue
    .line 216
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-ne v0, p1, :cond_0

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 220
    :cond_0
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 422
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 423
    return-void
.end method

.method public convertPointToView(Lorg/appcelerator/kroll/KrollDict;Lorg/appcelerator/titanium/proxy/TiViewProxy;)Lorg/appcelerator/kroll/KrollDict;
    .locals 16
    .param p1, "point"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "dest"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 1121
    if-nez p1, :cond_0

    .line 1122
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "convertPointToView: point must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1125
    :cond_0
    if-nez p2, :cond_1

    .line 1126
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "convertPointToView: destinationView must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1129
    :cond_1
    const-string v13, "x"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1130
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "convertPointToView: required property \"x\" not found in point"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1133
    :cond_2
    const-string v13, "y"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1134
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "convertPointToView: required property \"y\" not found in point"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1139
    :cond_3
    const-string v13, "x"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v11

    .line 1140
    .local v11, "x":I
    const-string v13, "y"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v12

    .line 1142
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v9

    .line 1143
    .local v9, "view":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual/range {p2 .. p2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 1144
    .local v4, "destView":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v9, :cond_4

    .line 1145
    const-string v13, "TiViewProxy"

    const-string v14, "convertPointToView: View has not been attached, cannot convert point"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const/4 v3, 0x0

    .line 1186
    :goto_0
    return-object v3

    .line 1149
    :cond_4
    if-nez v4, :cond_5

    .line 1150
    const-string v13, "TiViewProxy"

    const-string v14, "convertPointToView: DestinationView has not been attached, cannot convert point"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v3, 0x0

    goto :goto_0

    .line 1154
    :cond_5
    invoke-virtual {v9}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    .line 1155
    .local v5, "nativeView":Landroid/view/View;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 1156
    .local v2, "destNativeView":Landroid/view/View;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_7

    .line 1157
    :cond_6
    const-string v13, "TiViewProxy"

    const-string v14, "convertPointToView: View has not been attached, cannot convert point"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v3, 0x0

    goto :goto_0

    .line 1161
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_9

    .line 1162
    :cond_8
    const-string v13, "TiViewProxy"

    const-string v14, "convertPointToView: DestinationView has not been attached, cannot convert point"

    invoke-static {v13, v14}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v3, 0x0

    goto :goto_0

    .line 1166
    :cond_9
    const/4 v13, 0x2

    new-array v10, v13, [I

    .line 1167
    .local v10, "viewLocation":[I
    const/4 v13, 0x2

    new-array v1, v13, [I

    .line 1168
    .local v1, "destLocation":[I
    invoke-virtual {v5, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1169
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1171
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1172
    const-string v13, "TiViewProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nativeView location in window, x: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", y: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v10, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v13, "TiViewProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "destNativeView location in window, x: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", y: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget v15, v1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_a
    const/4 v13, 0x0

    aget v13, v10, v13

    add-int v6, v13, v11

    .line 1177
    .local v6, "pointWindowX":I
    const/4 v13, 0x1

    aget v13, v10, v13

    add-int v7, v13, v12

    .line 1180
    .local v7, "pointWindowY":I
    const/4 v13, 0x2

    new-array v8, v13, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v1, v14

    sub-int v14, v6, v14

    int-to-float v14, v14

    aput v14, v8, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget v14, v1, v14

    sub-int v14, v7, v14

    int-to-float v14, v14

    aput v14, v8, v13

    .line 1181
    .local v8, "points":[F
    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/view/TiUIView;->getPreTranslationValue([F)[F

    move-result-object v8

    .line 1183
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1184
    .local v3, "destPoint":Lorg/appcelerator/kroll/KrollDict;
    const-string v13, "x"

    const/4 v14, 0x0

    aget v14, v8, v14

    float-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string v13, "y"

    const/4 v14, 0x1

    aget v14, v8, v14

    float-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public abstract createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v1, 0x1

    .line 1030
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 1031
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_1

    .line 1032
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    :cond_0
    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 1037
    :cond_1
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 1042
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 1043
    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-nez v0, :cond_0

    .line 1044
    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "touchEnabled"

    invoke-virtual {p3, v0}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setClickable(Z)V

    .line 1049
    :cond_0
    return-void
.end method

.method public finishLayout()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1202
    const-string v0, "TiViewProxy"

    const-string v1, "finishLayout() is deprecated."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLayoutStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1208
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFinishLayout()V

    .line 1213
    :goto_1
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1211
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x144

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 972
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "bubbles"    # Z

    .prologue
    .line 950
    if-nez p2, :cond_0

    .line 951
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 955
    :cond_0
    instance-of v0, p2, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 956
    check-cast v0, Ljava/util/HashMap;

    const-string v1, "bubbles"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public focus()V
    .locals 2

    .prologue
    .line 904
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    .line 909
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public forceCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 442
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    return-object v0
.end method

.method protected getBaseUrlForStylesheet()Ljava/lang/String;
    .locals 6

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    .line 142
    .local v1, "creationUrl":Lorg/appcelerator/titanium/util/TiUrl;
    sget-object v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    sget-object v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    :goto_0
    return-object v3

    .line 146
    :cond_0
    iget-object v0, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 147
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "app://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    :cond_1
    const-string v0, "app://app.js"

    .line 153
    :goto_1
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "idx":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 155
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".js"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_2
    sget-object v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;->styleSheetUrlCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 159
    goto :goto_0

    .line 150
    .end local v2    # "idx":I
    :cond_3
    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getCenter()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 409
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    .line 410
    .local v0, "dict":Ljava/lang/Object;
    const-string v1, "center"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "center"

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    :cond_0
    return-object v0
.end method

.method public getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 1024
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getHeight()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getKeepScreenOn()Z
    .locals 6

    .prologue
    .line 1079
    const/4 v2, 0x0

    .line 1080
    .local v2, "keepScreenOn":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v4

    .line 1081
    .local v4, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v4, :cond_0

    .line 1082
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v3

    .line 1083
    .local v3, "nv":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1084
    invoke-virtual {v3}, Landroid/view/View;->getKeepScreenOn()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1089
    .end local v3    # "nv":Landroid/view/View;
    :cond_0
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1090
    .local v0, "current":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 1091
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 1092
    .local v1, "currentValue":Z
    if-nez v2, :cond_1

    .line 1093
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1109
    .end local v1    # "currentValue":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 1095
    .restart local v1    # "currentValue":Z
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v1, v5, :cond_2

    .line 1096
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1098
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 1102
    .end local v1    # "currentValue":Z
    :cond_3
    if-nez v2, :cond_4

    .line 1103
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1106
    :cond_4
    const-string v5, "keepScreenOn"

    invoke-virtual {p0, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 477
    :goto_0
    return-object v0

    .line 473
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiUIView;

    goto :goto_0
.end method

.method public getOverrideCurrentAnimation()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->overrideCurrentAnimation:Z

    return v0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 983
    const/4 v0, 0x0

    .line 986
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    goto :goto_0
.end method

.method public getParentForBubbling()Lorg/appcelerator/kroll/KrollProxy;
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    return-object v0
.end method

.method public getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    .locals 2

    .prologue
    .line 209
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    monitor-exit v1

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRect()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x143

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getSize()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x142

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 377
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/appcelerator/kroll/KrollRuntime;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected handleAnimate()V
    .locals 4

    .prologue
    .line 855
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 857
    .local v0, "tiv":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_2

    .line 865
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 866
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->isLayoutPending()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 867
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x146

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 873
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 870
    .restart local v1    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->animate()V

    goto :goto_0
.end method

.method protected handleBlur()V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->blur()V

    .line 899
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object p1

    .line 125
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 127
    const-string v0, "overrideCurrentAnimation"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "overrideCurrentAnimation"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->overrideCurrentAnimation:Z

    .line 132
    :cond_0
    return-void
.end method

.method protected handleFocus()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->focus()V

    .line 916
    :cond_0
    return-void
.end method

.method protected handleGetView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 4

    .prologue
    .line 482
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-nez v1, :cond_2

    .line 483
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    const-string v1, "TiViewProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 488
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 489
    iget-boolean v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isDecorView:Z

    if-eqz v1, :cond_1

    .line 490
    if-eqz v0, :cond_3

    .line 491
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->setViewProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 496
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 497
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch()V

    .line 498
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress()V

    .line 500
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v1

    .line 493
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    const-string v1, "TiViewProxy"

    const-string v2, "Activity is null"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleHide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v7, 0x0

    .line 783
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v5, :cond_1

    .line 784
    iget-object v6, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v6

    .line 785
    :try_start_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v5, :cond_0

    .line 786
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 788
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    const-string v5, "animated"

    invoke-static {p1, v5, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 790
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v2

    .line 791
    .local v2, "nativeView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 792
    .local v4, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 793
    .local v1, "height":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 794
    .local v3, "radius":I
    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v6, v1, 0x2

    int-to-float v7, v3

    const/4 v8, 0x0

    invoke-static {v2, v5, v6, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 795
    .local v0, "anim":Landroid/animation/Animator;
    new-instance v5, Lorg/appcelerator/titanium/proxy/TiViewProxy$1;

    invoke-direct {v5, p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy$1;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 803
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 808
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "height":I
    .end local v2    # "nativeView":Landroid/view/View;
    .end local v3    # "radius":I
    .end local v4    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 788
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 806
    :cond_2
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->hide()V

    goto :goto_0
.end method

.method protected handleHideKeyboard()V
    .locals 3

    .prologue
    .line 1279
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 1280
    .local v1, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 1281
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 1282
    .local v0, "nv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1283
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 1286
    .end local v0    # "nv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 352
    :pswitch_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v8

    :goto_0
    return v8

    .line 229
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 230
    .local v6, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleGetView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 231
    const/4 v8, 0x1

    goto :goto_0

    .line 234
    .end local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 235
    .restart local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAdd(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 236
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 237
    const/4 v8, 0x1

    goto :goto_0

    .line 240
    .end local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 241
    .restart local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v6}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 242
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 243
    const/4 v8, 0x1

    goto :goto_0

    .line 246
    .end local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleBlur()V

    .line 247
    const/4 v8, 0x1

    goto :goto_0

    .line 250
    :pswitch_5
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHideKeyboard()V

    .line 251
    const/4 v8, 0x1

    goto :goto_0

    .line 254
    :pswitch_6
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFocus()V

    .line 255
    const/4 v8, 0x1

    goto :goto_0

    .line 258
    :pswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 259
    const/4 v8, 0x1

    goto :goto_0

    .line 262
    :pswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 263
    const/4 v8, 0x1

    goto :goto_0

    .line 266
    :pswitch_9
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    .line 267
    const/4 v8, 0x1

    goto :goto_0

    .line 273
    :pswitch_a
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleQueuedAnimate()V

    .line 274
    const/4 v8, 0x1

    goto :goto_0

    .line 277
    :pswitch_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 278
    .restart local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 279
    const/4 v8, 0x1

    goto :goto_0

    .line 282
    .end local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_c
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 283
    .restart local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    const/4 v0, 0x0

    .line 284
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 285
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v8, "y"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v8, :cond_0

    .line 288
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v7

    .line 289
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 290
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x6

    invoke-direct {v5, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 291
    .local v5, "nativeWidth":Lorg/appcelerator/titanium/TiDimension;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x7

    invoke-direct {v2, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 294
    .local v2, "nativeHeight":Lorg/appcelerator/titanium/TiDimension;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "decorView":Landroid/view/View;
    const-string v8, "width"

    invoke-virtual {v5, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v8, "height"

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "nativeHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v5    # "nativeWidth":Lorg/appcelerator/titanium/TiDimension;
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    const-string v8, "width"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 301
    const-string v8, "width"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v8, "height"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_1
    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 306
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 309
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_d
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 310
    .restart local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    const/4 v0, 0x0

    .line 311
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 312
    .restart local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v8, :cond_2

    .line 313
    iget-object v8, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v7

    .line 314
    .restart local v7    # "v":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 315
    new-instance v5, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x6

    invoke-direct {v5, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 316
    .restart local v5    # "nativeWidth":Lorg/appcelerator/titanium/TiDimension;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x7

    invoke-direct {v2, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 317
    .restart local v2    # "nativeHeight":Lorg/appcelerator/titanium/TiDimension;
    new-instance v3, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x0

    invoke-direct {v3, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 318
    .local v3, "nativeLeft":Lorg/appcelerator/titanium/TiDimension;
    new-instance v4, Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-double v8, v8

    const/4 v10, 0x3

    invoke-direct {v4, v8, v9, v10}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    .line 321
    .local v4, "nativeTop":Lorg/appcelerator/titanium/TiDimension;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 323
    .restart local v1    # "decorView":Landroid/view/View;
    const-string v8, "width"

    invoke-virtual {v5, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v8, "height"

    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v8, "x"

    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v8, "y"

    invoke-virtual {v4, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDefault(Landroid/view/View;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "nativeHeight":Lorg/appcelerator/titanium/TiDimension;
    .end local v3    # "nativeLeft":Lorg/appcelerator/titanium/TiDimension;
    .end local v4    # "nativeTop":Lorg/appcelerator/titanium/TiDimension;
    .end local v5    # "nativeWidth":Lorg/appcelerator/titanium/TiDimension;
    .end local v7    # "v":Landroid/view/View;
    :cond_2
    const-string v8, "width"

    invoke-virtual {v0, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 330
    const-string v8, "width"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v8, "height"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v8, "x"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v8, "y"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_3
    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 337
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 340
    .end local v0    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v6    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_e
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleFinishLayout()V

    .line 341
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 344
    :pswitch_f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleUpdateLayout(Ljava/util/HashMap;)V

    .line 345
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 348
    :pswitch_10
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/HashMap;

    invoke-direct {p0, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleInsertAt(Ljava/util/HashMap;)V

    .line 349
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x138
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_10
        :pswitch_5
    .end packed-switch
.end method

.method public handlePendingAnimation(Z)V
    .locals 5
    .param p1, "forceQueue"    # Z

    .prologue
    const/16 v4, 0x140

    .line 837
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 838
    if-nez p1, :cond_0

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 839
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 843
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 851
    :cond_1
    :goto_0
    return-void

    .line 845
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 848
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleAnimate()V

    goto :goto_0
.end method

.method protected handleQueuedAnimate()V
    .locals 1

    .prologue
    .line 877
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 879
    .local v0, "tiv":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiUIView;->animate()V

    .line 882
    :cond_0
    return-void
.end method

.method public handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 730
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 732
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->remove(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 735
    :cond_0
    if-eqz p1, :cond_1

    .line 736
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 739
    :cond_1
    return-void
.end method

.method protected handleShow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 9
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 754
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v5, :cond_0

    .line 755
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    const-string v5, "animated"

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 756
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v2

    .line 757
    .local v2, "nativeView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 758
    .local v4, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 759
    .local v1, "height":I
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 760
    .local v3, "radius":I
    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v6, v1, 0x2

    const/4 v7, 0x0

    int-to-float v8, v3

    invoke-static {v2, v5, v6, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 761
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->show()V

    .line 762
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 767
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "height":I
    .end local v2    # "nativeView":Landroid/view/View;
    .end local v3    # "radius":I
    .end local v4    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/view/TiUIView;->show()V

    goto :goto_0
.end method

.method protected handleStyleOptions(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 16
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProxyId()Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "viewId":Ljava/lang/String;
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 168
    .local v11, "styleClasses":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 169
    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 171
    :cond_0
    const-string v13, "className"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 172
    const-string v13, "className"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "className":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v5, v1, v8

    .line 174
    .local v5, "clazz":Ljava/lang/String;
    invoke-virtual {v11, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "clazz":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_1
    const-string v13, "classNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 178
    const-string v13, "classNames"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    .local v3, "c":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 180
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 181
    .local v10, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v10, :cond_3

    .line 182
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 183
    .local v5, "clazz":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 184
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 190
    .end local v3    # "c":Ljava/lang/Object;
    .end local v5    # "clazz":Ljava/lang/Object;
    .end local v7    # "i":I
    .end local v10    # "length":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getBaseUrlForStylesheet()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "baseUrl":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v13

    invoke-virtual {v13, v2, v11, v12}, Lorg/appcelerator/titanium/TiApplication;->getStylesheet(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 192
    .local v6, "dict":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollDict;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_4
    move-object/from16 v6, p1

    .line 204
    .end local v6    # "dict":Lorg/appcelerator/kroll/KrollDict;
    :goto_2
    return-object v6

    .line 196
    .restart local v6    # "dict":Lorg/appcelerator/kroll/KrollDict;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->extend(Lorg/appcelerator/kroll/KrollDict;)V

    .line 197
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 198
    const-string v13, "TiViewProxy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "trying to get stylesheet for base:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",classes:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",id:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",dict:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DEBUG_MODE"

    invoke-static {v13, v14, v15}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    goto :goto_2
.end method

.method protected handleToImage()Lorg/appcelerator/titanium/TiBlob;
    .locals 3

    .prologue
    .line 931
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 932
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v1, :cond_0

    .line 933
    const/4 v2, 0x0

    .line 936
    :goto_0
    return-object v2

    .line 935
    :cond_0
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->toImage()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 936
    .local v0, "dict":Lorg/appcelerator/kroll/KrollDict;
    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getImageFromDict(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    goto :goto_0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 772
    const-string v0, "visible"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHide(Lorg/appcelerator/kroll/KrollDict;)V

    .line 779
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public hideKeyboard()V
    .locals 2

    .prologue
    .line 1270
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleHideKeyboard()V

    .line 1275
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x148

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public insertAt(Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 612
    instance-of v1, p1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 613
    const-string v1, "TiViewProxy"

    const-string v2, "Argument for insertAt must be a dictionary"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 617
    check-cast v0, Ljava/util/HashMap;

    .line 619
    .local v0, "options":Ljava/util/HashMap;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    .line 624
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v1, :cond_3

    .line 625
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleInsertAt(Ljava/util/HashMap;)V

    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x147

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 631
    :cond_3
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleInsertAt(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public isLayoutStarted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1264
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public peekView()Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    return-object v0
.end method

.method public realizeViews(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 6
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 509
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 511
    :try_start_0
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 512
    .local v3, "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    .line 513
    .local v0, "cv":Lorg/appcelerator/titanium/view/TiUIView;
    invoke-virtual {p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    .end local v0    # "cv":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    const-string v4, "TiViewProxy"

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    .end local v1    # "e":Ljava/util/ConcurrentModificationException;
    :cond_0
    iget-object v5, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 521
    :try_start_1
    iget-object v4, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->pendingAnimation:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-eqz v4, :cond_1

    .line 522
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    .line 524
    :cond_1
    monitor-exit v5

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    if-eqz v2, :cond_1

    .line 530
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 532
    .local v1, "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    goto :goto_0

    .line 535
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 536
    iput-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 538
    :cond_1
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 539
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    .line 540
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 687
    if-nez p1, :cond_1

    .line 688
    const-string v0, "TiViewProxy"

    const-string v1, "Add called with null child"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 693
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleRemove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 701
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 704
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public removeAllChildren()V
    .locals 4

    .prologue
    .line 717
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v1, "childViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 722
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 723
    .local v0, "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 726
    .end local v0    # "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1    # "childViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public replaceAt(Ljava/lang/Object;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 585
    instance-of v3, p1, Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 586
    const-string v3, "TiViewProxy"

    const-string v4, "Argument for replaceAt must be a dictionary"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 590
    check-cast v1, Ljava/util/HashMap;

    .line 591
    .local v1, "options":Ljava/util/HashMap;
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 592
    .local v2, "position":Ljava/lang/Integer;
    const-string v3, "position"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    const-string v3, "position"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "position":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 595
    .restart local v2    # "position":Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 596
    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 597
    .local v0, "childToRemove":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->insertAt(Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1008
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->setActivity(Landroid/app/Activity;)V

    .line 1009
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 1011
    .local v0, "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1014
    .end local v0    # "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 1053
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 1054
    .local v1, "v":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v1, :cond_0

    .line 1055
    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 1056
    .local v0, "nv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1060
    .end local v0    # "nv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setHeight(Ljava/lang/Object;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/Object;

    .prologue
    .line 403
    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 1115
    const-string v0, "keepScreenOn"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1116
    return-void
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "parent"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 991
    if-nez p1, :cond_0

    .line 992
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    .line 997
    :goto_0
    return-void

    .line 996
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->parent:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public setView(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .param p1, "view"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 436
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 437
    return-void
.end method

.method public setWidth(Ljava/lang/Object;)V
    .locals 1
    .param p1, "width"    # Ljava/lang/Object;

    .prologue
    .line 387
    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setPropertyAndFire(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 744
    const-string v0, "visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleShow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13e

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public startLayout()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1193
    const-string v0, "TiViewProxy"

    const-string v1, "startLayout() is deprecated."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1196
    return-void
.end method

.method public toImage()Lorg/appcelerator/titanium/TiBlob;
    .locals 2

    .prologue
    .line 921
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleToImage()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    .line 925
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    goto :goto_0
.end method

.method public transferView(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "transferview"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p2, "oldProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v0, 0x0

    .line 453
    if-eqz p2, :cond_0

    .line 454
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setView(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 455
    invoke-virtual {p2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 457
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    .line 458
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->modelListener:Lorg/appcelerator/kroll/KrollProxyListener;

    .line 459
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 460
    return-void
.end method

.method public updateLayout(Ljava/lang/Object;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1221
    const-string v1, "TiViewProxy"

    const-string v2, "updateLayout() is deprecated."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    instance-of v1, p1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 1226
    const-string v1, "TiViewProxy"

    const-string v2, "Argument for updateLayout must be a dictionary"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1229
    check-cast v0, Ljava/util/HashMap;

    .line 1231
    .local v0, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1232
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1233
    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleUpdateLayout(Ljava/util/HashMap;)V

    .line 1237
    :goto_1
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;->layoutStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x145

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
