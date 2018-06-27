.class public final Lcrittercism/android/id;
.super Lcrittercism/android/hk;


# direct methods
.method public constructor <init>(Lcrittercism/android/kh;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcrittercism/android/hk;-><init>(Lcrittercism/android/kh;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcrittercism/android/hn;->c:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    iget-object v1, p0, Lcrittercism/android/hk;->a:Lcrittercism/android/kh;

    invoke-virtual {v1}, Lcrittercism/android/kh;->g()Lcrittercism/android/kg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/ic;->a(Lcrittercism/android/kg;)Lcrittercism/android/ib;

    .line 54
    return-void
.end method

.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lcrittercism/android/hk;->a:Lcrittercism/android/kh;

    .line 60
    invoke-virtual {v0}, Lcrittercism/android/kh;->g()Lcrittercism/android/kg;

    move-result-object v0

    .line 61
    iget-object v1, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    invoke-virtual {v1, v0}, Lcrittercism/android/ic;->b(Lcrittercism/android/kg;)I

    move-result v1

    .line 63
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/id;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 65
    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  descriptor_idx: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 68
    :cond_0
    invoke-interface {p2, v1}, Lcrittercism/android/ko;->d(I)V

    .line 69
    return-void
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x4

    return v0
.end method
