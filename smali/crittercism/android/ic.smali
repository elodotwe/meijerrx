.class public final Lcrittercism/android/ic;
.super Lcrittercism/android/ig;


# instance fields
.field private final d:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcrittercism/android/ha;)V
    .locals 1

    .prologue
    .line 45
    const-string v0, "string_ids"

    invoke-direct {p0, v0, p1}, Lcrittercism/android/ig;-><init>(Ljava/lang/String;Lcrittercism/android/ha;)V

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/jl;)Lcrittercism/android/hl;
    .locals 2

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ic;->g()V

    .line 65
    iget-object v0, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

    check-cast p1, Lcrittercism/android/kg;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hl;

    .line 67
    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    return-object v0
.end method

.method public final a(Lcrittercism/android/kg;)Lcrittercism/android/ib;
    .locals 3

    .prologue
    .line 112
    new-instance v1, Lcrittercism/android/ib;

    invoke-direct {v1, p1}, Lcrittercism/android/ib;-><init>(Lcrittercism/android/kg;)V

    invoke-virtual {p0}, Lcrittercism/android/ic;->h()V

    invoke-virtual {v1}, Lcrittercism/android/ib;->c()Lcrittercism/android/kg;

    move-result-object v2

    iget-object v0, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ib;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/kg;)I
    .locals 2

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/ic;->g()V

    .line 163
    iget-object v0, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ib;

    .line 165
    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    invoke-virtual {v0}, Lcrittercism/android/ib;->d()I

    move-result v0

    return v0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

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

    check-cast v0, Lcrittercism/android/ib;

    .line 178
    invoke-virtual {v0, v1}, Lcrittercism/android/ib;->a(I)V

    .line 179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public final b(Lcrittercism/android/ko;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 80
    invoke-virtual {p0}, Lcrittercism/android/ic;->g()V

    .line 82
    iget-object v0, p0, Lcrittercism/android/ic;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    .line 83
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string_ids_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "string_ids_off:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 90
    :cond_0
    invoke-interface {p1, v1}, Lcrittercism/android/ko;->d(I)V

    .line 91
    invoke-interface {p1, v0}, Lcrittercism/android/ko;->d(I)V

    .line 92
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcrittercism/android/ic;->e()I

    move-result v0

    goto :goto_0
.end method
