.class public final Lcrittercism/android/gf;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcrittercism/android/gf;

    invoke-direct {v0}, Lcrittercism/android/gf;-><init>()V

    sput-object v0, Lcrittercism/android/gf;->b:Lcrittercism/android/ey;

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
    .line 64
    const/4 v0, 0x3

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

    invoke-static {v0}, Lcrittercism/android/gf;->a(Lcrittercism/android/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 101
    check-cast v0, Lcrittercism/android/eq;

    iget-object v0, v0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    invoke-virtual {v0}, Lcrittercism/android/ka;->g()I

    move-result v0

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-static {p2, v1}, Lcrittercism/android/gf;->a(Lcrittercism/android/es;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Lcrittercism/android/gf;->a(Lcrittercism/android/ko;SI)V

    .line 105
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    check-cast p1, Lcrittercism/android/eq;

    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    .line 58
    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcrittercism/android/gf;->a(Lcrittercism/android/ka;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 71
    instance-of v2, p1, Lcrittercism/android/eq;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/gf;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 84
    :goto_0
    return v0

    .line 77
    :cond_1
    check-cast p1, Lcrittercism/android/eq;

    .line 78
    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 80
    instance-of v2, v0, Lcrittercism/android/ka;

    if-nez v2, :cond_2

    move v0, v1

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    check-cast v0, Lcrittercism/android/ka;

    invoke-virtual {v0}, Lcrittercism/android/ka;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 91
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 93
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/gf;->c(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 94
    return-object v1
.end method
