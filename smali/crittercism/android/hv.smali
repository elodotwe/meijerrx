.class public abstract Lcrittercism/android/hv;
.super Lcrittercism/android/hm;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:I

.field final b:I

.field private c:Lcrittercism/android/hz;

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Lcrittercism/android/hm;-><init>()V

    .line 71
    invoke-static {p1}, Lcrittercism/android/hz;->a(I)V

    .line 73
    if-ge p2, v1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput p1, p0, Lcrittercism/android/hv;->b:I

    .line 78
    iput p2, p0, Lcrittercism/android/hv;->a:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/hv;->c:Lcrittercism/android/hz;

    .line 80
    iput v1, p0, Lcrittercism/android/hv;->d:I

    .line 81
    return-void
.end method

.method public static b(Lcrittercism/android/hv;)I
    .locals 1

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/hv;->d()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 137
    if-gez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget v0, p0, Lcrittercism/android/hv;->a:I

    if-ltz v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize already set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iput p1, p0, Lcrittercism/android/hv;->a:I

    .line 146
    return-void
.end method

.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 3

    .prologue
    .line 165
    iget v0, p0, Lcrittercism/android/hv;->b:I

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->h(I)V

    .line 168
    :try_start_0
    iget v0, p0, Lcrittercism/android/hv;->a:I

    if-gez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while writing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcrittercism/android/ku;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcrittercism/android/ku;

    move-result-object v0

    throw v0

    .line 172
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcrittercism/android/hv;->d()I

    move-result v0

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->a(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    invoke-virtual {p0, p1, p2}, Lcrittercism/android/hv;->a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 179
    return-void
.end method

.method protected a(Lcrittercism/android/hz;I)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method protected abstract a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
.end method

.method public final b(Lcrittercism/android/hz;I)I
    .locals 2

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addedTo == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    if-gez p2, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Lcrittercism/android/hv;->c:Lcrittercism/android/hz;

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already written"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    iget v0, p0, Lcrittercism/android/hv;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 237
    add-int v1, p2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    .line 239
    iput-object p1, p0, Lcrittercism/android/hv;->c:Lcrittercism/android/hz;

    .line 240
    iput v0, p0, Lcrittercism/android/hv;->d:I

    .line 242
    invoke-virtual {p0, p1, v0}, Lcrittercism/android/hv;->a(Lcrittercism/android/hz;I)V

    .line 244
    return v0
.end method

.method public final b_()I
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcrittercism/android/hv;->a:I

    if-gez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeSize is unknown"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget v0, p0, Lcrittercism/android/hv;->a:I

    return v0
.end method

.method public final c(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 115
    if-ne p0, p1, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/hv;->a()Lcrittercism/android/hn;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcrittercism/android/hv;->a()Lcrittercism/android/hn;

    move-result-object v1

    .line 122
    if-eq v0, v1, :cond_1

    .line 123
    invoke-virtual {v0, v1}, Lcrittercism/android/hn;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcrittercism/android/hv;->a(Lcrittercism/android/hv;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lcrittercism/android/hv;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/hv;->c(Lcrittercism/android/hv;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 204
    iget v0, p0, Lcrittercism/android/hv;->d:I

    if-gez v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "offset not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcrittercism/android/hv;->c:Lcrittercism/android/hz;

    iget v1, p0, Lcrittercism/android/hv;->d:I

    invoke-virtual {v0, v1}, Lcrittercism/android/hz;->b(I)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcrittercism/android/hv;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 104
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 96
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/hv;

    .line 97
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0}, Lcrittercism/android/hv;->a()Lcrittercism/android/hn;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Lcrittercism/android/hv;->a()Lcrittercism/android/hn;

    move-result-object v3

    .line 100
    if-eq v2, v3, :cond_2

    move v0, v1

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0, p1}, Lcrittercism/android/hv;->a(Lcrittercism/android/hv;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcrittercism/android/hv;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
