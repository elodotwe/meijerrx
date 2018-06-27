.class public final Lcrittercism/android/gk;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcrittercism/android/gk;

    invoke-direct {v0}, Lcrittercism/android/gk;-><init>()V

    sput-object v0, Lcrittercism/android/gk;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x4

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcrittercism/android/gk;->f(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 4

    .prologue
    .line 139
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 140
    check-cast v0, Lcrittercism/android/eq;

    invoke-virtual {v0}, Lcrittercism/android/eq;->b()I

    move-result v0

    .line 142
    invoke-static {p2}, Lcrittercism/android/gk;->h(Lcrittercism/android/es;)S

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    int-to-short v1, v1

    int-to-short v3, v0

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    invoke-interface {p1, v2}, Lcrittercism/android/ko;->c(I)V

    invoke-interface {p1, v3}, Lcrittercism/android/ko;->c(I)V

    invoke-interface {p1, v0}, Lcrittercism/android/ko;->c(I)V

    invoke-interface {p1, v1}, Lcrittercism/android/ko;->c(I)V

    .line 143
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    invoke-static {p1}, Lcrittercism/android/gk;->g(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    sget-boolean v0, Lcrittercism/android/gk;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 77
    :cond_0
    instance-of v0, p1, Lcrittercism/android/eq;

    if-nez v0, :cond_1

    move v0, v1

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 84
    iget-object v0, v3, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 101
    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {v3, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 105
    :cond_2
    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/gk;->e(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 106
    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {v3, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v4

    invoke-virtual {v3, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    if-eq v4, v3, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 109
    :cond_3
    check-cast p1, Lcrittercism/android/eq;

    .line 110
    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 112
    instance-of v3, v0, Lcrittercism/android/kh;

    if-nez v3, :cond_4

    instance-of v0, v0, Lcrittercism/android/ju;

    if-eqz v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 120
    iget-object v1, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v1

    .line 121
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 122
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    invoke-static {v3}, Lcrittercism/android/gk;->c(I)Z

    move-result v3

    .line 124
    if-ne v1, v5, :cond_1

    .line 125
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 127
    :cond_1
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-virtual {v0, v5}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 128
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 129
    invoke-virtual {v2, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method
