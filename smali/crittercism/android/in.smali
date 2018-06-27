.class public final Lcrittercism/android/in;
.super Lcrittercism/android/lc;

# interfaces
.implements Lcrittercism/android/lf;
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Lcrittercism/android/kh;

.field public final b:Lcrittercism/android/io;

.field private final c:Ljava/util/TreeMap;


# virtual methods
.method public final a(Lcrittercism/android/in;)I
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    iget-object v1, p1, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/kh;->a(Lcrittercism/android/jl;)I

    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    iget-object v1, p1, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    invoke-virtual {v0, v1}, Lcrittercism/android/io;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 100
    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcrittercism/android/in;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 105
    iget-object v0, p1, Lcrittercism/android/in;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 107
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/iq;

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/iq;

    .line 111
    invoke-virtual {v0, v1}, Lcrittercism/android/iq;->a(Lcrittercism/android/iq;)I

    move-result v0

    .line 112
    if-eqz v0, :cond_2

    goto :goto_0

    .line 117
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    const/4 v0, -0x1

    goto :goto_0

    .line 123
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    iget-object v0, p0, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    invoke-virtual {v0}, Lcrittercism/android/io;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v0, "-annotation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v0, p0, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    invoke-virtual {v0}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v0, " {"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const/4 v0, 0x1

    .line 142
    iget-object v1, p0, Lcrittercism/android/in;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/iq;

    .line 143
    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 148
    :goto_1
    iget-object v4, v0, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    invoke-virtual {v4}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, v0, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    invoke-virtual {v0}, Lcrittercism/android/jl;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    :cond_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcrittercism/android/kh;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcrittercism/android/in;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, Lcrittercism/android/in;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/in;->a(Lcrittercism/android/in;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 68
    instance-of v1, p1, Lcrittercism/android/in;

    if-nez v1, :cond_1

    .line 79
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 72
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/in;

    .line 74
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    iget-object v2, p1, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    invoke-virtual {v1, v2}, Lcrittercism/android/kh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    iget-object v2, p1, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    if-ne v1, v2, :cond_0

    .line 79
    iget-object v0, p0, Lcrittercism/android/in;->c:Ljava/util/TreeMap;

    iget-object v1, p1, Lcrittercism/android/in;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    invoke-virtual {v0}, Lcrittercism/android/kh;->hashCode()I

    move-result v0

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/in;->c:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    invoke-virtual {v1}, Lcrittercism/android/io;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcrittercism/android/in;->a_()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
