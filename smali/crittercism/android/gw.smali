.class public final Lcrittercism/android/gw;
.super Lcrittercism/android/ig;


# instance fields
.field private final d:Ljava/util/TreeMap;

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcrittercism/android/ha;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "class_defs"

    invoke-direct {p0, v0, p1}, Lcrittercism/android/ig;-><init>(Ljava/lang/String;Lcrittercism/android/ha;)V

    .line 51
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/gw;->e:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method private a(Lcrittercism/android/kl;II)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/gv;

    .line 161
    if-eqz v0, :cond_0

    iget v1, v0, Lcrittercism/android/hl;->e:I

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 185
    :cond_0
    :goto_1
    return p2

    :cond_1
    move v1, v2

    .line 161
    goto :goto_0

    .line 165
    :cond_2
    if-gez p3, :cond_3

    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "class circularity with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_3
    add-int/lit8 v3, p3, -0x1

    .line 171
    iget-object v1, v0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    .line 172
    if-eqz v1, :cond_4

    .line 173
    invoke-virtual {v1}, Lcrittercism/android/kh;->f()Lcrittercism/android/kl;

    move-result-object v1

    .line 174
    invoke-direct {p0, v1, p2, v3}, Lcrittercism/android/gw;->a(Lcrittercism/android/kl;II)I

    move-result p2

    .line 177
    :cond_4
    iget-object v1, v0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    if-nez v1, :cond_5

    sget-object v1, Lcrittercism/android/kk;->a:Lcrittercism/android/kk;

    .line 178
    :goto_2
    invoke-interface {v1}, Lcrittercism/android/kn;->a()I

    move-result v4

    .line 179
    :goto_3
    if-ge v2, v4, :cond_6

    .line 180
    invoke-interface {v1, v2}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v5

    invoke-direct {p0, v5, p2, v3}, Lcrittercism/android/gw;->a(Lcrittercism/android/kl;II)I

    move-result p2

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    :cond_5
    iget-object v1, v0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    invoke-virtual {v1}, Lcrittercism/android/if;->c()Lcrittercism/android/kn;

    move-result-object v1

    goto :goto_2

    .line 183
    :cond_6
    invoke-virtual {v0, p2}, Lcrittercism/android/gv;->a(I)V

    .line 184
    iget-object v1, p0, Lcrittercism/android/gw;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/gw;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcrittercism/android/gw;->e:Ljava/util/ArrayList;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/gv;)V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p1, Lcrittercism/android/gv;->a:Lcrittercism/android/kh;

    invoke-virtual {v0}, Lcrittercism/android/kh;->f()Lcrittercism/android/kl;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcrittercism/android/gw;->h()V

    .line 122
    iget-object v1, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "already added: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public final a(Lcrittercism/android/ko;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 90
    invoke-virtual {p0}, Lcrittercism/android/gw;->g()V

    .line 92
    iget-object v0, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    .line 93
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 95
    :goto_0
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class_defs_size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class_defs_off:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 100
    :cond_0
    invoke-interface {p1, v1}, Lcrittercism/android/ko;->d(I)V

    .line 101
    invoke-interface {p1, v0}, Lcrittercism/android/ko;->d(I)V

    .line 102
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcrittercism/android/gw;->e()I

    move-result v0

    goto :goto_0
.end method

.method protected final b()V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v2

    .line 133
    const/4 v0, 0x0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcrittercism/android/gw;->e:Ljava/util/ArrayList;

    .line 143
    iget-object v1, p0, Lcrittercism/android/gw;->d:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/kl;

    .line 144
    sub-int v4, v2, v1

    invoke-direct {p0, v0, v1, v4}, Lcrittercism/android/gw;->a(Lcrittercism/android/kl;II)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method
