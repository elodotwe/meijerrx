.class public final Lcrittercism/android/ix;
.super Lcrittercism/android/kv;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public final a(I)Lcrittercism/android/iw;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcrittercism/android/ix;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/iw;

    return-object v0
.end method

.method public final a(ILcrittercism/android/iw;)V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcrittercism/android/ix;->a(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public final a(Lcrittercism/android/iw$b;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v0

    .line 75
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcrittercism/android/ix;->a(I)Lcrittercism/android/iw;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcrittercism/android/iw;->a(Lcrittercism/android/iw$b;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public final b()Lcrittercism/android/iw;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcrittercism/android/ix;->a(I)Lcrittercism/android/iw;

    move-result-object v0

    return-object v0
.end method
