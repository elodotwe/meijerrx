.class public final Lcrittercism/android/jm;
.super Lcrittercism/android/jl;


# instance fields
.field private final a:Lcrittercism/android/in;


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    invoke-virtual {v0}, Lcrittercism/android/in;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    check-cast p1, Lcrittercism/android/jm;

    iget-object v1, p1, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    invoke-virtual {v0, v1}, Lcrittercism/android/in;->a(Lcrittercism/android/in;)I

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/in;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "annotation"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v0, p1, Lcrittercism/android/jm;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    check-cast p1, Lcrittercism/android/jm;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    invoke-virtual {v0, v1}, Lcrittercism/android/in;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    invoke-virtual {v0}, Lcrittercism/android/in;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcrittercism/android/jm;->a:Lcrittercism/android/in;

    invoke-virtual {v0}, Lcrittercism/android/in;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
