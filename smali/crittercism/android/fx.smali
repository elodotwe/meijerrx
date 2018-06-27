.class public final Lcrittercism/android/fx;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcrittercism/android/fx;

    invoke-direct {v0}, Lcrittercism/android/fx;-><init>()V

    sput-object v0, Lcrittercism/android/fx;->b:Lcrittercism/android/ey;

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
    .line 65
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

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcrittercism/android/fx;->a(Lcrittercism/android/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 106
    check-cast v0, Lcrittercism/android/eq;

    iget-object v0, v0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    invoke-virtual {v0}, Lcrittercism/android/ka;->g()I

    move-result v0

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {p2, v2}, Lcrittercism/android/fx;->a(Lcrittercism/android/es;I)S

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v1, v0}, Lcrittercism/android/fx;->a(II)S

    move-result v0

    invoke-static {p1, v2, v0}, Lcrittercism/android/fx;->a(Lcrittercism/android/ko;SS)V

    .line 112
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    check-cast p1, Lcrittercism/android/eq;

    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    .line 59
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcrittercism/android/fx;->a(Lcrittercism/android/ka;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 72
    instance-of v3, p1, Lcrittercism/android/eq;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    invoke-static {v3}, Lcrittercism/android/fx;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fx;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 88
    :goto_0
    return v0

    .line 79
    :cond_1
    check-cast p1, Lcrittercism/android/eq;

    .line 80
    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 82
    instance-of v3, v0, Lcrittercism/android/ka;

    if-nez v3, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    check-cast v0, Lcrittercism/android/ka;

    .line 88
    invoke-virtual {v0}, Lcrittercism/android/ka;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcrittercism/android/ka;->g()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fx;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 95
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 97
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/fx;->c(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 98
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fx;->c(I)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 99
    return-object v1
.end method
