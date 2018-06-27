.class public abstract Lcrittercism/android/fm;
.super Lcrittercism/android/es;


# direct methods
.method public constructor <init>(Lcrittercism/android/ji;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcrittercism/android/ev;->a:Lcrittercism/android/eu;

    sget-object v1, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    invoke-direct {p0, v0, p1, v1}, Lcrittercism/android/es;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/eu;)Lcrittercism/android/es;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcrittercism/android/ko;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public c(I)Lcrittercism/android/es;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-virtual {v0, p1}, Lcrittercism/android/jd;->c(I)Lcrittercism/android/jd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcrittercism/android/fm;->a(Lcrittercism/android/jd;)Lcrittercism/android/es;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
