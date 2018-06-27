.class public final Lcrittercism/android/kr;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/ko;
.implements Lcrittercism/android/ks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/kr$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:Z

.field public d:Ljava/util/ArrayList;

.field public e:I

.field public f:I

.field private final g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcrittercism/android/kr;-><init>(B)V

    .line 85
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 93
    const/16 v0, 0x3e8

    new-array v0, v0, [B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/kr;-><init>([BZ)V

    .line 94
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcrittercism/android/kr;-><init>([BZ)V

    .line 76
    return-void
.end method

.method private constructor <init>([BZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput-boolean p2, p0, Lcrittercism/android/kr;->g:Z

    .line 108
    iput-object p1, p0, Lcrittercism/android/kr;->a:[B

    .line 109
    iput v1, p0, Lcrittercism/android/kr;->b:I

    .line 110
    iput-boolean v1, p0, Lcrittercism/android/kr;->c:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    .line 112
    iput v1, p0, Lcrittercism/android/kr;->e:I

    .line 113
    iput v1, p0, Lcrittercism/android/kr;->f:I

    .line 114
    return-void
.end method

.method private static g()V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 537
    iget-object v0, p0, Lcrittercism/android/kr;->a:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 538
    mul-int/lit8 v0, p1, 0x2

    add-int/lit16 v0, v0, 0x3e8

    new-array v0, v0, [B

    .line 539
    iget-object v1, p0, Lcrittercism/android/kr;->a:[B

    iget v2, p0, Lcrittercism/android/kr;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iput-object v0, p0, Lcrittercism/android/kr;->a:[B

    .line 542
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 150
    iget v0, p0, Lcrittercism/android/kr;->b:I

    if-eq v0, p1, :cond_0

    .line 151
    new-instance v0, Lcrittercism/android/ku;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected cursor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; actual value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcrittercism/android/kr;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/ku;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/kr;->c()V

    .line 377
    iget-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 378
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 381
    :goto_1
    iget v1, p0, Lcrittercism/android/kr;->b:I

    if-gt v0, v1, :cond_1

    .line 382
    iget v0, p0, Lcrittercism/android/kr;->b:I

    .line 387
    :cond_1
    iget-object v1, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    new-instance v2, Lcrittercism/android/kr$a;

    add-int v3, v0, p1

    invoke-direct {v2, v0, v3, p2}, Lcrittercism/android/kr$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_2
    iget-object v1, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/kr$a;

    iget v0, v0, Lcrittercism/android/kr$a;->b:I

    goto :goto_1
.end method

.method public final a(Lcrittercism/android/kq;)V
    .locals 6

    .prologue
    .line 257
    iget v0, p1, Lcrittercism/android/kq;->c:I

    .line 258
    iget v1, p0, Lcrittercism/android/kr;->b:I

    .line 259
    add-int/2addr v0, v1

    .line 261
    iget-boolean v2, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v2, :cond_1

    .line 262
    invoke-direct {p0, v0}, Lcrittercism/android/kr;->i(I)V

    .line 268
    :cond_0
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    iget v4, p1, Lcrittercism/android/kq;->c:I

    if-ge v3, v4, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "(out.length - offset) < size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 264
    invoke-static {}, Lcrittercism/android/kr;->g()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_2
    iget-object v3, p1, Lcrittercism/android/kq;->a:[B

    iget v4, p1, Lcrittercism/android/kq;->b:I

    iget v5, p1, Lcrittercism/android/kq;->c:I

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iput v0, p0, Lcrittercism/android/kr;->b:I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcrittercism/android/kr;->c()V

    .line 366
    iget-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    new-instance v1, Lcrittercism/android/kr$a;

    iget v2, p0, Lcrittercism/android/kr;->b:I

    invoke-direct {v1, v2, p1}, Lcrittercism/android/kr$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a([B)V
    .locals 5

    .prologue
    .line 298
    array-length v0, p1

    iget v1, p0, Lcrittercism/android/kr;->b:I

    add-int v2, v1, v0

    add-int/lit8 v3, v0, 0x0

    or-int/lit8 v4, v0, 0x0

    or-int/2addr v4, v2

    if-ltz v4, :cond_0

    array-length v4, p1

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bytes.length "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; 0..!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v3, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcrittercism/android/kr;->i(I)V

    :cond_2
    const/4 v3, 0x0

    iget-object v4, p0, Lcrittercism/android/kr;->a:[B

    invoke-static {p1, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcrittercism/android/kr;->b:I

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_3
    iget-object v3, p0, Lcrittercism/android/kr;->a:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    invoke-static {}, Lcrittercism/android/kr;->g()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 158
    iget v0, p0, Lcrittercism/android/kr;->b:I

    .line 159
    add-int/lit8 v1, v0, 0x1

    .line 161
    iget-boolean v2, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v2, :cond_1

    .line 162
    invoke-direct {p0, v1}, Lcrittercism/android/kr;->i(I)V

    .line 168
    :cond_0
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 169
    iput v1, p0, Lcrittercism/android/kr;->b:I

    .line 170
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 164
    invoke-static {}, Lcrittercism/android/kr;->g()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcrittercism/android/kr;->c:Z

    return v0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcrittercism/android/kr;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/kr$a;

    iget v1, p0, Lcrittercism/android/kr;->b:I

    iget v2, v0, Lcrittercism/android/kr$a;->b:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_0

    iput v1, v0, Lcrittercism/android/kr$a;->b:I

    goto :goto_0
.end method

.method public final c(I)V
    .locals 4

    .prologue
    .line 174
    iget v0, p0, Lcrittercism/android/kr;->b:I

    .line 175
    add-int/lit8 v1, v0, 0x2

    .line 177
    iget-boolean v2, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v2, :cond_1

    .line 178
    invoke-direct {p0, v1}, Lcrittercism/android/kr;->i(I)V

    .line 184
    :cond_0
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 185
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 186
    iput v1, p0, Lcrittercism/android/kr;->b:I

    .line 187
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 180
    invoke-static {}, Lcrittercism/android/kr;->g()V

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 405
    iget v0, p0, Lcrittercism/android/kr;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcrittercism/android/kr;->f:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 407
    iget v1, p0, Lcrittercism/android/kr;->e:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final d(I)V
    .locals 5

    .prologue
    .line 191
    iget v0, p0, Lcrittercism/android/kr;->b:I

    .line 192
    add-int/lit8 v1, v0, 0x4

    .line 194
    iget-boolean v2, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v2, :cond_1

    .line 195
    invoke-direct {p0, v1}, Lcrittercism/android/kr;->i(I)V

    .line 201
    :cond_0
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    .line 202
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 203
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 204
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 205
    iput v1, p0, Lcrittercism/android/kr;->b:I

    .line 206
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v2, p0, Lcrittercism/android/kr;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 197
    invoke-static {}, Lcrittercism/android/kr;->g()V

    goto :goto_0
.end method

.method public final e(I)I
    .locals 3

    .prologue
    .line 237
    iget-boolean v0, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lcrittercism/android/kr;->b:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcrittercism/android/kr;->i(I)V

    .line 240
    :cond_0
    iget v2, p0, Lcrittercism/android/kr;->b:I

    .line 241
    ushr-int/lit8 v0, p1, 0x7

    :goto_0
    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-interface {p0, v1}, Lcrittercism/android/ks;->b(I)V

    ushr-int/lit8 v1, v0, 0x7

    move p1, v0

    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x7f

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lcrittercism/android/ks;->b(I)V

    .line 242
    iget v0, p0, Lcrittercism/android/kr;->b:I

    sub-int/2addr v0, v2

    return v0
.end method

.method public final e()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    iget v0, p0, Lcrittercism/android/kr;->b:I

    new-array v0, v0, [B

    .line 139
    iget-object v1, p0, Lcrittercism/android/kr;->a:[B

    iget v2, p0, Lcrittercism/android/kr;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcrittercism/android/kr;->b:I

    return v0
.end method

.method public final f(I)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 247
    iget-boolean v0, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v0, :cond_0

    .line 248
    iget v0, p0, Lcrittercism/android/kr;->b:I

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcrittercism/android/kr;->i(I)V

    .line 250
    :cond_0
    iget v6, p0, Lcrittercism/android/kr;->b:I

    .line 251
    shr-int/lit8 v2, p1, 0x7

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    move v3, v4

    move v5, v2

    :goto_1
    if-eqz v3, :cond_5

    if-ne v5, v0, :cond_1

    and-int/lit8 v2, v5, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x1

    if-eq v2, v3, :cond_3

    :cond_1
    move v3, v4

    :goto_2
    and-int/lit8 v7, p1, 0x7f

    if-eqz v3, :cond_4

    const/16 v2, 0x80

    :goto_3
    or-int/2addr v2, v7

    int-to-byte v2, v2

    invoke-interface {p0, v2}, Lcrittercism/android/ks;->b(I)V

    shr-int/lit8 v2, v5, 0x7

    move p1, v5

    move v5, v2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    .line 252
    :cond_5
    iget v0, p0, Lcrittercism/android/kr;->b:I

    sub-int/2addr v0, v6

    return v0
.end method

.method public final g(I)V
    .locals 2

    .prologue
    .line 303
    if-gez p1, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget v0, p0, Lcrittercism/android/kr;->b:I

    add-int/2addr v0, p1

    .line 309
    iget-boolean v1, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v1, :cond_2

    .line 310
    invoke-direct {p0, v0}, Lcrittercism/android/kr;->i(I)V

    .line 321
    :cond_1
    iput v0, p0, Lcrittercism/android/kr;->b:I

    .line 322
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v1, p0, Lcrittercism/android/kr;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 312
    invoke-static {}, Lcrittercism/android/kr;->g()V

    goto :goto_0
.end method

.method public final h(I)V
    .locals 2

    .prologue
    .line 326
    add-int/lit8 v0, p1, -0x1

    .line 328
    if-ltz p1, :cond_0

    and-int v1, v0, p1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    iget v1, p0, Lcrittercism/android/kr;->b:I

    add-int/2addr v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    .line 334
    iget-boolean v1, p0, Lcrittercism/android/kr;->g:Z

    if-eqz v1, :cond_3

    .line 335
    invoke-direct {p0, v0}, Lcrittercism/android/kr;->i(I)V

    .line 346
    :cond_2
    iput v0, p0, Lcrittercism/android/kr;->b:I

    .line 347
    :goto_0
    return-void

    .line 336
    :cond_3
    iget-object v1, p0, Lcrittercism/android/kr;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 337
    invoke-static {}, Lcrittercism/android/kr;->g()V

    goto :goto_0
.end method
