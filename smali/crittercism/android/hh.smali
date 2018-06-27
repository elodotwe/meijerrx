.class public final Lcrittercism/android/hh;
.super Lcrittercism/android/hq;


# instance fields
.field private final d:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcrittercism/android/ha;)V
    .locals 1

    .prologue
    .line 43
    const-string v0, "field_ids"

    invoke-direct {p0, v0, p1}, Lcrittercism/android/hq;-><init>(Ljava/lang/String;Lcrittercism/android/ha;)V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/hh;->d:Ljava/util/TreeMap;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/ju;)Lcrittercism/android/hg;
    .locals 2

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/hh;->h()V

    .line 105
    iget-object v0, p0, Lcrittercism/android/hh;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hg;

    .line 107
    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcrittercism/android/hg;

    invoke-direct {v0, p1}, Lcrittercism/android/hg;-><init>(Lcrittercism/android/ju;)V

    .line 109
    iget-object v1, p0, Lcrittercism/android/hh;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    return-object v0
.end method

.method public final a(Lcrittercism/android/jl;)Lcrittercism/android/hl;
    .locals 2

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
    invoke-virtual {p0}, Lcrittercism/android/hh;->g()V

    .line 63
    iget-object v0, p0, Lcrittercism/android/hh;->d:Ljava/util/TreeMap;

    check-cast p1, Lcrittercism/android/ju;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hl;

    .line 65
    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcrittercism/android/hh;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 78
    invoke-virtual {p0}, Lcrittercism/android/hh;->g()V

    .line 80
    iget-object v0, p0, Lcrittercism/android/hh;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    .line 81
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 83
    :goto_0
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "field_ids_size:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "field_ids_off:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 88
    :cond_0
    invoke-interface {p1, v1}, Lcrittercism/android/ko;->d(I)V

    .line 89
    invoke-interface {p1, v0}, Lcrittercism/android/ko;->d(I)V

    .line 90
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcrittercism/android/hh;->e()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/ju;)I
    .locals 2

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/hh;->g()V

    .line 129
    iget-object v0, p0, Lcrittercism/android/hh;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hg;

    .line 131
    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    invoke-virtual {v0}, Lcrittercism/android/hg;->d()I

    move-result v0

    return v0
.end method
