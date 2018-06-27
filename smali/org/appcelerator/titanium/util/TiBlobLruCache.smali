.class public Lorg/appcelerator/titanium/util/TiBlobLruCache;
.super Landroid/support/v4/util/LruCache;
.source "TiBlobLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field protected static _instance:Lorg/appcelerator/titanium/util/TiBlobLruCache;

.field private static final cacheSize:I

.field private static final maxMemory:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->maxMemory:I

    .line 22
    sget v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->maxMemory:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->cacheSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->cacheSize:I

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 37
    return-void
.end method

.method public static getInstance()Lorg/appcelerator/titanium/util/TiBlobLruCache;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->_instance:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiBlobLruCache;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->_instance:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    .line 31
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->_instance:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    return-object v0
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->_instance:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v0, p1, p2}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lorg/appcelerator/titanium/util/TiBlobLruCache;->_instance:Lorg/appcelerator/titanium/util/TiBlobLruCache;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiBlobLruCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 45
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    goto :goto_0
.end method
