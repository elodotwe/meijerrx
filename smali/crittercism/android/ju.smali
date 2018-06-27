.class public final Lcrittercism/android/ju;
.super Lcrittercism/android/kc;


# direct methods
.method public constructor <init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcrittercism/android/kc;-><init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final b(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcrittercism/android/kc;->b(Lcrittercism/android/jl;)I

    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    check-cast p1, Lcrittercism/android/ju;

    .line 75
    iget-object v0, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v0}, Lcrittercism/android/ke;->c()Lcrittercism/android/kg;

    move-result-object v0

    .line 76
    iget-object v1, p1, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v1}, Lcrittercism/android/ke;->c()Lcrittercism/android/kg;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v0}, Lcrittercism/android/ke;->d()Lcrittercism/android/kl;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "field"

    return-object v0
.end method
