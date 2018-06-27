.class public final Lcrittercism/android/ja;
.super Lcrittercism/android/iu;


# direct methods
.method public constructor <init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;Lcrittercism/android/jl;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcrittercism/android/iu;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    .line 44
    iget v0, p1, Lcrittercism/android/jf;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/iw$b;)V
    .locals 0

    .prologue
    .line 58
    invoke-interface {p1, p0}, Lcrittercism/android/iw$b;->a(Lcrittercism/android/ja;)V

    .line 59
    return-void
.end method

.method public final c()Lcrittercism/android/kn;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcrittercism/android/kk;->a:Lcrittercism/android/kk;

    return-object v0
.end method
