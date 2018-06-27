.class public final Lcrittercism/android/gl;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcrittercism/android/gl;

    invoke-direct {v0}, Lcrittercism/android/gl;-><init>()V

    sput-object v0, Lcrittercism/android/gl;->b:Lcrittercism/android/ey;

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
    .line 65
    const/4 v0, 0x5

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 49
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 50
    check-cast p1, Lcrittercism/android/eq;

    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/ka;

    .line 52
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

    invoke-static {v0}, Lcrittercism/android/gl;->a(Lcrittercism/android/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 8

    .prologue
    .line 97
    iget-object v1, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    move-object v0, p2

    .line 98
    check-cast v0, Lcrittercism/android/eq;

    iget-object v0, v0, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/jz;

    invoke-virtual {v0}, Lcrittercism/android/jz;->h()J

    move-result-wide v6

    .line 101
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {p2, v0}, Lcrittercism/android/gl;->a(Lcrittercism/android/es;I)S

    move-result v1

    long-to-int v0, v6

    int-to-short v2, v0

    const/16 v0, 0x10

    shr-long v4, v6, v0

    long-to-int v0, v4

    int-to-short v3, v0

    const/16 v0, 0x20

    shr-long v4, v6, v0

    long-to-int v0, v4

    int-to-short v4, v0

    const/16 v0, 0x30

    shr-long/2addr v6, v0

    long-to-int v0, v6

    int-to-short v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcrittercism/android/ey;->a(Lcrittercism/android/ko;SSSSS)V

    .line 102
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
    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcrittercism/android/gl;->a(Lcrittercism/android/ka;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v1, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 72
    instance-of v2, p1, Lcrittercism/android/eq;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-static {v1}, Lcrittercism/android/gl;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    check-cast p1, Lcrittercism/android/eq;

    .line 79
    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 81
    instance-of v0, v0, Lcrittercism/android/jz;

    goto :goto_0
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 88
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 90
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/gl;->c(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 91
    return-object v1
.end method
