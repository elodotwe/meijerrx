.class public abstract Lcrittercism/android/ew;
.super Lcrittercism/android/es;


# direct methods
.method public constructor <init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/es;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected final a(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-object v0, v0, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    invoke-virtual {v0, p0, p1}, Lcrittercism/android/ey;->a(Lcrittercism/android/es;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-object v0, v0, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    invoke-virtual {v0, p1, p0}, Lcrittercism/android/ey;->a(Lcrittercism/android/ko;Lcrittercism/android/es;)V

    .line 60
    return-void
.end method

.method public final c(I)Lcrittercism/android/es;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-virtual {v0, p1}, Lcrittercism/android/jd;->c(I)Lcrittercism/android/jd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcrittercism/android/ew;->a(Lcrittercism/android/jd;)Lcrittercism/android/es;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-object v0, v0, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    invoke-virtual {v0}, Lcrittercism/android/ey;->a()I

    move-result v0

    return v0
.end method
