.class public final Lcrittercism/android/jd;
.super Lcrittercism/android/kv;

# interfaces
.implements Lcrittercism/android/kn;


# static fields
.field public static final a:Lcrittercism/android/jd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcrittercism/android/jd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/jd;-><init>(I)V

    sput-object v0, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 104
    return-void
.end method

.method public static a(Lcrittercism/android/jc;)Lcrittercism/android/jd;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcrittercism/android/jd;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcrittercism/android/jd;-><init>(I)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 42
    return-object v0
.end method

.method public static a(Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcrittercism/android/jd;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcrittercism/android/jd;-><init>(I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 57
    return-object v0
.end method

.method public static a(Lcrittercism/android/jc;Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcrittercism/android/jd;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcrittercism/android/jd;-><init>(I)V

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 73
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 74
    return-object v0
.end method


# virtual methods
.method public final a(IZLjava/util/BitSet;)Lcrittercism/android/jd;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v8, v0

    .line 378
    if-nez v8, :cond_0

    .line 407
    :goto_0
    return-object p0

    .line 383
    :cond_0
    new-instance v3, Lcrittercism/android/jd;

    invoke-direct {v3, v8}, Lcrittercism/android/jd;-><init>(I)V

    move v7, v1

    move v2, p2

    move v4, p1

    .line 385
    :goto_1
    if-ge v7, v8, :cond_5

    .line 386
    invoke-virtual {p0, v7}, Lcrittercism/android/jd;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/jc;

    .line 387
    if-nez p3, :cond_2

    move v5, v6

    .line 389
    :goto_2
    if-eqz v5, :cond_4

    .line 390
    invoke-virtual {v0, v4}, Lcrittercism/android/jc;->a(I)Lcrittercism/android/jc;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 391
    if-nez v2, :cond_1

    .line 392
    invoke-virtual {v0}, Lcrittercism/android/jc;->i()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    .line 398
    :cond_1
    :goto_3
    if-eqz v2, :cond_7

    move v0, v1

    .line 385
    :goto_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v0

    goto :goto_1

    .line 387
    :cond_2
    invoke-virtual {p3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_2

    .line 395
    :cond_4
    invoke-virtual {v3, v7, v0}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    goto :goto_3

    .line 403
    :cond_5
    invoke-virtual {p0}, Lcrittercism/android/jd;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    iput-boolean v1, v3, Lcrittercism/android/lc;->L:Z

    :cond_6
    move-object p0, v3

    .line 407
    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public final a(Ljava/util/BitSet;)Lcrittercism/android/jd;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    sub-int/2addr v0, v2

    .line 307
    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    .line 325
    :goto_0
    return-object v0

    .line 311
    :cond_0
    new-instance v3, Lcrittercism/android/jd;

    invoke-direct {v3, v0}, Lcrittercism/android/jd;-><init>(I)V

    move v0, v1

    move v2, v1

    .line 314
    :goto_1
    iget-object v4, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 315
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 316
    invoke-virtual {p0, v0}, Lcrittercism/android/jd;->d(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 317
    add-int/lit8 v2, v2, 0x1

    .line 314
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcrittercism/android/jd;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iput-boolean v1, v3, Lcrittercism/android/lc;->L:Z

    :cond_3
    move-object v0, v3

    .line 325
    goto :goto_0
.end method

.method public final a(I)Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->b()Lcrittercism/android/kl;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kl;->b()Lcrittercism/android/kl;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcrittercism/android/jc;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 190
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v1

    move v1, v0

    .line 116
    :goto_0
    if-ge v0, v2, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcrittercism/android/jd;->a(I)Lcrittercism/android/kl;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/kl;->f()I

    move-result v3

    add-int/2addr v1, v3

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return v1
.end method

.method public final b(I)Lcrittercism/android/jc;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcrittercism/android/jd;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/jc;

    return-object v0
.end method

.method public final b(Lcrittercism/android/jc;)Lcrittercism/android/jd;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v0

    .line 227
    new-instance v3, Lcrittercism/android/jd;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Lcrittercism/android/jd;-><init>(I)V

    move v0, v1

    .line 229
    :goto_0
    if-ge v0, v2, :cond_0

    .line 230
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcrittercism/android/jd;->d(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v3, v1, p1}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 234
    invoke-virtual {p0}, Lcrittercism/android/jd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iput-boolean v1, v3, Lcrittercism/android/lc;->L:Z

    .line 238
    :cond_1
    return-object v3
.end method

.method public final c(I)Lcrittercism/android/jd;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v0

    .line 339
    if-nez v4, :cond_0

    .line 357
    :goto_0
    return-object p0

    .line 344
    :cond_0
    new-instance v1, Lcrittercism/android/jd;

    invoke-direct {v1, v4}, Lcrittercism/android/jd;-><init>(I)V

    move v2, v3

    .line 346
    :goto_1
    if-ge v2, v4, :cond_2

    .line 347
    invoke-virtual {p0, v2}, Lcrittercism/android/jd;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/jc;

    .line 348
    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0, p1}, Lcrittercism/android/jc;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcrittercism/android/jd;->a(ILjava/lang/Object;)V

    .line 346
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcrittercism/android/jd;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    iput-boolean v3, v1, Lcrittercism/android/lc;->L:Z

    :cond_3
    move-object p0, v1

    .line 357
    goto :goto_0
.end method
