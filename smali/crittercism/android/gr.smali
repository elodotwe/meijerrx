.class public final Lcrittercism/android/gr;
.super Lcrittercism/android/hv;


# instance fields
.field a:Lcrittercism/android/gq;


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcrittercism/android/hn;->v:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    .line 60
    iget-object v1, p0, Lcrittercism/android/gr;->a:Lcrittercism/android/gq;

    invoke-virtual {v0, v1}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v0

    check-cast v0, Lcrittercism/android/gq;

    iput-object v0, p0, Lcrittercism/android/gr;->a:Lcrittercism/android/gq;

    .line 61
    return-void
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcrittercism/android/gr;->a:Lcrittercism/android/gq;

    invoke-virtual {v0}, Lcrittercism/android/gq;->d()I

    move-result v0

    .line 74
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  annotations_off: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 78
    :cond_0
    invoke-interface {p2, v0}, Lcrittercism/android/ko;->d(I)V

    .line 79
    return-void
.end method
