.class public final Lcrittercism/android/gj;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcrittercism/android/gj;

    invoke-direct {v0}, Lcrittercism/android/gj;-><init>()V

    sput-object v0, Lcrittercism/android/gj;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 42
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
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-static {v1}, Lcrittercism/android/gj;->b(Lcrittercism/android/jd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcrittercism/android/gj;->f(Lcrittercism/android/es;)Ljava/lang/String;

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
    const/4 v1, 0x0

    .line 99
    iget-object v2, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 100
    check-cast v0, Lcrittercism/android/eq;

    invoke-virtual {v0}, Lcrittercism/android/eq;->b()I

    move-result v3

    .line 101
    iget-object v0, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    invoke-virtual {v2}, Lcrittercism/android/jd;->b()I

    move-result v1

    .line 104
    invoke-static {p2, v1}, Lcrittercism/android/gj;->a(Lcrittercism/android/es;I)S

    move-result v1

    int-to-short v2, v3

    int-to-short v0, v0

    invoke-static {p1, v1, v2, v0}, Lcrittercism/android/gj;->a(Lcrittercism/android/ko;SSS)V

    .line 105
    return-void

    .line 101
    :cond_0
    invoke-virtual {v2, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-static {p1}, Lcrittercism/android/gj;->g(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v0

    .line 57
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

    .line 70
    instance-of v1, p1, Lcrittercism/android/eq;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    check-cast p1, Lcrittercism/android/eq;

    .line 75
    invoke-virtual {p1}, Lcrittercism/android/eq;->b()I

    move-result v1

    .line 76
    iget-object v2, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 78
    invoke-static {v1}, Lcrittercism/android/gj;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    instance-of v1, v2, Lcrittercism/android/kd;

    if-nez v1, :cond_2

    instance-of v1, v2, Lcrittercism/android/kh;

    if-eqz v1, :cond_0

    .line 87
    :cond_2
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 88
    iget-object v2, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    .line 90
    iget-object v2, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcrittercism/android/gj;->c(Lcrittercism/android/jd;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/gj;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcrittercism/android/jd;->b()I

    move-result v1

    invoke-static {v1}, Lcrittercism/android/gj;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
