.class public final Lcrittercism/android/gq;
.super Lcrittercism/android/hv;


# instance fields
.field final a:Lcrittercism/android/ip;

.field private final c:[Lcrittercism/android/gp;


# virtual methods
.method protected final a(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 97
    check-cast p1, Lcrittercism/android/gq;

    .line 99
    iget-object v0, p0, Lcrittercism/android/gq;->a:Lcrittercism/android/ip;

    iget-object v1, p1, Lcrittercism/android/gq;->a:Lcrittercism/android/ip;

    invoke-virtual {v0, v1}, Lcrittercism/android/ip;->a(Lcrittercism/android/ip;)I

    move-result v0

    return v0
.end method

.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcrittercism/android/hn;->k:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 5

    .prologue
    .line 116
    iget-object v2, p1, Lcrittercism/android/ha;->m:Lcrittercism/android/hu;

    .line 117
    iget-object v0, p0, Lcrittercism/android/gq;->c:[Lcrittercism/android/gp;

    array-length v3, v0

    .line 119
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 120
    iget-object v4, p0, Lcrittercism/android/gq;->c:[Lcrittercism/android/gp;

    iget-object v0, p0, Lcrittercism/android/gq;->c:[Lcrittercism/android/gp;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v0

    check-cast v0, Lcrittercism/android/gp;

    aput-object v0, v4, v1

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcrittercism/android/gq;->c:[Lcrittercism/android/gp;

    invoke-static {v0}, Lcrittercism/android/gp;->a([Lcrittercism/android/gp;)V

    .line 129
    return-void
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 134
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v1

    .line 135
    iget-object v2, p0, Lcrittercism/android/gq;->c:[Lcrittercism/android/gp;

    array-length v2, v2

    .line 137
    if-eqz v1, :cond_0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/gq;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v6, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 142
    :cond_0
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->d(I)V

    .line 144
    :goto_0
    if-ge v0, v2, :cond_2

    .line 145
    iget-object v3, p0, Lcrittercism/android/gq;->c:[Lcrittercism/android/gp;

    aget-object v3, v3, v0

    .line 146
    invoke-virtual {v3}, Lcrittercism/android/gp;->d()I

    move-result v3

    .line 148
    if-eqz v1, :cond_1

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  entries["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v6, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 151
    iget-object v4, p0, Lcrittercism/android/gq;->c:[Lcrittercism/android/gp;

    aget-object v4, v4, v0

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcrittercism/android/gp;->a(Lcrittercism/android/ko;Ljava/lang/String;)V

    .line 154
    :cond_1
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcrittercism/android/gq;->a:Lcrittercism/android/ip;

    invoke-virtual {v0}, Lcrittercism/android/ip;->hashCode()I

    move-result v0

    return v0
.end method
