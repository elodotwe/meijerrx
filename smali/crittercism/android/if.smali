.class public final Lcrittercism/android/if;
.super Lcrittercism/android/hv;


# instance fields
.field private final a:Lcrittercism/android/kn;


# direct methods
.method public constructor <init>(Lcrittercism/android/kn;)V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-interface {p1}, Lcrittercism/android/kn;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v0, v1}, Lcrittercism/android/hv;-><init>(II)V

    .line 50
    iput-object p1, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    .line 51
    return-void
.end method


# virtual methods
.method protected final a(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    .line 118
    check-cast p1, Lcrittercism/android/if;

    iget-object v1, p1, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    .line 120
    invoke-static {v0, v1}, Lcrittercism/android/kk;->a(Lcrittercism/android/kn;Lcrittercism/android/kn;)I

    move-result v0

    return v0
.end method

.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcrittercism/android/hn;->i:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 68
    iget-object v0, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    invoke-interface {v0}, Lcrittercism/android/kn;->a()I

    move-result v2

    .line 70
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 71
    iget-object v3, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    invoke-interface {v3, v0}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcrittercism/android/ie;->a(Lcrittercism/android/kl;)Lcrittercism/android/id;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v2, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 94
    iget-object v1, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    invoke-interface {v1}, Lcrittercism/android/kn;->a()I

    move-result v3

    .line 96
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/if;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " type_list"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 98
    const/4 v1, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    move v1, v0

    .line 99
    :goto_0
    if-ge v1, v3, :cond_0

    .line 100
    iget-object v4, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    invoke-interface {v4, v1}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v4

    .line 101
    invoke-virtual {v2, v4}, Lcrittercism/android/ie;->b(Lcrittercism/android/kl;)I

    move-result v5

    .line 102
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " // "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcrittercism/android/kl;->a_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v6, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    .line 109
    :goto_1
    if-ge v0, v3, :cond_1

    .line 110
    iget-object v1, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    invoke-interface {v1, v0}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcrittercism/android/ie;->b(Lcrittercism/android/kl;)I

    move-result v1

    invoke-interface {p2, v1}, Lcrittercism/android/ko;->c(I)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_1
    return-void
.end method

.method public final c()Lcrittercism/android/kn;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcrittercism/android/if;->a:Lcrittercism/android/kn;

    invoke-static {v0}, Lcrittercism/android/kk;->b(Lcrittercism/android/kn;)I

    move-result v0

    return v0
.end method
