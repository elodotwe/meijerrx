.class public final Lcrittercism/android/hr;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/lf;
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Lcrittercism/android/kd;

.field b:Lcrittercism/android/gq;


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    invoke-virtual {v1}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/hr;->b:Lcrittercism/android/gq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcrittercism/android/hr;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    iget-object v1, p1, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v1}, Lcrittercism/android/kd;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 63
    instance-of v0, p1, Lcrittercism/android/hr;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 67
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    check-cast p1, Lcrittercism/android/hr;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v1}, Lcrittercism/android/kd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    invoke-virtual {v0}, Lcrittercism/android/kd;->hashCode()I

    move-result v0

    return v0
.end method
