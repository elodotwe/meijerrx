.class public final Lcrittercism/android/ga;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcrittercism/android/ga;

    invoke-direct {v0}, Lcrittercism/android/ga;-><init>()V

    sput-object v0, Lcrittercism/android/ga;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 47
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

    invoke-static {p1}, Lcrittercism/android/ga;->d(Lcrittercism/android/es;)Ljava/lang/String;

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
    .line 102
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 103
    check-cast v0, Lcrittercism/android/fk;

    invoke-virtual {v0}, Lcrittercism/android/fk;->b()I

    move-result v0

    .line 105
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

    invoke-static {v2, v1}, Lcrittercism/android/ga;->b(II)I

    move-result v1

    invoke-static {p2, v1}, Lcrittercism/android/ga;->a(Lcrittercism/android/es;I)S

    move-result v1

    int-to-short v0, v0

    invoke-static {p1, v1, v0}, Lcrittercism/android/ga;->a(Lcrittercism/android/ko;SS)V

    .line 109
    return-void
.end method

.method public final a(Lcrittercism/android/fk;)Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p1}, Lcrittercism/android/fk;->b()I

    move-result v0

    .line 96
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcrittercism/android/ga;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-static {p1}, Lcrittercism/android/ga;->e(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    iget-object v2, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 68
    instance-of v3, p1, Lcrittercism/android/fk;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    invoke-static {v3}, Lcrittercism/android/ga;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/ga;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 76
    :cond_1
    :goto_0
    return v0

    .line 75
    :cond_2
    check-cast p1, Lcrittercism/android/fk;

    .line 76
    invoke-virtual {p1}, Lcrittercism/android/fk;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcrittercism/android/ga;->a(Lcrittercism/android/fk;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 83
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 85
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/ga;->a(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 86
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/ga;->a(I)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 87
    return-object v1
.end method
