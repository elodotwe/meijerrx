.class public final Lcrittercism/android/iq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lcrittercism/android/kg;

.field public final b:Lcrittercism/android/jl;


# virtual methods
.method public final a(Lcrittercism/android/iq;)I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    iget-object v1, p1, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    invoke-virtual {v0, v1}, Lcrittercism/android/jl;->a(Lcrittercism/android/jl;)I

    move-result v0

    goto :goto_0
.end method

.method public final a()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final b()Lcrittercism/android/jl;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lcrittercism/android/iq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/iq;->a(Lcrittercism/android/iq;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 63
    instance-of v1, p1, Lcrittercism/android/iq;

    if-nez v1, :cond_1

    .line 69
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 67
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/iq;

    .line 69
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    iget-object v2, p1, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    invoke-virtual {v1, v2}, Lcrittercism/android/kg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    iget-object v2, p1, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
