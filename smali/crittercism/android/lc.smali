.class public Lcrittercism/android/lc;
.super Ljava/lang/Object;


# instance fields
.field public L:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/lc;->L:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcrittercism/android/lc;->L:Z

    .line 43
    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcrittercism/android/lc;->L:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcrittercism/android/lc;->L:Z

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcrittercism/android/ld;

    const-string v1, "immutable instance"

    invoke-direct {v0, v1}, Lcrittercism/android/ld;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcrittercism/android/lc;->L:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcrittercism/android/ld;

    const-string v1, "mutable instance"

    invoke-direct {v0, v1}, Lcrittercism/android/ld;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    return-void
.end method
