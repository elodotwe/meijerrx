.class public final Lcrittercism/android/gn;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcrittercism/android/gn;

    invoke-direct {v0}, Lcrittercism/android/gn;-><init>()V

    sput-object v0, Lcrittercism/android/gn;->b:Lcrittercism/android/ey;

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
    const/4 v0, 0x5

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-static {v1}, Lcrittercism/android/gn;->b(Lcrittercism/android/jd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcrittercism/android/gn;->f(Lcrittercism/android/es;)Ljava/lang/String;

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

    .line 98
    iget-object v2, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 99
    check-cast v0, Lcrittercism/android/eq;

    invoke-virtual {v0}, Lcrittercism/android/eq;->b()I

    move-result v3

    .line 100
    iget-object v0, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    move v0, v1

    .line 101
    :goto_0
    invoke-virtual {v2}, Lcrittercism/android/jd;->b()I

    move-result v1

    .line 103
    invoke-static {p2}, Lcrittercism/android/gn;->h(Lcrittercism/android/es;)S

    move-result v2

    int-to-short v1, v1

    int-to-short v0, v0

    invoke-static {p1, v2, v3, v1, v0}, Lcrittercism/android/gn;->a(Lcrittercism/android/ko;SISS)V

    .line 104
    return-void

    .line 100
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
    invoke-static {p1}, Lcrittercism/android/gn;->g(Lcrittercism/android/es;)Ljava/lang/String;

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
    sget-boolean v1, Lcrittercism/android/gn;->a:Z

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    instance-of v1, p1, Lcrittercism/android/eq;

    if-eqz v1, :cond_0

    .line 78
    check-cast p1, Lcrittercism/android/eq;

    .line 79
    iget-object v1, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 81
    instance-of v2, v1, Lcrittercism/android/kd;

    if-nez v2, :cond_2

    instance-of v1, v1, Lcrittercism/android/kh;

    if-eqz v1, :cond_0

    .line 86
    :cond_2
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 87
    iget-object v2, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    .line 89
    iget-object v2, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcrittercism/android/gn;->c(Lcrittercism/android/jd;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/gn;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcrittercism/android/jd;->b()I

    move-result v1

    invoke-static {v1}, Lcrittercism/android/gn;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
