.class public abstract Lcrittercism/android/iu;
.super Lcrittercism/android/iw;


# instance fields
.field public final a:Lcrittercism/android/jl;


# direct methods
.method public constructor <init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;Lcrittercism/android/jl;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcrittercism/android/iw;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    .line 42
    if-nez p5, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p5, p0, Lcrittercism/android/iu;->a:Lcrittercism/android/jl;

    .line 47
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcrittercism/android/iu;->a:Lcrittercism/android/jl;

    invoke-virtual {v0}, Lcrittercism/android/jl;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
