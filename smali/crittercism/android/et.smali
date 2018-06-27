.class public final Lcrittercism/android/et;
.super Lcrittercism/android/kv;


# instance fields
.field public final a:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 76
    iput p2, p0, Lcrittercism/android/et;->a:I

    .line 77
    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)Lcrittercism/android/et;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 59
    new-instance v4, Lcrittercism/android/et;

    invoke-direct {v4, v3, p1}, Lcrittercism/android/et;-><init>(II)V

    move v1, v2

    .line 61
    :goto_0
    if-ge v1, v3, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    invoke-virtual {v4, v1, v0}, Lcrittercism/android/et;->a(ILjava/lang/Object;)V

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_0
    iput-boolean v2, v4, Lcrittercism/android/lc;->L:Z

    .line 66
    return-object v4
.end method


# virtual methods
.method public final a(I)Lcrittercism/android/es;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcrittercism/android/et;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-interface {p1}, Lcrittercism/android/ko;->f()I

    move-result v3

    .line 127
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v0

    .line 129
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    invoke-interface {p1}, Lcrittercism/android/ko;->b()Z

    move-result v5

    move v2, v1

    .line 132
    :goto_0
    if-ge v2, v4, :cond_4

    .line 133
    invoke-virtual {p0, v2}, Lcrittercism/android/et;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    .line 134
    invoke-virtual {v0}, Lcrittercism/android/es;->f()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 137
    if-nez v6, :cond_0

    if-eqz v5, :cond_2

    .line 138
    :cond_0
    const-string v7, "  "

    invoke-interface {p1}, Lcrittercism/android/ko;->d()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcrittercism/android/es;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_1
    if-eqz v0, :cond_3

    .line 145
    invoke-interface {p1, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 132
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    :cond_3
    if-eqz v6, :cond_1

    .line 147
    const-string v0, ""

    invoke-interface {p1, v6, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 152
    :cond_4
    :goto_3
    if-ge v1, v4, :cond_5

    .line 153
    invoke-virtual {p0, v1}, Lcrittercism/android/et;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    .line 155
    :try_start_0
    invoke-virtual {v0, p1}, Lcrittercism/android/es;->a(Lcrittercism/android/ko;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 156
    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while writing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcrittercism/android/ku;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcrittercism/android/ku;

    move-result-object v0

    throw v0

    .line 163
    :cond_5
    invoke-interface {p1}, Lcrittercism/android/ko;->f()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 164
    invoke-virtual {p0}, Lcrittercism/android/et;->b()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "write length mismatch; expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcrittercism/android/et;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but actually wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_6
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 115
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcrittercism/android/et;->a(I)Lcrittercism/android/es;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcrittercism/android/es;->d()I

    move-result v1

    invoke-virtual {v0}, Lcrittercism/android/es;->f()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final c()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v6, v0

    move v5, v3

    move v4, v3

    .line 191
    :goto_0
    if-ge v5, v6, :cond_1

    .line 192
    invoke-virtual {p0, v5}, Lcrittercism/android/et;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    .line 194
    instance-of v1, v0, Lcrittercism/android/eq;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 195
    check-cast v1, Lcrittercism/android/eq;

    iget-object v1, v1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 200
    instance-of v2, v1, Lcrittercism/android/jo;

    if-eqz v2, :cond_2

    .line 201
    iget-object v0, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget v0, v0, Lcrittercism/android/eu;->b:I

    const/16 v2, 0x71

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    move v2, v0

    :goto_1
    move-object v0, v1

    .line 206
    check-cast v0, Lcrittercism/android/jo;

    invoke-virtual {v0, v2}, Lcrittercism/android/jo;->a(Z)I

    move-result v0

    .line 209
    if-le v0, v4, :cond_2

    .line 191
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 201
    goto :goto_1

    .line 214
    :cond_1
    return v4

    :cond_2
    move v0, v4

    goto :goto_2
.end method
