.class public final Lcrittercism/android/fy;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcrittercism/android/fy;

    invoke-direct {v0}, Lcrittercism/android/fy;-><init>()V

    sput-object v0, Lcrittercism/android/fy;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcrittercism/android/fy;->f(Lcrittercism/android/es;)Ljava/lang/String;

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
    .line 107
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 108
    check-cast v0, Lcrittercism/android/eq;

    invoke-virtual {v0}, Lcrittercism/android/eq;->b()I

    move-result v0

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-static {v2, v1}, Lcrittercism/android/fy;->b(II)I

    move-result v1

    invoke-static {p2, v1}, Lcrittercism/android/fy;->a(Lcrittercism/android/es;I)S

    move-result v1

    int-to-short v0, v0

    invoke-static {p1, v1, v0}, Lcrittercism/android/fy;->a(Lcrittercism/android/ko;SS)V

    .line 114
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    invoke-static {p1}, Lcrittercism/android/fy;->g(Lcrittercism/android/es;)Ljava/lang/String;

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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 73
    iget-object v2, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 74
    instance-of v3, p1, Lcrittercism/android/eq;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    invoke-static {v3}, Lcrittercism/android/fy;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/fy;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    check-cast p1, Lcrittercism/android/eq;

    .line 82
    invoke-virtual {p1}, Lcrittercism/android/eq;->b()I

    move-result v2

    .line 84
    invoke-static {v2}, Lcrittercism/android/fy;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 89
    instance-of v3, v2, Lcrittercism/android/kh;

    if-nez v3, :cond_2

    instance-of v2, v2, Lcrittercism/android/ju;

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 97
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 99
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/fy;->a(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 100
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fy;->a(I)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 101
    return-object v1
.end method
