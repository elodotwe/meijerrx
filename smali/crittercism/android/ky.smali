.class public final Lcrittercism/android/ky;
.super Lcrittercism/android/lc;


# static fields
.field public static final a:Lcrittercism/android/ky;


# instance fields
.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Lcrittercism/android/ky;

    invoke-direct {v0, v1}, Lcrittercism/android/ky;-><init>(I)V

    .line 38
    sput-object v0, Lcrittercism/android/ky;->a:Lcrittercism/android/ky;

    iput-boolean v1, v0, Lcrittercism/android/lc;->L:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcrittercism/android/ky;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, v1}, Lcrittercism/android/lc;-><init>(Z)V

    .line 87
    :try_start_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcrittercism/android/ky;->b:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/ky;->c:I

    .line 94
    iput-boolean v1, p0, Lcrittercism/android/ky;->d:Z

    .line 95
    return-void

    .line 90
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcrittercism/android/ky;->c:I

    return v0
.end method

.method public final a(I)I
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcrittercism/android/ky;->c:I

    if-lt p1, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ky;->b:[I

    aget v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 180
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcrittercism/android/ky;->f()V

    .line 193
    iget v0, p0, Lcrittercism/android/ky;->c:I

    if-lt p1, v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ky;->b:[I

    aput p2, v0, p1

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/ky;->d:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    if-gez p1, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcrittercism/android/ky;->f()V

    .line 360
    iget-boolean v0, p0, Lcrittercism/android/ky;->d:Z

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcrittercism/android/ky;->b:[I

    const/4 v1, 0x0

    iget v2, p0, Lcrittercism/android/ky;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/ky;->d:Z

    .line 364
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0}, Lcrittercism/android/ky;->f()V

    .line 217
    iget v2, p0, Lcrittercism/android/ky;->c:I

    iget-object v3, p0, Lcrittercism/android/ky;->b:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcrittercism/android/ky;->c:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [I

    iget-object v3, p0, Lcrittercism/android/ky;->b:[I

    iget v4, p0, Lcrittercism/android/ky;->c:I

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcrittercism/android/ky;->b:[I

    .line 219
    :cond_0
    iget-object v2, p0, Lcrittercism/android/ky;->b:[I

    iget v3, p0, Lcrittercism/android/ky;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcrittercism/android/ky;->c:I

    aput p1, v2, v3

    .line 221
    iget-boolean v2, p0, Lcrittercism/android/ky;->d:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcrittercism/android/ky;->c:I

    if-le v2, v0, :cond_1

    .line 222
    iget-object v2, p0, Lcrittercism/android/ky;->b:[I

    iget v3, p0, Lcrittercism/android/ky;->c:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    if-lt p1, v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcrittercism/android/ky;->d:Z

    .line 224
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 325
    if-gez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget v0, p0, Lcrittercism/android/ky;->c:I

    if-le p1, v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize > size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcrittercism/android/ky;->f()V

    .line 335
    iput p1, p0, Lcrittercism/android/ky;->c:I

    .line 336
    return-void
.end method

.method public final d(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 451
    iget v3, p0, Lcrittercism/android/ky;->c:I

    iget-boolean v1, p0, Lcrittercism/android/ky;->d:Z

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcrittercism/android/ky;->b:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    :cond_0
    :goto_1
    if-ltz v1, :cond_8

    :goto_2
    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    neg-int v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    move v5, v2

    :goto_3
    add-int/lit8 v4, v5, 0x1

    if-le v1, v4, :cond_6

    sub-int v4, v1, v5

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    iget-object v6, p0, Lcrittercism/android/ky;->b:[I

    aget v6, v6, v4

    if-gt p1, v6, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v5, v4

    goto :goto_3

    :cond_6
    if-eq v1, v3, :cond_7

    iget-object v3, p0, Lcrittercism/android/ky;->b:[I

    aget v3, v3, v1

    if-eq p1, v3, :cond_0

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    neg-int v1, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 136
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 116
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lcrittercism/android/ky;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcrittercism/android/ky;

    .line 122
    .end local p1    # "other":Ljava/lang/Object;
    iget-boolean v0, p0, Lcrittercism/android/ky;->d:Z

    iget-boolean v3, p1, Lcrittercism/android/ky;->d:Z

    if-ne v0, v3, :cond_0

    .line 126
    iget v0, p0, Lcrittercism/android/ky;->c:I

    iget v3, p1, Lcrittercism/android/ky;->c:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 130
    :goto_1
    iget v3, p0, Lcrittercism/android/ky;->c:I

    if-ge v0, v3, :cond_2

    .line 131
    iget-object v3, p0, Lcrittercism/android/ky;->b:[I

    aget v3, v3, v0

    iget-object v4, p1, Lcrittercism/android/ky;->b:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 136
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    move v1, v0

    .line 102
    :goto_0
    iget v2, p0, Lcrittercism/android/ky;->c:I

    if-ge v0, v2, :cond_0

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcrittercism/android/ky;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    iget v0, p0, Lcrittercism/android/ky;->c:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcrittercism/android/ky;->c:I

    if-ge v0, v2, :cond_1

    .line 147
    if-eqz v0, :cond_0

    .line 148
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    iget-object v2, p0, Lcrittercism/android/ky;->b:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
