.class public final Lcrittercism/android/hb;
.super Lcrittercism/android/hv;


# instance fields
.field private final a:Lcrittercism/android/jn;

.field private c:[B


# direct methods
.method public constructor <init>(Lcrittercism/android/jn;)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/hv;-><init>(II)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "array == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lcrittercism/android/hb;->a:Lcrittercism/android/jn;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/hb;->c:[B

    .line 57
    return-void
.end method


# virtual methods
.method protected final a(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 74
    check-cast p1, Lcrittercism/android/hb;

    .line 76
    iget-object v0, p0, Lcrittercism/android/hb;->a:Lcrittercism/android/jn;

    iget-object v1, p1, Lcrittercism/android/hb;->a:Lcrittercism/android/jn;

    invoke-virtual {v0, v1}, Lcrittercism/android/jn;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method

.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcrittercism/android/hn;->q:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/hb;->a:Lcrittercism/android/jn;

    invoke-static {p1, v0}, Lcrittercism/android/ii;->a(Lcrittercism/android/ha;Lcrittercism/android/jl;)V

    .line 88
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Lcrittercism/android/kr;

    invoke-direct {v0}, Lcrittercism/android/kr;-><init>()V

    .line 96
    new-instance v1, Lcrittercism/android/ii;

    iget-object v2, p1, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    invoke-direct {v1, v2, v0}, Lcrittercism/android/ii;-><init>(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 98
    iget-object v2, p0, Lcrittercism/android/hb;->a:Lcrittercism/android/jn;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/ii;->a(Lcrittercism/android/jn;Z)V

    .line 99
    invoke-virtual {v0}, Lcrittercism/android/kr;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/hb;->c:[B

    .line 100
    iget-object v0, p0, Lcrittercism/android/hb;->c:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcrittercism/android/hb;->a(I)V

    .line 101
    return-void
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 3

    .prologue
    .line 106
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/hb;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 116
    new-instance v0, Lcrittercism/android/ii;

    invoke-direct {v0, p1, p2}, Lcrittercism/android/ii;-><init>(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 117
    iget-object v1, p0, Lcrittercism/android/hb;->a:Lcrittercism/android/jn;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/ii;->a(Lcrittercism/android/jn;Z)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcrittercism/android/hb;->c:[B

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->a([B)V

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcrittercism/android/hb;->a:Lcrittercism/android/jn;

    invoke-virtual {v0}, Lcrittercism/android/jn;->hashCode()I

    move-result v0

    return v0
.end method
