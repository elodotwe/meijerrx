.class public final Lcrittercism/android/hs;
.super Lcrittercism/android/hp;


# direct methods
.method public constructor <init>(Lcrittercism/android/jo;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcrittercism/android/hp;-><init>(Lcrittercism/android/kc;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcrittercism/android/hn;->f:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcrittercism/android/hp;->a(Lcrittercism/android/ha;)V

    .line 45
    iget-object v1, p1, Lcrittercism/android/ha;->h:Lcrittercism/android/hy;

    .line 46
    iget-object v0, p0, Lcrittercism/android/hp;->b:Lcrittercism/android/kc;

    check-cast v0, Lcrittercism/android/jo;

    invoke-virtual {v0}, Lcrittercism/android/jo;->f()Lcrittercism/android/kj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcrittercism/android/hy;->a(Lcrittercism/android/kj;)Lcrittercism/android/hx;

    .line 47
    return-void
.end method

.method protected final b(Lcrittercism/android/ha;)I
    .locals 2

    .prologue
    .line 61
    iget-object v1, p1, Lcrittercism/android/ha;->h:Lcrittercism/android/hy;

    .line 62
    iget-object v0, p0, Lcrittercism/android/hp;->b:Lcrittercism/android/kc;

    check-cast v0, Lcrittercism/android/jo;

    invoke-virtual {v0}, Lcrittercism/android/jo;->f()Lcrittercism/android/kj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcrittercism/android/hy;->b(Lcrittercism/android/kj;)I

    move-result v0

    return v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "proto_idx"

    return-object v0
.end method
