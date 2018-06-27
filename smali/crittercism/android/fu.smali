.class public final Lcrittercism/android/fu;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcrittercism/android/fu;

    invoke-direct {v0}, Lcrittercism/android/fu;-><init>()V

    sput-object v0, Lcrittercism/android/fu;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 49
    check-cast p1, Lcrittercism/android/eq;

    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcrittercism/android/fu;->a(Lcrittercism/android/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 114
    check-cast v0, Lcrittercism/android/eq;

    iget-object v0, v0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    .line 118
    invoke-virtual {v1, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->i()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 119
    invoke-virtual {v0}, Lcrittercism/android/ka;->g()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    .line 124
    :goto_0
    invoke-virtual {v1, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-static {p2, v1}, Lcrittercism/android/fu;->a(Lcrittercism/android/es;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Lcrittercism/android/fu;->a(Lcrittercism/android/ko;SS)V

    .line 125
    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcrittercism/android/ka;->h()J

    move-result-wide v2

    const/16 v0, 0x30

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    int-to-short v0, v0

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 58
    check-cast p1, Lcrittercism/android/eq;

    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    .line 60
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->i()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x20

    :goto_0
    invoke-static {v0, v1}, Lcrittercism/android/fu;->a(Lcrittercism/android/ka;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x40

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v3, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 75
    instance-of v0, p1, Lcrittercism/android/eq;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_0

    invoke-virtual {v3, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fu;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 81
    :cond_1
    check-cast p1, Lcrittercism/android/eq;

    .line 82
    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 84
    instance-of v4, v0, Lcrittercism/android/ka;

    if-nez v4, :cond_2

    move v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    check-cast v0, Lcrittercism/android/ka;

    .line 91
    invoke-virtual {v3, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->i()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 92
    invoke-virtual {v0}, Lcrittercism/android/ka;->g()I

    move-result v0

    .line 93
    const v3, 0xffff

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v0}, Lcrittercism/android/ka;->h()J

    move-result-wide v4

    .line 96
    const-wide v6, 0xffffffffffffL

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 104
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 106
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fu;->c(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 107
    return-object v1
.end method
