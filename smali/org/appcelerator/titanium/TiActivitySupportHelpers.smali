.class public Lorg/appcelerator/titanium/TiActivitySupportHelpers;
.super Ljava/lang/Object;
.source "TiActivitySupportHelpers.java"


# static fields
.field protected static supportHelperIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static supportHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/appcelerator/titanium/util/TiActivitySupportHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->supportHelperIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->supportHelpers:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSupportHelper(Lorg/appcelerator/titanium/util/TiActivitySupportHelper;)I
    .locals 2
    .param p0, "supportHelper"    # Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .prologue
    .line 25
    sget-object v1, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->supportHelperIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 26
    .local v0, "supportHelperId":I
    sget-object v1, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->supportHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    return v0
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->supportHelpers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 47
    return-void
.end method

.method public static removeSupportHelper(I)V
    .locals 1
    .param p0, "supportHelperId"    # I

    .prologue
    .line 41
    sget-object v0, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->supportHelpers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 42
    return-void
.end method

.method public static retrieveSupportHelper(Lorg/appcelerator/titanium/TiBaseActivity;I)Lorg/appcelerator/titanium/util/TiActivitySupportHelper;
    .locals 2
    .param p0, "activity"    # Lorg/appcelerator/titanium/TiBaseActivity;
    .param p1, "supportHelperId"    # I

    .prologue
    .line 32
    sget-object v1, Lorg/appcelerator/titanium/TiActivitySupportHelpers;->supportHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .line 33
    .local v0, "supportHelper":Lorg/appcelerator/titanium/util/TiActivitySupportHelper;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;->setActivity(Landroid/app/Activity;)V

    .line 36
    :cond_0
    return-object v0
.end method
