.class public final Lcrittercism/android/gx;
.super Lcrittercism/android/hv;


# instance fields
.field private final a:Lcrittercism/android/kd;

.field private final c:Lcrittercism/android/er;

.field private d:Lcrittercism/android/gt;

.field private final e:Z

.field private final f:Lcrittercism/android/kn;

.field private g:Lcrittercism/android/gz;


# direct methods
.method public constructor <init>(Lcrittercism/android/kd;Lcrittercism/android/er;ZLcrittercism/android/kn;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/hv;-><init>(II)V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-nez p2, :cond_1

    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    if-nez p4, :cond_2

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "throwsList == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    iput-object p1, p0, Lcrittercism/android/gx;->a:Lcrittercism/android/kd;

    .line 102
    iput-object p2, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    .line 103
    iput-boolean p3, p0, Lcrittercism/android/gx;->e:Z

    .line 104
    iput-object p4, p0, Lcrittercism/android/gx;->f:Lcrittercism/android/kn;

    .line 105
    iput-object v2, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    .line 106
    iput-object v2, p0, Lcrittercism/android/gx;->g:Lcrittercism/android/gz;

    .line 107
    return-void
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcrittercism/android/hn;->m:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 117
    iget-object v1, p1, Lcrittercism/android/ha;->m:Lcrittercism/android/hu;

    .line 118
    iget-object v2, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 120
    iget-object v3, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    iget v4, v3, Lcrittercism/android/er;->a:I

    if-eq v4, v0, :cond_2

    iget-object v3, v3, Lcrittercism/android/er;->b:Lcrittercism/android/fe;

    iget-boolean v3, v3, Lcrittercism/android/fe;->c:Z

    if-eqz v3, :cond_2

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    iget-object v0, v0, Lcrittercism/android/er;->b:Lcrittercism/android/fe;

    iget-boolean v0, v0, Lcrittercism/android/fe;->d:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    new-instance v0, Lcrittercism/android/gz;

    iget-object v3, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    iget-boolean v4, p0, Lcrittercism/android/gx;->e:Z

    iget-object v5, p0, Lcrittercism/android/gx;->a:Lcrittercism/android/kd;

    invoke-direct {v0, v3, v4, v5}, Lcrittercism/android/gz;-><init>(Lcrittercism/android/er;ZLcrittercism/android/kd;)V

    iput-object v0, p0, Lcrittercism/android/gx;->g:Lcrittercism/android/gz;

    .line 122
    iget-object v0, p0, Lcrittercism/android/gx;->g:Lcrittercism/android/gz;

    invoke-virtual {v1, v0}, Lcrittercism/android/hu;->a(Lcrittercism/android/hv;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    iget-object v0, v0, Lcrittercism/android/er;->c:Lcrittercism/android/em;

    invoke-interface {v0}, Lcrittercism/android/em;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    iget-object v0, v0, Lcrittercism/android/er;->c:Lcrittercism/android/em;

    invoke-interface {v0}, Lcrittercism/android/em;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/kl;

    .line 127
    invoke-virtual {v2, v0}, Lcrittercism/android/ie;->a(Lcrittercism/android/kl;)Lcrittercism/android/id;

    goto :goto_1

    .line 120
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_3
    new-instance v0, Lcrittercism/android/gt;

    iget-object v1, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    invoke-direct {v0, v1}, Lcrittercism/android/gt;-><init>(Lcrittercism/android/er;)V

    iput-object v0, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    .line 132
    :cond_4
    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    iget-object v0, v0, Lcrittercism/android/er;->b:Lcrittercism/android/fe;

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, v0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    invoke-static {v1, v0}, Lcrittercism/android/fe;->a(Ljava/util/HashSet;Lcrittercism/android/es;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/jl;

    .line 133
    invoke-virtual {p1, v0}, Lcrittercism/android/ha;->a(Lcrittercism/android/jl;)V

    goto :goto_3

    .line 135
    :cond_6
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v2, p1, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    .line 200
    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    new-instance v4, Lcrittercism/android/gx$1;

    invoke-direct {v4, p0, v2}, Lcrittercism/android/gx$1;-><init>(Lcrittercism/android/gx;Lcrittercism/android/ha;)V

    iget-object v0, v0, Lcrittercism/android/er;->b:Lcrittercism/android/fe;

    iget-object v0, v0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    instance-of v1, v0, Lcrittercism/android/eq;

    if-eqz v1, :cond_0

    check-cast v0, Lcrittercism/android/eq;

    iget-object v1, v0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    invoke-interface {v4, v1}, Lcrittercism/android/er$a;->a(Lcrittercism/android/jl;)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {v0, v6}, Lcrittercism/android/eq;->a(I)V

    :cond_1
    instance-of v6, v1, Lcrittercism/android/kc;

    if-eqz v6, :cond_0

    check-cast v1, Lcrittercism/android/kc;

    iget-object v1, v1, Lcrittercism/android/kc;->a:Lcrittercism/android/kh;

    invoke-interface {v4, v1}, Lcrittercism/android/er$a;->a(Lcrittercism/android/jl;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Lcrittercism/android/eq;->b(I)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    if-eqz v0, :cond_a

    .line 211
    iget-object v4, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    invoke-virtual {v4}, Lcrittercism/android/gt;->a()V

    iget-object v5, v2, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    iget-object v0, v4, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, v4, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    move v0, v3

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, v4, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    iget-object v6, v4, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    invoke-virtual {v6, v0}, Lcrittercism/android/eo;->a(I)Lcrittercism/android/eo$a;

    move-result-object v6

    iget-object v6, v6, Lcrittercism/android/eo$a;->a:Lcrittercism/android/en;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, v4, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "too many catch handlers"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v6, Lcrittercism/android/kr;

    invoke-direct {v6}, Lcrittercism/android/kr;-><init>()V

    iget-object v0, v4, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Lcrittercism/android/kr;->e(I)I

    move-result v0

    iput v0, v4, Lcrittercism/android/gt;->c:I

    iget-object v0, v4, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/en;

    iget-object v2, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v1}, Lcrittercism/android/en;->b()Z

    move-result v8

    iget v9, v6, Lcrittercism/android/kr;->b:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_6

    add-int/lit8 v0, v2, -0x1

    neg-int v0, v0

    invoke-virtual {v6, v0}, Lcrittercism/android/kr;->f(I)I

    add-int/lit8 v0, v2, -0x1

    :goto_3
    move v2, v3

    :goto_4
    if-ge v2, v0, :cond_7

    invoke-virtual {v1, v2}, Lcrittercism/android/en;->a(I)Lcrittercism/android/en$a;

    move-result-object v9

    iget-object v10, v9, Lcrittercism/android/en$a;->a:Lcrittercism/android/kh;

    invoke-virtual {v5, v10}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v10

    invoke-virtual {v6, v10}, Lcrittercism/android/kr;->e(I)I

    iget v9, v9, Lcrittercism/android/en$a;->b:I

    invoke-virtual {v6, v9}, Lcrittercism/android/kr;->e(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v2}, Lcrittercism/android/kr;->f(I)I

    move v0, v2

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_5

    invoke-virtual {v1, v0}, Lcrittercism/android/en;->a(I)Lcrittercism/android/en$a;

    move-result-object v0

    iget v0, v0, Lcrittercism/android/en$a;->b:I

    invoke-virtual {v6, v0}, Lcrittercism/android/kr;->e(I)I

    goto :goto_2

    :cond_8
    invoke-virtual {v6}, Lcrittercism/android/kr;->e()[B

    move-result-object v0

    iput-object v0, v4, Lcrittercism/android/gt;->b:[B

    .line 212
    iget-object v0, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    invoke-virtual {v0}, Lcrittercism/android/gt;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    iget-object v0, v0, Lcrittercism/android/gt;->b:[B

    array-length v0, v0

    add-int/2addr v0, v1

    .line 223
    :goto_5
    iget-object v1, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    invoke-virtual {v1}, Lcrittercism/android/er;->b()Lcrittercism/android/et;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/et;->b()I

    move-result v1

    .line 224
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_9

    .line 225
    add-int/lit8 v1, v1, 0x1

    .line 228
    :cond_9
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcrittercism/android/gx;->a(I)V

    .line 229
    return-void

    :cond_a
    move v0, v3

    .line 214
    goto :goto_5
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v1, 0x0

    .line 234
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v4

    .line 235
    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    invoke-virtual {v0}, Lcrittercism/android/er;->b()Lcrittercism/android/et;

    move-result-object v0

    iget v5, v0, Lcrittercism/android/et;->a:I

    .line 236
    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    invoke-virtual {v0}, Lcrittercism/android/er;->b()Lcrittercism/android/et;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/et;->c()I

    move-result v6

    .line 237
    iget-object v0, p0, Lcrittercism/android/gx;->a:Lcrittercism/android/kd;

    iget-boolean v2, p0, Lcrittercism/android/gx;->e:Z

    invoke-virtual {v0, v2}, Lcrittercism/android/kd;->a(Z)I

    move-result v7

    .line 238
    iget-object v0, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    invoke-virtual {v0}, Lcrittercism/android/er;->b()Lcrittercism/android/et;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/et;->b()I

    move-result v8

    .line 239
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 240
    :goto_0
    iget-object v2, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    if-nez v2, :cond_6

    move v2, v1

    .line 241
    :goto_1
    iget-object v3, p0, Lcrittercism/android/gx;->g:Lcrittercism/android/gz;

    if-nez v3, :cond_7

    move v3, v1

    .line 243
    :goto_2
    if-eqz v4, :cond_0

    .line 244
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/gx;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcrittercism/android/gx;->a:Lcrittercism/android/kd;

    invoke-virtual {v10}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v1, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  registers_size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 246
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  ins_size:       "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  outs_size:      "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  tries_size:     "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  debug_off:      "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v12, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  insns_size:     "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v12, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 253
    iget-object v9, p0, Lcrittercism/android/gx;->f:Lcrittercism/android/kn;

    invoke-interface {v9}, Lcrittercism/android/kn;->a()I

    move-result v9

    .line 254
    if-eqz v9, :cond_0

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  throws "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcrittercism/android/gx;->f:Lcrittercism/android/kn;

    invoke-static {v10}, Lcrittercism/android/kk;->a(Lcrittercism/android/kn;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v1, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 259
    :cond_0
    invoke-interface {p2, v5}, Lcrittercism/android/ko;->c(I)V

    .line 260
    invoke-interface {p2, v7}, Lcrittercism/android/ko;->c(I)V

    .line 261
    invoke-interface {p2, v6}, Lcrittercism/android/ko;->c(I)V

    .line 262
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->c(I)V

    .line 263
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    .line 264
    invoke-interface {p2, v8}, Lcrittercism/android/ko;->d(I)V

    .line 266
    iget-object v2, p0, Lcrittercism/android/gx;->c:Lcrittercism/android/er;

    invoke-virtual {v2}, Lcrittercism/android/er;->b()Lcrittercism/android/et;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p2}, Lcrittercism/android/et;->a(Lcrittercism/android/ko;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v2, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    if-eqz v2, :cond_3

    .line 269
    if-eqz v0, :cond_2

    .line 270
    if-eqz v4, :cond_1

    .line 271
    const-string v0, "  padding: 0"

    invoke-interface {p2, v11, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 273
    :cond_1
    invoke-interface {p2, v1}, Lcrittercism/android/ko;->c(I)V

    .line 276
    :cond_2
    iget-object v0, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    invoke-virtual {v0, p2}, Lcrittercism/android/gt;->a(Lcrittercism/android/ko;)V

    .line 279
    :cond_3
    if-eqz v4, :cond_4

    .line 284
    iget-object v0, p0, Lcrittercism/android/gx;->g:Lcrittercism/android/gz;

    if-eqz v0, :cond_4

    .line 285
    const-string v0, "  debug info"

    invoke-interface {p2, v1, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcrittercism/android/gx;->g:Lcrittercism/android/gz;

    const-string v2, "    "

    invoke-virtual {v0, p1, v2, p2, v1}, Lcrittercism/android/gz;->a(Lcrittercism/android/ha;Ljava/lang/String;Lcrittercism/android/ko;Z)[B

    .line 289
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 239
    goto/16 :goto_0

    .line 240
    :cond_6
    iget-object v2, p0, Lcrittercism/android/gx;->d:Lcrittercism/android/gt;

    invoke-virtual {v2}, Lcrittercism/android/gt;->b()I

    move-result v2

    goto/16 :goto_1

    .line 241
    :cond_7
    iget-object v3, p0, Lcrittercism/android/gx;->g:Lcrittercism/android/gz;

    invoke-virtual {v3}, Lcrittercism/android/gz;->d()I

    move-result v3

    goto/16 :goto_2

    .line 266
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while writing instructions for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/gx;->a:Lcrittercism/android/kd;

    invoke-virtual {v2}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcrittercism/android/ku;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcrittercism/android/ku;

    move-result-object v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CodeItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/gx;->a:Lcrittercism/android/kd;

    invoke-virtual {v1}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
