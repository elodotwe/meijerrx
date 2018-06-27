.class public final Lcrittercism/android/je;
.super Lcrittercism/android/lc;


# static fields
.field public static final a:Lcrittercism/android/je;


# instance fields
.field private final b:[Lcrittercism/android/jc;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcrittercism/android/je;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/je;-><init>(I)V

    sput-object v0, Lcrittercism/android/je;->a:Lcrittercism/android/je;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcrittercism/android/lc;-><init>(Z)V

    .line 49
    new-array v0, p1, [Lcrittercism/android/jc;

    iput-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    .line 50
    iput v1, p0, Lcrittercism/android/je;->c:I

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Lcrittercism/android/jc;
    .locals 2

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcrittercism/android/jc;)Lcrittercism/android/jc;
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v2, v0

    .line 200
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 201
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v0, v0, v1

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1, v0}, Lcrittercism/android/jc;->b(Lcrittercism/android/jc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    :goto_1
    return-object v0

    .line 200
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcrittercism/android/je;)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p1, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v1, v0

    .line 300
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 301
    invoke-virtual {p1, v0}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p0, v2}, Lcrittercism/android/je;->c(Lcrittercism/android/jc;)V

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 141
    iget v0, p0, Lcrittercism/android/je;->c:I

    .line 143
    if-gez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v2, v0

    move v0, v1

    .line 147
    :goto_0
    if-ge v1, v2, :cond_1

    .line 148
    iget-object v3, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    iput v0, p0, Lcrittercism/android/je;->c:I

    .line 156
    :cond_2
    return v0
.end method

.method public final b(I)Lcrittercism/android/je;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 357
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v2, v0

    .line 358
    new-instance v3, Lcrittercism/android/je;

    add-int v0, v2, p1

    invoke-direct {v3, v0}, Lcrittercism/android/je;-><init>(I)V

    move v0, v1

    .line 360
    :goto_0
    if-ge v0, v2, :cond_1

    .line 361
    iget-object v4, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v4, v4, v0

    .line 362
    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {v4, p1}, Lcrittercism/android/jc;->b(I)Lcrittercism/android/jc;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcrittercism/android/je;->c(Lcrittercism/android/jc;)V

    .line 360
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    iget v0, p0, Lcrittercism/android/je;->c:I

    iput v0, v3, Lcrittercism/android/je;->c:I

    .line 369
    invoke-virtual {p0}, Lcrittercism/android/je;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iput-boolean v1, v3, Lcrittercism/android/lc;->L:Z

    .line 373
    :cond_2
    return-object v3
.end method

.method public final b(Lcrittercism/android/jc;)V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    invoke-virtual {p1}, Lcrittercism/android/jc;->e()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/je;->c:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-void

    .line 248
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus reg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Lcrittercism/android/jc;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 263
    invoke-virtual {p0}, Lcrittercism/android/je;->f()V

    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/je;->c:I

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lcrittercism/android/jc;->e()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aput-object p1, v1, v0

    .line 275
    if-lez v0, :cond_1

    .line 276
    add-int/lit8 v1, v0, -0x1

    .line 277
    iget-object v2, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v2, v2, v1

    .line 278
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcrittercism/android/jc;->i()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 279
    iget-object v2, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcrittercism/android/jc;->i()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 284
    iget-object v1, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_2
    return-void

    .line 288
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spec.getReg() out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 56
    instance-of v1, p1, Lcrittercism/android/je;

    if-nez v1, :cond_1

    .line 81
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 60
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/je;

    .line 61
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v2, p1, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    .line 62
    iget-object v1, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v3, v1

    .line 64
    array-length v1, v2

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Lcrittercism/android/je;->b()I

    move-result v1

    invoke-virtual {p1}, Lcrittercism/android/je;->b()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v1, v0

    .line 68
    :goto_1
    if-ge v1, v3, :cond_3

    .line 69
    iget-object v4, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v4, v4, v1

    .line 70
    aget-object v5, v2, v1

    .line 72
    if-eq v4, v5, :cond_2

    .line 73
    if-eqz v4, :cond_0

    invoke-virtual {v4, v5}, Lcrittercism/android/jc;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v4, v0

    move v2, v1

    move v3, v1

    .line 90
    :goto_0
    if-ge v2, v4, :cond_1

    .line 91
    iget-object v0, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v0, v0, v2

    .line 92
    if-nez v0, :cond_0

    move v0, v1

    .line 93
    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    .line 90
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcrittercism/android/jc;->hashCode()I

    move-result v0

    goto :goto_1

    .line 96
    :cond_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    array-length v2, v1

    .line 103
    new-instance v3, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, v2, 0x19

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 105
    const/16 v1, 0x7b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    .line 108
    :goto_0
    if-ge v1, v2, :cond_2

    .line 109
    iget-object v4, p0, Lcrittercism/android/je;->b:[Lcrittercism/android/jc;

    aget-object v4, v4, v1

    .line 110
    if-eqz v4, :cond_0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
