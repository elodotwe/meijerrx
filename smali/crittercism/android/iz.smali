.class public final Lcrittercism/android/iz;
.super Lcrittercism/android/lc;


# instance fields
.field public final a:Lcrittercism/android/je;

.field private final b:[Lcrittercism/android/je;


# virtual methods
.method public final a(I)Lcrittercism/android/je;
    .locals 2

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/iz;->b:[Lcrittercism/android/je;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
