.class public final Lcrittercism/android/gb;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcrittercism/android/gb;

    invoke-direct {v0}, Lcrittercism/android/gb;-><init>()V

    sput-object v0, Lcrittercism/android/gb;->b:Lcrittercism/android/ey;

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-static {p2, v1}, Lcrittercism/android/gb;->a(Lcrittercism/android/es;I)S

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    int-to-short v0, v0

    invoke-static {p1, v1, v0}, Lcrittercism/android/gb;->a(Lcrittercism/android/ko;SS)V

    .line 92
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

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
    instance-of v3, p1, Lcrittercism/android/fi;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    invoke-static {v3}, Lcrittercism/android/gb;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/gb;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 78
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 80
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/gb;->c(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 81
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/gb;->e(I)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 82
    return-object v1
.end method
