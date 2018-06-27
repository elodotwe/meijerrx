.class public final Lcrittercism/android/iy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lcrittercism/android/kg;

.field public final b:Lcrittercism/android/kg;


# direct methods
.method private static a(Lcrittercism/android/kg;Lcrittercism/android/kg;)I
    .locals 1

    .prologue
    .line 79
    if-ne p0, p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 81
    :cond_0
    if-nez p0, :cond_1

    .line 82
    const/4 v0, -0x1

    goto :goto_0

    .line 83
    :cond_1
    if-nez p1, :cond_2

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0, p1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcrittercism/android/iy;)I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    invoke-static {v0, v1}, Lcrittercism/android/iy;->a(Lcrittercism/android/kg;Lcrittercism/android/kg;)I

    move-result v0

    .line 96
    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    invoke-static {v0, v1}, Lcrittercism/android/iy;->a(Lcrittercism/android/kg;Lcrittercism/android/kg;)I

    move-result v0

    goto :goto_0
.end method

.method public final a()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final b()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, Lcrittercism/android/iy;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/iy;->a(Lcrittercism/android/iy;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lcrittercism/android/iy;

    if-nez v1, :cond_1

    .line 68
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 66
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/iy;

    .line 68
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/iy;->a(Lcrittercism/android/iy;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    if-nez v0, :cond_1

    .line 119
    const-string v0, ""

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
