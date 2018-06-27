.class public final Lcrittercism/android/jj;
.super Lcrittercism/android/iu;


# instance fields
.field private final f:Lcrittercism/android/kn;


# direct methods
.method public constructor <init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;Lcrittercism/android/jl;)V
    .locals 6

    .prologue
    .line 45
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/iu;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    .line 47
    iget v0, p1, Lcrittercism/android/jf;->c:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p4, :cond_1

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p4, p0, Lcrittercism/android/jj;->f:Lcrittercism/android/kn;

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/iw$b;)V
    .locals 0

    .prologue
    .line 78
    invoke-interface {p1, p0}, Lcrittercism/android/iw$b;->a(Lcrittercism/android/jj;)V

    .line 79
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcrittercism/android/iu;->a:Lcrittercism/android/jl;

    .line 62
    invoke-virtual {v0}, Lcrittercism/android/jl;->a_()Ljava/lang/String;

    move-result-object v1

    .line 63
    instance-of v2, v0, Lcrittercism/android/kg;

    if-eqz v2, :cond_0

    .line 64
    check-cast v0, Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/jj;->f:Lcrittercism/android/kn;

    invoke-static {v1}, Lcrittercism/android/jk;->a(Lcrittercism/android/kn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final c()Lcrittercism/android/kn;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcrittercism/android/jj;->f:Lcrittercism/android/kn;

    return-object v0
.end method
