.class public final Lcrittercism/android/ia;
.super Lcrittercism/android/hv;


# instance fields
.field private final a:Lcrittercism/android/kg;


# direct methods
.method public constructor <init>(Lcrittercism/android/kg;)V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcrittercism/android/kg;->k()I

    move-result v1

    invoke-static {v1}, Lcrittercism/android/lb;->a(I)I

    move-result v1

    invoke-virtual {p1}, Lcrittercism/android/kg;->j()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/hv;-><init>(II)V

    .line 40
    iput-object p1, p0, Lcrittercism/android/ia;->a:Lcrittercism/android/kg;

    .line 41
    return-void
.end method


# virtual methods
.method protected final a(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 95
    check-cast p1, Lcrittercism/android/ia;

    .line 97
    iget-object v0, p0, Lcrittercism/android/ia;->a:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/ia;->a:Lcrittercism/android/kg;

    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method

.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcrittercism/android/hn;->n:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcrittercism/android/ia;->a:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->i()Lcrittercism/android/kq;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcrittercism/android/ia;->a:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->k()I

    move-result v1

    .line 75
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-static {v1}, Lcrittercism/android/lb;->a(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "utf16_size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 78
    iget v2, v0, Lcrittercism/android/kq;->c:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcrittercism/android/ia;->a:Lcrittercism/android/kg;

    invoke-virtual {v3}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 81
    :cond_0
    invoke-interface {p2, v1}, Lcrittercism/android/ko;->e(I)I

    .line 82
    invoke-interface {p2, v0}, Lcrittercism/android/ko;->a(Lcrittercism/android/kq;)V

    .line 83
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->b(I)V

    .line 84
    return-void
.end method
