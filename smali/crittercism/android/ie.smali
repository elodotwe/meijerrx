.class public final Lcrittercism/android/ie;
.super Lcrittercism/android/ig;


# instance fields
.field private final d:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcrittercism/android/ha;)V
    .locals 1

    .prologue
    .line 43
    const-string v0, "type_ids"

    invoke-direct {p0, v0, p1}, Lcrittercism/android/ig;-><init>(Ljava/lang/String;Lcrittercism/android/ha;)V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/jl;)Lcrittercism/android/hl;
    .locals 3

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ie;->g()V

    move-object v0, p1

    .line 63
    check-cast v0, Lcrittercism/android/kh;

    invoke-virtual {v0}, Lcrittercism/android/kh;->f()Lcrittercism/android/kl;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hl;

    .line 66
    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    return-object v0
.end method

.method public final a(Lcrittercism/android/kh;)Lcrittercism/android/id;
    .locals 3

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ie;->h()V

    .line 133
    invoke-virtual {p1}, Lcrittercism/android/kh;->f()Lcrittercism/android/kl;

    move-result-object v1

    .line 134
    iget-object v0, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/id;

    .line 136
    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lcrittercism/android/id;

    invoke-direct {v0, p1}, Lcrittercism/android/id;-><init>(Lcrittercism/android/kh;)V

    .line 138
    iget-object v2, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    return-object v0
.end method

.method public final a(Lcrittercism/android/kl;)Lcrittercism/android/id;
    .locals 2

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ie;->h()V

    .line 110
    iget-object v0, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/id;

    .line 112
    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcrittercism/android/id;

    new-instance v1, Lcrittercism/android/kh;

    invoke-direct {v1, p1}, Lcrittercism/android/kh;-><init>(Lcrittercism/android/kl;)V

    invoke-direct {v0, v1}, Lcrittercism/android/id;-><init>(Lcrittercism/android/kh;)V

    .line 114
    iget-object v1, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/kh;)I
    .locals 2

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcrittercism/android/kh;->f()Lcrittercism/android/kl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcrittercism/android/ie;->b(Lcrittercism/android/kl;)I

    move-result v0

    return v0
.end method

.method public final b(Lcrittercism/android/kl;)I
    .locals 3

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ie;->g()V

    .line 158
    iget-object v0, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/id;

    .line 160
    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    invoke-virtual {v0}, Lcrittercism/android/id;->d()I

    move-result v0

    return v0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hm;

    .line 188
    check-cast v0, Lcrittercism/android/id;

    invoke-virtual {v0, v1}, Lcrittercism/android/id;->a(I)V

    .line 189
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public final b(Lcrittercism/android/ko;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 79
    invoke-virtual {p0}, Lcrittercism/android/ie;->g()V

    .line 81
    iget-object v0, p0, Lcrittercism/android/ie;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    .line 82
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 84
    :goto_0
    const/high16 v2, 0x10000

    if-le v1, v2, :cond_1

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many type ids"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ie;->e()I

    move-result v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type_ids_size:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type_ids_off:    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 93
    :cond_2
    invoke-interface {p1, v1}, Lcrittercism/android/ko;->d(I)V

    .line 94
    invoke-interface {p1, v0}, Lcrittercism/android/ko;->d(I)V

    .line 95
    return-void
.end method
