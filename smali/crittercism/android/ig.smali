.class public abstract Lcrittercism/android/ig;
.super Lcrittercism/android/hz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcrittercism/android/ha;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcrittercism/android/hz;-><init>(Ljava/lang/String;Lcrittercism/android/ha;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/hm;)I
    .locals 2

    .prologue
    .line 99
    check-cast p1, Lcrittercism/android/hl;

    .line 100
    invoke-virtual {p1}, Lcrittercism/android/hl;->d()I

    move-result v0

    invoke-virtual {p1}, Lcrittercism/android/hl;->b_()I

    move-result v1

    mul-int/2addr v0, v1

    .line 102
    invoke-virtual {p0, v0}, Lcrittercism/android/ig;->b(I)I

    move-result v0

    return v0
.end method

.method protected final a_(Lcrittercism/android/ko;)V
    .locals 4

    .prologue
    .line 83
    iget-object v1, p0, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    .line 84
    iget v2, p0, Lcrittercism/android/hz;->b:I

    .line 86
    invoke-virtual {p0}, Lcrittercism/android/ig;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hm;

    .line 87
    invoke-virtual {v0, v1, p1}, Lcrittercism/android/hm;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 88
    invoke-interface {p1, v2}, Lcrittercism/android/ko;->h(I)V

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method protected abstract b()V
.end method

.method protected final c()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    .line 73
    invoke-virtual {p0}, Lcrittercism/android/ig;->b()V

    .line 75
    invoke-virtual {p0}, Lcrittercism/android/ig;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hm;

    .line 76
    invoke-virtual {v0, v1}, Lcrittercism/android/hm;->a(Lcrittercism/android/ha;)V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public final c_()I
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcrittercism/android/ig;->a()Ljava/util/Collection;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hm;

    invoke-virtual {v0}, Lcrittercism/android/hm;->b_()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method
