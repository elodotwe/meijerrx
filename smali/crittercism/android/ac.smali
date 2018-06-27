.class public final Lcrittercism/android/ac;
.super Lcrittercism/android/aa;


# direct methods
.method public constructor <init>(Lcrittercism/android/v;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcrittercism/android/aa;-><init>(Lcrittercism/android/v;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected final g()Lcrittercism/android/v;
    .locals 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lcrittercism/android/aa;->f:Z

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Lcrittercism/android/y;

    invoke-direct {v0, p0}, Lcrittercism/android/y;-><init>(Lcrittercism/android/v;)V

    .line 38
    :goto_0
    return-object v0

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcrittercism/android/aa;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcrittercism/android/aa;->e:I

    if-lez v0, :cond_1

    .line 23
    new-instance v0, Lcrittercism/android/w;

    iget v1, p0, Lcrittercism/android/aa;->e:I

    invoke-direct {v0, p0, v1}, Lcrittercism/android/w;-><init>(Lcrittercism/android/v;I)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    invoke-virtual {p0}, Lcrittercism/android/ac;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/ab;->b(I)V

    .line 35
    iget-object v0, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    invoke-interface {v0}, Lcrittercism/android/ab;->b()Lcrittercism/android/v;

    move-result-object v0

    goto :goto_0
.end method
