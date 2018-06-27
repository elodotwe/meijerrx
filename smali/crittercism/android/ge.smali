.class public final Lcrittercism/android/ge;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcrittercism/android/ge;

    invoke-direct {v0}, Lcrittercism/android/ge;-><init>()V

    sput-object v0, Lcrittercism/android/ge;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 52
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

    invoke-static {p1}, Lcrittercism/android/ge;->f(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 138
    check-cast v0, Lcrittercism/android/eq;

    invoke-virtual {v0}, Lcrittercism/android/eq;->b()I

    move-result v0

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-static {p2, v1}, Lcrittercism/android/ge;->a(Lcrittercism/android/es;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Lcrittercism/android/ge;->a(Lcrittercism/android/ko;SI)V

    .line 141
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-static {p1}, Lcrittercism/android/ge;->g(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v0

    .line 61
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

    .line 74
    instance-of v0, p1, Lcrittercism/android/eq;

    if-nez v0, :cond_0

    move v0, v1

    .line 109
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v3, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 81
    iget-object v0, v3, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 98
    goto :goto_0

    .line 83
    :pswitch_0
    invoke-virtual {v3, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 102
    :cond_1
    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/ge;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 103
    goto :goto_0

    .line 91
    :pswitch_1
    invoke-virtual {v3, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v4

    invoke-virtual {v3, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    if-eq v4, v3, :cond_1

    move v0, v1

    .line 93
    goto :goto_0

    .line 106
    :cond_2
    check-cast p1, Lcrittercism/android/eq;

    .line 107
    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 109
    instance-of v3, v0, Lcrittercism/android/kh;

    if-nez v3, :cond_3

    instance-of v3, v0, Lcrittercism/android/ju;

    if-nez v3, :cond_3

    instance-of v0, v0, Lcrittercism/android/kg;

    if-eqz v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 81
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

    .line 117
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 118
    iget-object v1, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v1

    .line 119
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 120
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    invoke-static {v3}, Lcrittercism/android/ge;->c(I)Z

    move-result v3

    .line 122
    if-ne v1, v5, :cond_1

    .line 123
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 131
    :cond_0
    :goto_0
    return-object v2

    .line 125
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

    .line 126
    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 127
    invoke-virtual {v2, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method
