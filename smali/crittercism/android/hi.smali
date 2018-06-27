.class public final Lcrittercism/android/hi;
.super Lcrittercism/android/hl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcrittercism/android/hl;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcrittercism/android/hn;->a:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 10

    .prologue
    const v9, 0x12345678

    const/16 v8, 0x70

    const/16 v7, 0x8

    const/4 v6, 0x4

    .line 57
    iget-object v0, p1, Lcrittercism/android/ha;->d:Lcrittercism/android/hu;

    invoke-virtual {v0}, Lcrittercism/android/hu;->e()I

    move-result v1

    .line 58
    iget-object v0, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    .line 59
    iget-object v2, p1, Lcrittercism/android/ha;->d:Lcrittercism/android/hu;

    .line 60
    invoke-virtual {v0}, Lcrittercism/android/hz;->e()I

    move-result v3

    .line 61
    invoke-virtual {v2}, Lcrittercism/android/hz;->e()I

    move-result v0

    invoke-virtual {v2}, Lcrittercism/android/hz;->c_()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v2, v0, v3

    .line 64
    iget-object v0, p1, Lcrittercism/android/ha;->a:Lcrittercism/android/ek;

    iget v0, v0, Lcrittercism/android/ek;->a:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_1

    const-string v0, "036"

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dex\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u0000"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "magic: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcrittercism/android/kg;

    invoke-direct {v5, v4}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 68
    const-string v0, "checksum"

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 69
    const/16 v0, 0x14

    const-string v5, "signature"

    invoke-interface {p2, v0, v5}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "file_size:       "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcrittercism/android/ha;->a()I

    move-result v5

    invoke-static {v5}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "header_size:     "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "endian_tag:      "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 74
    const-string v0, "link_size:       0"

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 75
    const-string v0, "link_off:        0"

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "map_off:         "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_2

    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-interface {p2, v5}, Lcrittercism/android/ko;->b(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    const-string v0, "035"

    goto/16 :goto_0

    .line 85
    :cond_2
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->g(I)V

    .line 87
    invoke-virtual {p1}, Lcrittercism/android/ha;->a()I

    move-result v0

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->d(I)V

    .line 88
    invoke-interface {p2, v8}, Lcrittercism/android/ko;->d(I)V

    .line 89
    invoke-interface {p2, v9}, Lcrittercism/android/ko;->d(I)V

    .line 95
    invoke-interface {p2, v7}, Lcrittercism/android/ko;->g(I)V

    .line 97
    invoke-interface {p2, v1}, Lcrittercism/android/ko;->d(I)V

    .line 100
    iget-object v0, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    invoke-virtual {v0, p2}, Lcrittercism/android/ic;->b(Lcrittercism/android/ko;)V

    .line 101
    iget-object v0, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    invoke-virtual {v0, p2}, Lcrittercism/android/ie;->b(Lcrittercism/android/ko;)V

    .line 102
    iget-object v0, p1, Lcrittercism/android/ha;->h:Lcrittercism/android/hy;

    invoke-virtual {v0, p2}, Lcrittercism/android/hy;->b(Lcrittercism/android/ko;)V

    .line 103
    iget-object v0, p1, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    invoke-virtual {v0, p2}, Lcrittercism/android/hh;->a(Lcrittercism/android/ko;)V

    .line 104
    iget-object v0, p1, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    invoke-virtual {v0, p2}, Lcrittercism/android/ht;->a(Lcrittercism/android/ko;)V

    .line 105
    iget-object v0, p1, Lcrittercism/android/ha;->k:Lcrittercism/android/gw;

    invoke-virtual {v0, p2}, Lcrittercism/android/gw;->a(Lcrittercism/android/ko;)V

    .line 107
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data_size:       "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data_off:        "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 112
    :cond_3
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->d(I)V

    .line 113
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    .line 114
    return-void
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x70

    return v0
.end method
