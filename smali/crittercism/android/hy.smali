.class public final Lcrittercism/android/hy;
.super Lcrittercism/android/ig;


# instance fields
.field private final d:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>(Lcrittercism/android/ha;)V
    .locals 1

    .prologue
    .line 43
    const-string v0, "proto_ids"

    invoke-direct {p0, v0, p1}, Lcrittercism/android/ig;-><init>(Ljava/lang/String;Lcrittercism/android/ha;)V

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/hy;->d:Ljava/util/TreeMap;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/kj;)Lcrittercism/android/hx;
    .locals 2

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/hy;->h()V

    .line 97
    iget-object v0, p0, Lcrittercism/android/hy;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hx;

    .line 99
    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcrittercism/android/hx;

    invoke-direct {v0, p1}, Lcrittercism/android/hx;-><init>(Lcrittercism/android/kj;)V

    .line 101
    iget-object v1, p0, Lcrittercism/android/hy;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcrittercism/android/hy;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/kj;)I
    .locals 2

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/hy;->g()V

    .line 121
    iget-object v0, p0, Lcrittercism/android/hy;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hx;

    .line 123
    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcrittercism/android/hx;->d()I

    move-result v0

    return v0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcrittercism/android/hy;->d:Ljava/util/TreeMap;

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

    .line 136
    check-cast v0, Lcrittercism/android/hx;

    invoke-virtual {v0, v1}, Lcrittercism/android/hx;->a(I)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public final b(Lcrittercism/android/ko;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 66
    invoke-virtual {p0}, Lcrittercism/android/hy;->g()V

    .line 68
    iget-object v0, p0, Lcrittercism/android/hy;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    .line 69
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    const/high16 v2, 0x10000

    if-le v1, v2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many proto ids"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/hy;->e()I

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proto_ids_size:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "proto_ids_off:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 80
    :cond_2
    invoke-interface {p1, v1}, Lcrittercism/android/ko;->d(I)V

    .line 81
    invoke-interface {p1, v0}, Lcrittercism/android/ko;->d(I)V

    .line 82
    return-void
.end method
