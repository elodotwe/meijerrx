.class public abstract Lcrittercism/android/fl;
.super Lcrittercism/android/es;


# direct methods
.method public constructor <init>(Lcrittercism/android/ji;Lcrittercism/android/jd;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcrittercism/android/ev;->a:Lcrittercism/android/eu;

    invoke-direct {p0, v0, p1, p2}, Lcrittercism/android/es;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/eu;)Lcrittercism/android/es;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(I)Lcrittercism/android/es;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-virtual {v0, p1}, Lcrittercism/android/jd;->c(I)Lcrittercism/android/jd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcrittercism/android/fl;->a(Lcrittercism/android/jd;)Lcrittercism/android/es;

    move-result-object v0

    return-object v0
.end method
