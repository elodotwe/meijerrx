.class public final Lcrittercism/android/hw;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/lf;
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Lcrittercism/android/kd;

.field final b:Lcrittercism/android/ih;


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    iget-object v0, p0, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    invoke-virtual {v0}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/4 v0, 0x1

    .line 132
    iget-object v1, p0, Lcrittercism/android/hw;->b:Lcrittercism/android/ih;

    iget-object v1, v1, Lcrittercism/android/ih;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/gr;

    .line 133
    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 138
    :goto_1
    iget-object v0, v0, Lcrittercism/android/gr;->a:Lcrittercism/android/gq;

    iget-object v0, v0, Lcrittercism/android/gq;->a:Lcrittercism/android/ip;

    invoke-virtual {v0}, Lcrittercism/android/ip;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcrittercism/android/hw;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    iget-object v1, p1, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v1}, Lcrittercism/android/kd;->a(Lcrittercism/android/jl;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 87
    instance-of v0, p1, Lcrittercism/android/hw;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    check-cast p1, Lcrittercism/android/hw;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    invoke-virtual {v0, v1}, Lcrittercism/android/kd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    invoke-virtual {v0}, Lcrittercism/android/kd;->hashCode()I

    move-result v0

    return v0
.end method
