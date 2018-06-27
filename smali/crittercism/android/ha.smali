.class public final Lcrittercism/android/ha;
.super Ljava/lang/Object;


# instance fields
.field a:Lcrittercism/android/ek;

.field final b:Lcrittercism/android/hu;

.field final c:Lcrittercism/android/hu;

.field final d:Lcrittercism/android/hu;

.field final e:Lcrittercism/android/hu;

.field final f:Lcrittercism/android/ic;

.field final g:Lcrittercism/android/ie;

.field final h:Lcrittercism/android/hy;

.field final i:Lcrittercism/android/hh;

.field final j:Lcrittercism/android/ht;

.field public final k:Lcrittercism/android/gw;

.field final l:Lcrittercism/android/hu;

.field final m:Lcrittercism/android/hu;

.field private final n:Lcrittercism/android/hj;

.field private final o:[Lcrittercism/android/hz;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lcrittercism/android/ek;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcrittercism/android/ha;->a:Lcrittercism/android/ek;

    .line 114
    new-instance v0, Lcrittercism/android/hj;

    invoke-direct {v0, p0}, Lcrittercism/android/hj;-><init>(Lcrittercism/android/ha;)V

    iput-object v0, p0, Lcrittercism/android/ha;->n:Lcrittercism/android/hj;

    .line 115
    new-instance v0, Lcrittercism/android/hu;

    sget-object v1, Lcrittercism/android/hu$a;->a:Lcrittercism/android/hu$a;

    invoke-direct {v0, v5, p0, v4, v1}, Lcrittercism/android/hu;-><init>(Ljava/lang/String;Lcrittercism/android/ha;ILcrittercism/android/hu$a;)V

    iput-object v0, p0, Lcrittercism/android/ha;->c:Lcrittercism/android/hu;

    .line 116
    new-instance v0, Lcrittercism/android/hu;

    const-string v1, "word_data"

    sget-object v2, Lcrittercism/android/hu$a;->b:Lcrittercism/android/hu$a;

    invoke-direct {v0, v1, p0, v4, v2}, Lcrittercism/android/hu;-><init>(Ljava/lang/String;Lcrittercism/android/ha;ILcrittercism/android/hu$a;)V

    iput-object v0, p0, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    .line 117
    new-instance v0, Lcrittercism/android/hu;

    const-string v1, "string_data"

    sget-object v2, Lcrittercism/android/hu$a;->c:Lcrittercism/android/hu$a;

    invoke-direct {v0, v1, p0, v3, v2}, Lcrittercism/android/hu;-><init>(Ljava/lang/String;Lcrittercism/android/ha;ILcrittercism/android/hu$a;)V

    iput-object v0, p0, Lcrittercism/android/ha;->e:Lcrittercism/android/hu;

    .line 119
    new-instance v0, Lcrittercism/android/hu;

    sget-object v1, Lcrittercism/android/hu$a;->a:Lcrittercism/android/hu$a;

    invoke-direct {v0, v5, p0, v3, v1}, Lcrittercism/android/hu;-><init>(Ljava/lang/String;Lcrittercism/android/ha;ILcrittercism/android/hu$a;)V

    iput-object v0, p0, Lcrittercism/android/ha;->l:Lcrittercism/android/hu;

    .line 120
    new-instance v0, Lcrittercism/android/hu;

    const-string v1, "byte_data"

    sget-object v2, Lcrittercism/android/hu$a;->b:Lcrittercism/android/hu$a;

    invoke-direct {v0, v1, p0, v3, v2}, Lcrittercism/android/hu;-><init>(Ljava/lang/String;Lcrittercism/android/ha;ILcrittercism/android/hu$a;)V

    iput-object v0, p0, Lcrittercism/android/ha;->m:Lcrittercism/android/hu;

    .line 121
    new-instance v0, Lcrittercism/android/ic;

    invoke-direct {v0, p0}, Lcrittercism/android/ic;-><init>(Lcrittercism/android/ha;)V

    iput-object v0, p0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    .line 122
    new-instance v0, Lcrittercism/android/ie;

    invoke-direct {v0, p0}, Lcrittercism/android/ie;-><init>(Lcrittercism/android/ha;)V

    iput-object v0, p0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 123
    new-instance v0, Lcrittercism/android/hy;

    invoke-direct {v0, p0}, Lcrittercism/android/hy;-><init>(Lcrittercism/android/ha;)V

    iput-object v0, p0, Lcrittercism/android/ha;->h:Lcrittercism/android/hy;

    .line 124
    new-instance v0, Lcrittercism/android/hh;

    invoke-direct {v0, p0}, Lcrittercism/android/hh;-><init>(Lcrittercism/android/ha;)V

    iput-object v0, p0, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    .line 125
    new-instance v0, Lcrittercism/android/ht;

    invoke-direct {v0, p0}, Lcrittercism/android/ht;-><init>(Lcrittercism/android/ha;)V

    iput-object v0, p0, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    .line 126
    new-instance v0, Lcrittercism/android/gw;

    invoke-direct {v0, p0}, Lcrittercism/android/gw;-><init>(Lcrittercism/android/ha;)V

    iput-object v0, p0, Lcrittercism/android/ha;->k:Lcrittercism/android/gw;

    .line 127
    new-instance v0, Lcrittercism/android/hu;

    const-string v1, "map"

    sget-object v2, Lcrittercism/android/hu$a;->a:Lcrittercism/android/hu$a;

    invoke-direct {v0, v1, p0, v4, v2}, Lcrittercism/android/hu;-><init>(Ljava/lang/String;Lcrittercism/android/ha;ILcrittercism/android/hu$a;)V

    iput-object v0, p0, Lcrittercism/android/ha;->d:Lcrittercism/android/hu;

    .line 133
    const/16 v0, 0xd

    new-array v0, v0, [Lcrittercism/android/hz;

    const/4 v1, 0x0

    iget-object v2, p0, Lcrittercism/android/ha;->n:Lcrittercism/android/hj;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcrittercism/android/ha;->h:Lcrittercism/android/hy;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    iget-object v2, p0, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcrittercism/android/ha;->k:Lcrittercism/android/gw;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcrittercism/android/ha;->c:Lcrittercism/android/hu;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcrittercism/android/ha;->e:Lcrittercism/android/hu;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcrittercism/android/ha;->m:Lcrittercism/android/hu;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcrittercism/android/ha;->l:Lcrittercism/android/hu;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcrittercism/android/ha;->d:Lcrittercism/android/hu;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcrittercism/android/ha;->o:[Lcrittercism/android/hz;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/ha;->p:I

    .line 139
    const/16 v0, 0x4f

    iput v0, p0, Lcrittercism/android/ha;->q:I

    .line 140
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcrittercism/android/ha;->p:I

    if-gez v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget v0, p0, Lcrittercism/android/ha;->p:I

    return v0
.end method

.method final a(Lcrittercism/android/jl;)V
    .locals 2

    .prologue
    .line 444
    instance-of v0, p1, Lcrittercism/android/kg;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    check-cast p1, Lcrittercism/android/kg;

    invoke-virtual {v0, p1}, Lcrittercism/android/ic;->a(Lcrittercism/android/kg;)Lcrittercism/android/ib;

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    instance-of v0, p1, Lcrittercism/android/kh;

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    check-cast p1, Lcrittercism/android/kh;

    invoke-virtual {v0, p1}, Lcrittercism/android/ie;->a(Lcrittercism/android/kh;)Lcrittercism/android/id;

    goto :goto_0

    .line 448
    :cond_2
    instance-of v0, p1, Lcrittercism/android/jo;

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    check-cast p1, Lcrittercism/android/jo;

    invoke-virtual {v0, p1}, Lcrittercism/android/ht;->a(Lcrittercism/android/jo;)Lcrittercism/android/hs;

    goto :goto_0

    .line 450
    :cond_3
    instance-of v0, p1, Lcrittercism/android/ju;

    if-eqz v0, :cond_4

    .line 451
    iget-object v0, p0, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    check-cast p1, Lcrittercism/android/ju;

    invoke-virtual {v0, p1}, Lcrittercism/android/hh;->a(Lcrittercism/android/ju;)Lcrittercism/android/hg;

    goto :goto_0

    .line 452
    :cond_4
    instance-of v0, p1, Lcrittercism/android/jt;

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, p0, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    check-cast p1, Lcrittercism/android/jt;

    invoke-virtual {p1}, Lcrittercism/android/jt;->f()Lcrittercism/android/ju;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/hh;->a(Lcrittercism/android/ju;)Lcrittercism/android/hg;

    goto :goto_0

    .line 454
    :cond_5
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcrittercism/android/kr;
    .locals 11

    .prologue
    const/16 v10, 0x14

    const/16 v9, 0xc

    const/4 v4, 0x0

    .line 502
    iget-object v2, p0, Lcrittercism/android/ha;->k:Lcrittercism/android/gw;

    invoke-virtual {v2}, Lcrittercism/android/gw;->f()V

    .line 503
    iget-object v2, p0, Lcrittercism/android/ha;->l:Lcrittercism/android/hu;

    invoke-virtual {v2}, Lcrittercism/android/hu;->f()V

    .line 504
    iget-object v2, p0, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    invoke-virtual {v2}, Lcrittercism/android/hu;->f()V

    .line 505
    iget-object v2, p0, Lcrittercism/android/ha;->m:Lcrittercism/android/hu;

    invoke-virtual {v2}, Lcrittercism/android/hu;->f()V

    .line 506
    iget-object v2, p0, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    invoke-virtual {v2}, Lcrittercism/android/ht;->f()V

    .line 507
    iget-object v2, p0, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    invoke-virtual {v2}, Lcrittercism/android/hh;->f()V

    .line 508
    iget-object v2, p0, Lcrittercism/android/ha;->h:Lcrittercism/android/hy;

    invoke-virtual {v2}, Lcrittercism/android/hy;->f()V

    .line 509
    iget-object v2, p0, Lcrittercism/android/ha;->c:Lcrittercism/android/hu;

    invoke-virtual {v2}, Lcrittercism/android/hu;->f()V

    .line 510
    iget-object v2, p0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    invoke-virtual {v2}, Lcrittercism/android/ie;->f()V

    .line 511
    iget-object v2, p0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    invoke-virtual {v2}, Lcrittercism/android/ic;->f()V

    .line 512
    iget-object v2, p0, Lcrittercism/android/ha;->e:Lcrittercism/android/hu;

    invoke-virtual {v2}, Lcrittercism/android/hu;->f()V

    .line 513
    iget-object v2, p0, Lcrittercism/android/ha;->n:Lcrittercism/android/hj;

    invoke-virtual {v2}, Lcrittercism/android/hj;->f()V

    .line 517
    iget-object v2, p0, Lcrittercism/android/ha;->o:[Lcrittercism/android/hz;

    array-length v6, v2

    move v5, v4

    move v2, v4

    .line 520
    :goto_0
    if-ge v5, v6, :cond_5

    .line 521
    iget-object v3, p0, Lcrittercism/android/ha;->o:[Lcrittercism/android/hz;

    aget-object v3, v3, v5

    .line 522
    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fileOffset < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget v7, v3, Lcrittercism/android/hz;->c:I

    if-ltz v7, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "fileOffset already set"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget v7, v3, Lcrittercism/android/hz;->b:I

    add-int/lit8 v7, v7, -0x1

    add-int v8, v2, v7

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v8

    iput v7, v3, Lcrittercism/android/hz;->c:I

    .line 523
    if-ge v7, v2, :cond_2

    .line 524
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bogus placement for section "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcrittercism/android/ha;->d:Lcrittercism/android/hu;

    if-ne v3, v2, :cond_3

    .line 534
    iget-object v2, p0, Lcrittercism/android/ha;->o:[Lcrittercism/android/hz;

    iget-object v8, p0, Lcrittercism/android/ha;->d:Lcrittercism/android/hu;

    invoke-static {v2, v8}, Lcrittercism/android/ho;->a([Lcrittercism/android/hz;Lcrittercism/android/hu;)V

    .line 535
    iget-object v2, p0, Lcrittercism/android/ha;->d:Lcrittercism/android/hu;

    invoke-virtual {v2}, Lcrittercism/android/hu;->f()V

    .line 538
    :cond_3
    instance-of v2, v3, Lcrittercism/android/hu;

    if-eqz v2, :cond_4

    .line 543
    move-object v0, v3

    check-cast v0, Lcrittercism/android/hu;

    move-object v2, v0

    invoke-virtual {v2}, Lcrittercism/android/hu;->d()V

    .line 546
    :cond_4
    invoke-virtual {v3}, Lcrittercism/android/hz;->c_()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int v3, v7, v2

    .line 520
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v3

    goto :goto_0

    .line 547
    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...while writing section "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcrittercism/android/ku;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcrittercism/android/ku;

    move-result-object v2

    throw v2

    .line 555
    :cond_5
    iput v2, p0, Lcrittercism/android/ha;->p:I

    .line 556
    iget v2, p0, Lcrittercism/android/ha;->p:I

    new-array v3, v2, [B

    .line 557
    new-instance v5, Lcrittercism/android/kr;

    invoke-direct {v5, v3}, Lcrittercism/android/kr;-><init>([B)V

    .line 559
    :goto_1
    if-ge v4, v6, :cond_8

    .line 565
    :try_start_1
    iget-object v2, p0, Lcrittercism/android/ha;->o:[Lcrittercism/android/hz;

    aget-object v2, v2, v4

    .line 566
    invoke-virtual {v2}, Lcrittercism/android/hz;->e()I

    move-result v7

    iget v8, v5, Lcrittercism/android/kr;->b:I

    sub-int/2addr v7, v8

    .line 567
    if-gez v7, :cond_6

    .line 568
    new-instance v2, Lcrittercism/android/ku;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "excess write of "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcrittercism/android/ku;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    :catch_1
    move-exception v2

    .line 575
    instance-of v3, v2, Lcrittercism/android/ku;

    if-eqz v3, :cond_7

    .line 576
    check-cast v2, Lcrittercism/android/ku;

    .line 580
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "...while writing section "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcrittercism/android/ku;->a(Ljava/lang/String;)V

    .line 581
    throw v2

    .line 571
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Lcrittercism/android/hz;->e()I

    move-result v7

    iget v8, v5, Lcrittercism/android/kr;->b:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcrittercism/android/kr;->g(I)V

    .line 572
    invoke-virtual {v2, v5}, Lcrittercism/android/hz;->c(Lcrittercism/android/ko;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 563
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 578
    :cond_7
    new-instance v3, Lcrittercism/android/ku;

    invoke-direct {v3, v2}, Lcrittercism/android/ku;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_2

    .line 585
    :cond_8
    iget v2, v5, Lcrittercism/android/kr;->b:I

    iget v4, p0, Lcrittercism/android/ha;->p:I

    if-eq v2, v4, :cond_9

    .line 586
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "foreshortened write"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 591
    :cond_9
    :try_start_3
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    const/16 v4, 0x20

    array-length v6, v3

    add-int/lit8 v6, v6, -0x20

    invoke-virtual {v2, v3, v4, v6}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v4, 0xc

    const/16 v6, 0x14

    :try_start_4
    invoke-virtual {v2, v3, v4, v6}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v2

    if-eq v2, v10, :cond_a

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unexpected digest write: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/security/DigestException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 592
    :cond_a
    new-instance v2, Ljava/util/zip/Adler32;

    invoke-direct {v2}, Ljava/util/zip/Adler32;-><init>()V

    array-length v4, v3

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {v2, v3, v9, v4}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v2}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v6

    long-to-int v2, v6

    const/16 v4, 0x8

    int-to-byte v6, v2

    aput-byte v6, v3, v4

    const/16 v4, 0x9

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xa

    shr-int/lit8 v6, v2, 0x10

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    const/16 v4, 0xb

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 594
    return-object v5
.end method
