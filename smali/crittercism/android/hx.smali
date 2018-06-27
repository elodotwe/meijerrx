.class public final Lcrittercism/android/hx;
.super Lcrittercism/android/hl;


# instance fields
.field private final a:Lcrittercism/android/kj;

.field private final b:Lcrittercism/android/kg;

.field private c:Lcrittercism/android/if;


# direct methods
.method public constructor <init>(Lcrittercism/android/kj;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcrittercism/android/hl;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcrittercism/android/hx;->a:Lcrittercism/android/kj;

    .line 54
    invoke-static {p1}, Lcrittercism/android/hx;->a(Lcrittercism/android/kj;)Lcrittercism/android/kg;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/hx;->b:Lcrittercism/android/kg;

    .line 56
    invoke-virtual {p1}, Lcrittercism/android/kj;->b()Lcrittercism/android/kk;

    move-result-object v1

    .line 57
    iget-object v0, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcrittercism/android/hx;->c:Lcrittercism/android/if;

    .line 59
    return-void

    .line 57
    :cond_1
    new-instance v0, Lcrittercism/android/if;

    invoke-direct {v0, v1}, Lcrittercism/android/if;-><init>(Lcrittercism/android/kn;)V

    goto :goto_0
.end method

.method private static a(Lcrittercism/android/kl;)C
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcrittercism/android/kl;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 90
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 91
    const/16 v0, 0x4c

    .line 94
    :cond_0
    return v0
.end method

.method private static a(Lcrittercism/android/kj;)Lcrittercism/android/kg;
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lcrittercism/android/kj;->b()Lcrittercism/android/kk;

    move-result-object v1

    .line 69
    iget-object v0, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    invoke-virtual {p0}, Lcrittercism/android/kj;->a()Lcrittercism/android/kl;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/hx;->a(Lcrittercism/android/kl;)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 75
    invoke-virtual {v1, v0}, Lcrittercism/android/kk;->a(I)Lcrittercism/android/kl;

    move-result-object v4

    invoke-static {v4}, Lcrittercism/android/hx;->a(Lcrittercism/android/kl;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcrittercism/android/kg;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcrittercism/android/hn;->d:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    .line 113
    iget-object v1, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 114
    iget-object v2, p1, Lcrittercism/android/ha;->c:Lcrittercism/android/hu;

    .line 116
    iget-object v3, p0, Lcrittercism/android/hx;->a:Lcrittercism/android/kj;

    invoke-virtual {v3}, Lcrittercism/android/kj;->a()Lcrittercism/android/kl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcrittercism/android/ie;->a(Lcrittercism/android/kl;)Lcrittercism/android/id;

    .line 117
    iget-object v1, p0, Lcrittercism/android/hx;->b:Lcrittercism/android/kg;

    invoke-virtual {v0, v1}, Lcrittercism/android/ic;->a(Lcrittercism/android/kg;)Lcrittercism/android/ib;

    .line 119
    iget-object v0, p0, Lcrittercism/android/hx;->c:Lcrittercism/android/if;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcrittercism/android/hx;->c:Lcrittercism/android/if;

    invoke-virtual {v2, v0}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v0

    check-cast v0, Lcrittercism/android/if;

    iput-object v0, p0, Lcrittercism/android/hx;->c:Lcrittercism/android/if;

    .line 122
    :cond_0
    return-void
.end method

.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x4

    .line 127
    iget-object v0, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    iget-object v2, p0, Lcrittercism/android/hx;->b:Lcrittercism/android/kg;

    invoke-virtual {v0, v2}, Lcrittercism/android/ic;->b(Lcrittercism/android/kg;)I

    move-result v2

    .line 128
    iget-object v0, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    iget-object v3, p0, Lcrittercism/android/hx;->a:Lcrittercism/android/kj;

    invoke-virtual {v3}, Lcrittercism/android/kj;->a()Lcrittercism/android/kl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcrittercism/android/ie;->b(Lcrittercism/android/kl;)I

    move-result v3

    .line 129
    iget-object v0, p0, Lcrittercism/android/hx;->c:Lcrittercism/android/if;

    invoke-static {v0}, Lcrittercism/android/hv;->b(Lcrittercism/android/hv;)I

    move-result v4

    .line 131
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v0, p0, Lcrittercism/android/hx;->a:Lcrittercism/android/kj;

    invoke-virtual {v0}, Lcrittercism/android/kj;->a()Lcrittercism/android/kl;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kl;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v0, " proto("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Lcrittercism/android/hx;->a:Lcrittercism/android/kj;

    invoke-virtual {v0}, Lcrittercism/android/kj;->b()Lcrittercism/android/kk;

    move-result-object v6

    .line 137
    iget-object v0, v6, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v7, v0

    move v0, v1

    .line 139
    :goto_0
    if-ge v0, v7, :cond_1

    .line 140
    if-eqz v0, :cond_0

    .line 141
    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-virtual {v6, v0}, Lcrittercism/android/kk;->a(I)Lcrittercism/android/kl;

    move-result-object v8

    invoke-virtual {v8}, Lcrittercism/android/kl;->a_()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/hx;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  shorty_idx:      "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/hx;->b:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  return_type_idx: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/hx;->a:Lcrittercism/android/kj;

    invoke-virtual {v1}, Lcrittercism/android/kj;->a()Lcrittercism/android/kl;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/kl;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  parameters_off:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 155
    :cond_2
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->d(I)V

    .line 156
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    .line 157
    invoke-interface {p2, v4}, Lcrittercism/android/ko;->d(I)V

    .line 158
    return-void
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0xc

    return v0
.end method
