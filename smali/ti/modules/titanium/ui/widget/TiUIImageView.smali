.class public Lti/modules/titanium/ui/widget/TiUIImageView;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiUIImageView$Animator;,
        Lti/modules/titanium/ui/widget/TiUIImageView$Loader;,
        Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0xc8

.field private static final FRAME_QUEUE_SIZE:I = 0x5

.field public static final MIN_DURATION:I = 0x1e

.field private static final SET_IMAGE:I = 0x2711

.field private static final START:I = 0x2712

.field private static final STOP:I = 0x2713

.field private static final TAG:Ljava/lang/String; = "TiUIImageView"


# instance fields
.field private animating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

.field private currentDuration:I

.field private defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

.field private downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

.field private firedLoad:Z

.field private imageSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;"
        }
    .end annotation
.end field

.field private imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

.field private isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

.field private loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

.field private loaderThread:Ljava/lang/Thread;

.field private mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

.field private mainHandler:Landroid/os/Handler;

.field private paused:Z

.field private releasedLock:Ljava/lang/Object;

.field private reverse:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 64
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 68
    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    .line 85
    invoke-static {}, Lorg/appcelerator/titanium/util/TiImageLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-object v1, p1

    .line 90
    check-cast v1, Lti/modules/titanium/ui/ImageViewProxy;

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 92
    const-string v1, "TiUIImageView"

    const-string v2, "Creating an ImageView"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 96
    .local v0, "view":Lti/modules/titanium/ui/widget/TiImageView;
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$1;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    .line 126
    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$2;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$2;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    .line 163
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setNativeView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/ImageViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiLoadImageListener;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    return-object v0
.end method

.method static synthetic access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    return v0
.end method

.method static synthetic access$1300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    return-object v0
.end method

.method static synthetic access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStop()V

    return-void
.end method

.method static synthetic access$1600(Lti/modules/titanium/ui/widget/TiUIImageView;I)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireChange(I)V

    return-void
.end method

.method static synthetic access$1700(Lti/modules/titanium/ui/widget/TiUIImageView;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    return v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lti/modules/titanium/ui/widget/TiUIImageView;Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Lorg/appcelerator/titanium/view/TiDrawableReference;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleCacheAndSetImage(Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    return-void
.end method

.method static synthetic access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    return-object v0
.end method

.method static synthetic access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return v0
.end method

.method static synthetic access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    return p1
.end method

.method static synthetic access$800(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUIImageView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method private fireChange(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 497
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 498
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v1, "change"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 500
    return-void
.end method

.method private fireError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 510
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 512
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 513
    if-eqz p2, :cond_0

    .line 514
    const-string v1, "image"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_0
    const-string v1, "error"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 517
    return-void
.end method

.method private fireLoad(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 484
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 485
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v1, "load"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 487
    return-void
.end method

.method private fireStart()V
    .locals 2

    .prologue
    .line 491
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 492
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "start"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 493
    return-void
.end method

.method private fireStop()V
    .locals 2

    .prologue
    .line 504
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 505
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "stop"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 506
    return-void
.end method

.method private getView()Lti/modules/titanium/ui/widget/TiImageView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    check-cast v0, Lti/modules/titanium/ui/widget/TiImageView;

    return-object v0
.end method

.method private handleCacheAndSetImage(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 6
    .param p1, "imageref"    # Lorg/appcelerator/titanium/view/TiDrawableReference;

    .prologue
    const/4 v5, 0x1

    .line 225
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 226
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 227
    .local v2, "imgsrc":Lorg/appcelerator/titanium/view/TiDrawableReference;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 247
    .end local v2    # "imgsrc":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v2    # "imgsrc":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_1
    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    :cond_2
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    .line 234
    .local v1, "hash":I
    invoke-virtual {p1, v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 236
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/util/TiImageLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 237
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/titanium/util/TiImageLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_3
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 240
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    if-nez v3, :cond_0

    .line 241
    const-string v3, "image"

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    .line 242
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    goto :goto_0
.end method

.method private handleSetImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v0

    .line 261
    .local v0, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :cond_0
    return-void
.end method

.method private makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 683
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 688
    :goto_0
    return-object v0

    .line 685
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 688
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method private setDefaultImage()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 773
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setDefaultImageSource(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 694
    instance-of v0, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 701
    :goto_0
    return-void

    .line 696
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    goto :goto_0

    .line 699
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    goto :goto_0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleSetImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setImageInternal()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 705
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v8, :cond_1

    .line 706
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    .line 711
    :goto_0
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeNull()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 762
    :cond_0
    :goto_1
    return-void

    .line 708
    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 716
    :cond_2
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v10, :cond_7

    .line 717
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 720
    .local v4, "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v2

    .line 721
    .local v2, "hash":I
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/util/TiImageLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 722
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 723
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 724
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 725
    iget-boolean v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    if-nez v8, :cond_0

    .line 726
    const-string v8, "image"

    invoke-direct {p0, v8}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireLoad(Ljava/lang/String;)V

    .line 727
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    goto :goto_1

    .line 731
    :cond_3
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/appcelerator/titanium/util/TiImageLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_4
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 736
    const/4 v5, 0x0

    .line 737
    .local v5, "isCachedInDisk":Z
    const/4 v6, 0x0

    .line 739
    .local v6, "uri":Ljava/net/URI;
    :try_start_0
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "imageUrl":Ljava/lang/String;
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 741
    .end local v6    # "uri":Ljava/net/URI;
    .local v7, "uri":Ljava/net/URI;
    :try_start_1
    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    move-object v6, v7

    .line 749
    .end local v3    # "imageUrl":Ljava/lang/String;
    .end local v7    # "uri":Ljava/net/URI;
    .restart local v6    # "uri":Ljava/net/URI;
    :goto_2
    if-nez v5, :cond_5

    if-eqz v6, :cond_5

    .line 750
    invoke-static {}, Lorg/appcelerator/titanium/util/TiDownloadManager;->getInstance()Lorg/appcelerator/titanium/util/TiDownloadManager;

    move-result-object v8

    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->downloadListener:Lorg/appcelerator/titanium/util/TiDownloadListener;

    invoke-virtual {v8, v6, v9}, Lorg/appcelerator/titanium/util/TiDownloadManager;->download(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V

    goto :goto_1

    .line 742
    :catch_0
    move-exception v1

    .line 743
    .local v1, "e":Ljava/net/URISyntaxException;
    :goto_3
    const-string v8, "TiUIImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URISyntaxException for url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 744
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/NullPointerException;
    :goto_4
    const-string v8, "TiUIImageView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NullPointerException for url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 754
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_5
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->getInstance()Lorg/appcelerator/titanium/util/TiLoadImageManager;

    move-result-object v8

    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    invoke-virtual {v8, v4, v9}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->load(Lorg/appcelerator/titanium/view/TiDrawableReference;Lorg/appcelerator/titanium/util/TiLoadImageListener;)V

    goto/16 :goto_1

    .line 757
    .end local v5    # "isCachedInDisk":Z
    .end local v6    # "uri":Ljava/net/URI;
    :cond_6
    invoke-static {}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->getInstance()Lorg/appcelerator/titanium/util/TiLoadImageManager;

    move-result-object v8

    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loadImageListener:Lorg/appcelerator/titanium/util/TiLoadImageListener;

    invoke-virtual {v8, v4, v9}, Lorg/appcelerator/titanium/util/TiLoadImageManager;->load(Lorg/appcelerator/titanium/view/TiDrawableReference;Lorg/appcelerator/titanium/util/TiLoadImageListener;)V

    goto/16 :goto_1

    .line 760
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "hash":I
    .end local v4    # "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_7
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto/16 :goto_1

    .line 744
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "hash":I
    .restart local v3    # "imageUrl":Ljava/lang/String;
    .restart local v4    # "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    .restart local v5    # "isCachedInDisk":Z
    .restart local v7    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v1

    move-object v6, v7

    .end local v7    # "uri":Ljava/net/URI;
    .restart local v6    # "uri":Ljava/net/URI;
    goto :goto_4

    .line 742
    .end local v6    # "uri":Ljava/net/URI;
    .restart local v7    # "uri":Ljava/net/URI;
    :catch_3
    move-exception v1

    move-object v6, v7

    .end local v7    # "uri":Ljava/net/URI;
    .restart local v6    # "uri":Ljava/net/URI;
    goto :goto_3
.end method

.method private setImageSource(Ljava/lang/Object;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 665
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 666
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 667
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 668
    .local v3, "o":Ljava/lang/Object;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .end local p1    # "object":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V
    .locals 1
    .param p1, "source"    # Lorg/appcelerator/titanium/view/TiDrawableReference;

    .prologue
    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 678
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    return-void
.end method

.method private setImages()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 443
    :cond_0
    const-string v0, "Missing Images"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireError(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v0, :cond_1

    .line 448
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 449
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 450
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 451
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 452
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 453
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STARTING LOADER THREAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public getDuration()D
    .locals 6

    .prologue
    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    .line 461
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 462
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "duration"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 463
    .local v0, "duration":D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 471
    .end local v0    # "duration":D
    :cond_0
    :goto_0
    return-wide v0

    .line 469
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "duration"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    goto :goto_0
.end method

.method protected getParentView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 198
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->nativeView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 187
    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 189
    :cond_1
    if-nez v0, :cond_2

    .line 190
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    .line 191
    .local v1, "parentProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    .line 193
    .local v2, "parentTiUi":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .end local v1    # "parentProxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v2    # "parentTiUi":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_2
    move-object v0, v3

    .line 198
    goto :goto_0
.end method

.method public getRepeatCount()I
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 203
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 217
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 206
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 207
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleSetImage(Landroid/graphics/Bitmap;)V

    .line 208
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 209
    goto :goto_0

    .line 211
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    move v1, v2

    .line 212
    goto :goto_0

    .line 214
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStop()V

    move v1, v2

    .line 215
    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleStart()V
    .locals 6

    .prologue
    .line 577
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    if-nez v0, :cond_2

    .line 578
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 580
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 582
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 583
    const-string v0, "TiUIImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STARTING LOADER THREAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-direct {v0, p0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lti/modules/titanium/ui/widget/TiUIImageView$Loader;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 587
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 589
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 592
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getDuration()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    .line 594
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 595
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStart()V

    .line 596
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    int-to-long v2, v2

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->currentDuration:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    goto :goto_0
.end method

.method public handleStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 635
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 638
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 639
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 641
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 643
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loaderThread:Ljava/lang/Thread;

    .line 649
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v1, :cond_2

    .line 650
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v2

    .line 651
    :try_start_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 652
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    :cond_2
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 656
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 657
    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    .line 658
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 660
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireStop()V

    .line 661
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "TiUIImageView"

    const-string v2, "LoaderThread termination interrupted"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 652
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    return v0
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 894
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 898
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 902
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->pause()V

    .line 903
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 907
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    .line 908
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 912
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 916
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->stop()V

    .line 917
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 605
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 12
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 778
    const/4 v2, 0x0

    .line 779
    .local v2, "heightDefined":Z
    const/4 v6, 0x0

    .line 780
    .local v6, "widthDefined":Z
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v5

    .line 782
    .local v5, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v5, :cond_0

    .line 855
    :goto_0
    return-void

    .line 786
    :cond_0
    const-string v10, "width"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 787
    const-string v10, "width"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, "widthProperty":Ljava/lang/String;
    const-string v10, "size"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "auto"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    move v6, v8

    .line 789
    :goto_1
    invoke-virtual {v5, v6}, Lti/modules/titanium/ui/widget/TiImageView;->setWidthDefined(Z)V

    .line 791
    .end local v7    # "widthProperty":Ljava/lang/String;
    :cond_1
    const-string v10, "height"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 792
    const-string v10, "height"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 793
    .local v3, "heightProperty":Ljava/lang/String;
    const-string v10, "size"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "auto"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    move v2, v8

    .line 794
    :goto_2
    invoke-virtual {v5, v2}, Lti/modules/titanium/ui/widget/TiImageView;->setHeightDefined(Z)V

    .line 797
    .end local v3    # "heightProperty":Ljava/lang/String;
    :cond_2
    const-string v10, "left"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "right"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 798
    invoke-virtual {v5, v8}, Lti/modules/titanium/ui/widget/TiImageView;->setWidthDefined(Z)V

    .line 801
    :cond_3
    const-string v10, "top"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "bottom"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 802
    invoke-virtual {v5, v8}, Lti/modules/titanium/ui/widget/TiImageView;->setHeightDefined(Z)V

    .line 805
    :cond_4
    const-string v10, "images"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 806
    const-string v10, "images"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 807
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    .line 809
    :cond_5
    const-string v10, "enableZoomControls"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 810
    const-string v10, "enableZoomControls"

    invoke-static {p1, v10, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v5, v10}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    .line 812
    :cond_6
    const-string v10, "defaultImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 813
    const-string v10, "defaultImage"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImageSource(Ljava/lang/Object;)V

    .line 815
    :cond_7
    const-string v10, "image"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 818
    const/4 v1, 0x1

    .line 819
    .local v1, "changeImage":Z
    const-string v10, "image"

    invoke-virtual {p1, v10}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {p0, v10}, Lti/modules/titanium/ui/widget/TiUIImageView;->makeImageSource(Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v4

    .line 820
    .local v4, "source":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v8, :cond_8

    .line 821
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v8, v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 822
    const/4 v1, 0x0

    .line 825
    :cond_8
    if-eqz v1, :cond_b

    .line 827
    const-string v8, "autorotate"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 828
    .local v0, "autoRotate":Ljava/lang/Object;
    if-eqz v0, :cond_9

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 829
    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getOrientation()I

    move-result v8

    invoke-virtual {v5, v8}, Lti/modules/titanium/ui/widget/TiImageView;->setOrientation(I)V

    .line 831
    :cond_9
    const-string v8, "decodeRetries"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 832
    const-string v8, "decodeRetries"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x5

    invoke-static {v8, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/appcelerator/titanium/view/TiDrawableReference;->setDecodeRetries(I)V

    .line 834
    :cond_a
    invoke-direct {p0, v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Lorg/appcelerator/titanium/view/TiDrawableReference;)V

    .line 835
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 836
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageInternal()V

    .line 850
    .end local v0    # "autoRotate":Ljava/lang/Object;
    .end local v1    # "changeImage":Z
    .end local v4    # "source":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_b
    :goto_3
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v8

    instance-of v8, v8, Lti/modules/titanium/ui/ScrollViewProxy;

    if-eqz v8, :cond_c

    if-nez v2, :cond_c

    if-nez v6, :cond_c

    .line 851
    invoke-virtual {v5, v9}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableScale(Z)V

    .line 854
    :cond_c
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .restart local v7    # "widthProperty":Ljava/lang/String;
    :cond_d
    move v6, v9

    .line 788
    goto/16 :goto_1

    .end local v7    # "widthProperty":Ljava/lang/String;
    .restart local v3    # "heightProperty":Ljava/lang/String;
    :cond_e
    move v2, v9

    .line 793
    goto/16 :goto_2

    .line 839
    .end local v3    # "heightProperty":Ljava/lang/String;
    :cond_f
    const-string v8, "images"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 840
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v8

    const-string v10, "image"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-eqz v8, :cond_b

    .line 842
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setDefaultImage()V

    goto :goto_3
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 860
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v1

    .line 861
    .local v1, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-nez v1, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    const-string v5, "enableZoomControls"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 866
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setEnableZoomControls(Z)V

    goto :goto_0

    .line 867
    :cond_2
    const-string v5, "image"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 868
    if-nez p2, :cond_3

    if-nez p3, :cond_4

    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 869
    :cond_4
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 870
    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->firedLoad:Z

    .line 871
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageInternal()V

    goto :goto_0

    .line 873
    :cond_5
    const-string v5, "images"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 874
    instance-of v3, p3, [Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 875
    if-eqz p2, :cond_6

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 876
    :cond_6
    invoke-direct {p0, p3}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImageSource(Ljava/lang/Object;)V

    .line 877
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->setImages()V

    goto :goto_0

    .line 881
    :cond_7
    const-string v5, "width"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 882
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "widthProperty":Ljava/lang/String;
    const-string v5, "size"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "auto"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :goto_1
    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setWidthDefined(Z)V

    .line 888
    .end local v2    # "widthProperty":Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .restart local v2    # "widthProperty":Ljava/lang/String;
    :cond_9
    move v3, v4

    .line 883
    goto :goto_1

    .line 884
    .end local v2    # "widthProperty":Ljava/lang/String;
    :cond_a
    const-string v5, "height"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 885
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "heightProperty":Ljava/lang/String;
    const-string v5, "size"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "auto"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :goto_3
    invoke-virtual {v1, v3}, Lti/modules/titanium/ui/widget/TiImageView;->setHeightDefined(Z)V

    goto :goto_2

    :cond_b
    move v3, v4

    goto :goto_3
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 960
    invoke-super {p0}, Lorg/appcelerator/titanium/view/TiUIView;->release()V

    .line 961
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v3, :cond_0

    .line 962
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v4

    .line 963
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 964
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 965
    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 967
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 968
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->isStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 969
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->releasedLock:Ljava/lang/Object;

    monitor-enter v4

    .line 970
    :try_start_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 971
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 972
    .local v2, "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v0

    .line 973
    .local v0, "hash":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mMemoryCache:Lorg/appcelerator/titanium/util/TiImageLruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/util/TiImageLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 978
    .end local v0    # "hash":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "imageref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 964
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 975
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 976
    const/4 v3, 0x0

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    .line 978
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 980
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    if-eqz v3, :cond_3

    .line 981
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 982
    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->timer:Ljava/util/Timer;

    .line 984
    :cond_3
    iput-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->defaultImageSource:Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 985
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->paused:Z

    .line 611
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    if-eqz v0, :cond_0

    .line 612
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    monitor-enter v1

    .line 613
    :try_start_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->animator:Lti/modules/titanium/ui/widget/TiUIImageView$Animator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 614
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    if-eqz v0, :cond_1

    .line 618
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    monitor-enter v1

    .line 619
    :try_start_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 620
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    :cond_1
    return-void

    .line 614
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 620
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 170
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 171
    check-cast p1, Lti/modules/titanium/ui/ImageViewProxy;

    .end local p1    # "proxy":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageViewProxy:Lti/modules/titanium/ui/ImageViewProxy;

    .line 172
    return-void
.end method

.method public setReverse(Z)V
    .locals 0
    .param p1, "reverse"    # Z

    .prologue
    .line 936
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->reverse:Z

    .line 937
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 567
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 569
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 573
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 626
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 628
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 632
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStop()V

    goto :goto_0
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 941
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUIImageView;->getView()Lti/modules/titanium/ui/widget/TiImageView;

    move-result-object v2

    .line 942
    .local v2, "view":Lti/modules/titanium/ui/widget/TiImageView;
    if-eqz v2, :cond_2

    .line 943
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 944
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 945
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 946
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 947
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 949
    :cond_0
    if-nez v0, :cond_1

    move-object v3, v4

    .line 953
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 949
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v3, v4

    .line 953
    goto :goto_0
.end method
