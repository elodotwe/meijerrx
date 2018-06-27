.class public final Lcrittercism/android/jt;
.super Lcrittercism/android/kc;


# instance fields
.field private c:Lcrittercism/android/ju;


# virtual methods
.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    invoke-virtual {v0}, Lcrittercism/android/kh;->f()Lcrittercism/android/kl;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "enum"

    return-object v0
.end method

.method public final f()Lcrittercism/android/ju;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcrittercism/android/jt;->c:Lcrittercism/android/ju;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcrittercism/android/ju;

    iget-object v1, p0, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    iget-object v2, p0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ju;-><init>(Lcrittercism/android/kh;Lcrittercism/android/ke;)V

    iput-object v0, p0, Lcrittercism/android/jt;->c:Lcrittercism/android/ju;

    .line 66
    :cond_0
    iget-object v0, p0, Lcrittercism/android/jt;->c:Lcrittercism/android/ju;

    return-object v0
.end method
