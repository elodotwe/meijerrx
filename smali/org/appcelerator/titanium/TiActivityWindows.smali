.class public Lorg/appcelerator/titanium/TiActivityWindows;
.super Ljava/lang/Object;
.source "TiActivityWindows.java"


# static fields
.field protected static windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static windows:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/appcelerator/titanium/TiActivityWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWindow(Lorg/appcelerator/titanium/TiActivityWindow;)I
    .locals 2
    .param p0, "window"    # Lorg/appcelerator/titanium/TiActivityWindow;

    .prologue
    .line 24
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windowIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 25
    .local v0, "windowId":I
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    return v0
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 45
    return-void
.end method

.method public static removeWindow(I)V
    .locals 1
    .param p0, "windowId"    # I

    .prologue
    .line 39
    sget-object v0, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 40
    return-void
.end method

.method public static windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;
    .param p1, "windowId"    # I
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    sget-object v1, Lorg/appcelerator/titanium/TiActivityWindows;->windows:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiActivityWindow;

    .line 32
    .local v0, "window":Lorg/appcelerator/titanium/TiActivityWindow;
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p0, p2}, Lorg/appcelerator/titanium/TiActivityWindow;->windowCreated(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/os/Bundle;)V

    .line 35
    :cond_0
    return-void
.end method
