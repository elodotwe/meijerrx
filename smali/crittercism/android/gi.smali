.class public final Lcrittercism/android/gi;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcrittercism/android/gi;

    invoke-direct {v0}, Lcrittercism/android/gi;-><init>()V

    sput-object v0, Lcrittercism/android/gi;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 49
    return-void
.end method

.method private static d(Lcrittercism/android/jd;)I
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 150
    iget-object v2, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v2

    .line 152
    if-le v4, v6, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    .line 159
    :goto_1
    if-ge v2, v4, :cond_2

    .line 160
    invoke-virtual {p0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Lcrittercism/android/jc;->i()I

    move-result v3

    add-int/2addr v3, v1

    .line 168
    invoke-virtual {v5}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-virtual {v5}, Lcrittercism/android/jc;->i()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcrittercism/android/gi;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_1

    .line 173
    :cond_2
    if-gt v1, v6, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static e(Lcrittercism/android/jd;)Lcrittercism/android/jd;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-static {p0}, Lcrittercism/android/gi;->d(Lcrittercism/android/jd;)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v1

    .line 189
    if-ne v0, v4, :cond_0

    .line 209
    :goto_0
    return-object p0

    .line 193
    :cond_0
    new-instance v1, Lcrittercism/android/jd;

    invoke-direct {v1, v0}, Lcrittercism/android/jd;-><init>(I)V

    move v2, v3

    move v0, v3

    .line 196
    :goto_1
    if-ge v2, v4, :cond_2

    .line 197
    invoke-virtual {p0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v5

    .line 198
    invoke-virtual {v1, v0, v5}, Lcrittercism/android/jd;->a(ILcrittercism/android/jc;)V

    .line 199
    invoke-virtual {v5}, Lcrittercism/android/jc;->i()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 200
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Lcrittercism/android/jc;->e()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lcrittercism/android/kl;->i:Lcrittercism/android/kl;

    invoke-static {v5, v7}, Lcrittercism/android/jc;->a(ILcrittercism/android/km;)Lcrittercism/android/jc;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcrittercism/android/jd;->a(ILcrittercism/android/jc;)V

    .line 202
    add-int/lit8 v0, v0, 0x2

    .line 196
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 208
    :cond_2
    iput-boolean v3, v1, Lcrittercism/android/lc;->L:Z

    move-object p0, v1

    .line 209
    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x3

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-static {v0}, Lcrittercism/android/gi;->e(Lcrittercism/android/jd;)Lcrittercism/android/jd;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcrittercism/android/gi;->a(Lcrittercism/android/jd;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcrittercism/android/gi;->f(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    move-object v0, p2

    check-cast v0, Lcrittercism/android/eq;

    invoke-virtual {v0}, Lcrittercism/android/eq;->b()I

    move-result v6

    .line 124
    iget-object v0, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-static {v0}, Lcrittercism/android/gi;->e(Lcrittercism/android/jd;)Lcrittercism/android/jd;

    move-result-object v7

    .line 125
    iget-object v0, v7, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v8, v0

    .line 126
    if-lez v8, :cond_0

    invoke-virtual {v7, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    move v5, v0

    .line 127
    :goto_0
    if-le v8, v2, :cond_1

    invoke-virtual {v7, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    move v4, v0

    .line 128
    :goto_1
    if-le v8, v3, :cond_2

    invoke-virtual {v7, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    move v3, v0

    .line 129
    :goto_2
    if-le v8, v9, :cond_3

    invoke-virtual {v7, v9}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    move v2, v0

    .line 130
    :goto_3
    if-le v8, v10, :cond_4

    invoke-virtual {v7, v10}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    .line 132
    :goto_4
    invoke-static {v0, v8}, Lcrittercism/android/gi;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lcrittercism/android/gi;->a(Lcrittercism/android/es;I)S

    move-result v0

    int-to-short v1, v6

    and-int/lit8 v6, v5, 0xf

    if-eq v6, v5, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n0 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v5, v1

    .line 126
    goto :goto_0

    :cond_1
    move v4, v1

    .line 127
    goto :goto_1

    :cond_2
    move v3, v1

    .line 128
    goto :goto_2

    :cond_3
    move v2, v1

    .line 129
    goto :goto_3

    :cond_4
    move v0, v1

    .line 130
    goto :goto_4

    .line 132
    :cond_5
    and-int/lit8 v6, v4, 0xf

    if-eq v6, v4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n1 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    and-int/lit8 v6, v3, 0xf

    if-eq v6, v3, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n2 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    and-int/lit8 v6, v2, 0xf

    if-eq v6, v2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n3 out of range 0..15"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v2, v3

    int-to-short v2, v2

    invoke-static {p1, v0, v1, v2}, Lcrittercism/android/gi;->a(Lcrittercism/android/ko;SSS)V

    .line 137
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-static {p1}, Lcrittercism/android/gi;->g(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    instance-of v1, p1, Lcrittercism/android/eq;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    check-cast p1, Lcrittercism/android/eq;

    .line 82
    invoke-virtual {p1}, Lcrittercism/android/eq;->b()I

    move-result v1

    .line 84
    invoke-static {v1}, Lcrittercism/android/gi;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 89
    instance-of v2, v1, Lcrittercism/android/kd;

    if-nez v2, :cond_2

    instance-of v1, v1, Lcrittercism/android/kh;

    if-eqz v1, :cond_0

    .line 94
    :cond_2
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 95
    invoke-static {v1}, Lcrittercism/android/gi;->d(Lcrittercism/android/jd;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 6

    .prologue
    .line 101
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 102
    iget-object v0, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v0

    .line 103
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 105
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 106
    invoke-virtual {v1, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lcrittercism/android/jc;->e()I

    move-result v5

    invoke-virtual {v4}, Lcrittercism/android/jc;->i()I

    move-result v4

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcrittercism/android/gi;->a(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-object v3
.end method
