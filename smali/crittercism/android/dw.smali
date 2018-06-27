.class public final Lcrittercism/android/dw;
.super Ljava/lang/Object;


# instance fields
.field a:Lcrittercism/android/am;

.field b:Ljava/util/concurrent/ExecutorService;

.field c:Lcrittercism/android/da;

.field d:Lcrittercism/android/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcrittercism/android/am;Ljava/util/concurrent/ExecutorService;Lcrittercism/android/da;Lcrittercism/android/dq;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcrittercism/android/dw;->a:Lcrittercism/android/am;

    .line 35
    iput-object p2, p0, Lcrittercism/android/dw;->b:Ljava/util/concurrent/ExecutorService;

    .line 36
    iput-object p3, p0, Lcrittercism/android/dw;->c:Lcrittercism/android/da;

    .line 37
    iput-object p4, p0, Lcrittercism/android/dw;->d:Lcrittercism/android/dq;

    .line 38
    return-void
.end method
