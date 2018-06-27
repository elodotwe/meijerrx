.class public final Lcrittercism/android/gy;
.super Ljava/lang/Object;


# instance fields
.field a:Lcrittercism/android/ko;

.field b:Ljava/io/PrintWriter;

.field c:Ljava/lang/String;

.field d:Z

.field private final e:Lcrittercism/android/ff;

.field private final f:Lcrittercism/android/fa;

.field private final g:Lcrittercism/android/kr;

.field private final h:Lcrittercism/android/ha;

.field private final i:I

.field private final j:I

.field private final k:Lcrittercism/android/kj;

.field private final l:Z

.field private m:I

.field private n:I

.field private final o:[Lcrittercism/android/fa$b;


# direct methods
.method public constructor <init>(Lcrittercism/android/ff;Lcrittercism/android/fa;Lcrittercism/android/ha;IIZLcrittercism/android/kd;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/gy;->m:I

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcrittercism/android/gy;->n:I

    .line 111
    iput-object p1, p0, Lcrittercism/android/gy;->e:Lcrittercism/android/ff;

    .line 112
    iput-object p2, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    .line 113
    iput-object p3, p0, Lcrittercism/android/gy;->h:Lcrittercism/android/ha;

    .line 114
    invoke-virtual {p7}, Lcrittercism/android/kd;->f()Lcrittercism/android/kj;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/gy;->k:Lcrittercism/android/kj;

    .line 115
    iput-boolean p6, p0, Lcrittercism/android/gy;->l:Z

    .line 116
    iput p4, p0, Lcrittercism/android/gy;->i:I

    .line 117
    iput p5, p0, Lcrittercism/android/gy;->j:I

    .line 119
    new-instance v0, Lcrittercism/android/kr;

    invoke-direct {v0}, Lcrittercism/android/kr;-><init>()V

    iput-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    .line 120
    new-array v0, p5, [Lcrittercism/android/fa$b;

    iput-object v0, p0, Lcrittercism/android/gy;->o:[Lcrittercism/android/fa$b;

    .line 121
    return-void
.end method

.method private a(I)I
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 280
    iget-object v0, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v0

    .line 285
    :goto_0
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    invoke-virtual {v0, p1}, Lcrittercism/android/fa;->a(I)Lcrittercism/android/fa$b;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/fa$b;->a()I

    move-result v0

    iget v2, p0, Lcrittercism/android/gy;->m:I

    if-ne v0, v2, :cond_a

    .line 286
    iget-object v2, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v2, p1}, Lcrittercism/android/fa;->a(I)Lcrittercism/android/fa$b;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Lcrittercism/android/fa$b;->g()I

    move-result v3

    .line 288
    iget-object v4, p0, Lcrittercism/android/gy;->o:[Lcrittercism/android/fa$b;

    aget-object v4, v4, v3

    .line 290
    if-eq v2, v4, :cond_b

    .line 296
    iget-object v5, p0, Lcrittercism/android/gy;->o:[Lcrittercism/android/fa$b;

    aput-object v2, v5, v3

    .line 302
    invoke-virtual {v2}, Lcrittercism/android/fa$b;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 303
    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lcrittercism/android/fa$b;->a(Lcrittercism/android/fa$b;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    invoke-virtual {v4}, Lcrittercism/android/fa$b;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    iget-object v3, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v3, v3, Lcrittercism/android/kr;->b:I

    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcrittercism/android/kr;->b(I)V

    invoke-virtual {v2}, Lcrittercism/android/fa$b;->g()I

    move-result v4

    invoke-direct {p0, v4}, Lcrittercism/android/gy;->d(I)V

    iget-object v4, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v4, v4, Lcrittercism/android/kr;->b:I

    sub-int v3, v4, v3

    const-string v4, "%04x: +local restart %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcrittercism/android/gy;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Lcrittercism/android/gy;->a(Lcrittercism/android/fa$b;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    :cond_2
    move p1, v0

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {v2}, Lcrittercism/android/fa$b;->e()Lcrittercism/android/kg;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Lcrittercism/android/gy;->b(Lcrittercism/android/fa$b;)V

    move p1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v3, v3, Lcrittercism/android/kr;->b:I

    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcrittercism/android/kr;->b(I)V

    invoke-virtual {v2}, Lcrittercism/android/fa$b;->g()I

    move-result v4

    invoke-direct {p0, v4}, Lcrittercism/android/gy;->d(I)V

    invoke-virtual {v2}, Lcrittercism/android/fa$b;->d()Lcrittercism/android/kg;

    move-result-object v4

    invoke-direct {p0, v4}, Lcrittercism/android/gy;->a(Lcrittercism/android/kg;)V

    invoke-virtual {v2}, Lcrittercism/android/fa$b;->f()Lcrittercism/android/kh;

    move-result-object v4

    invoke-direct {p0, v4}, Lcrittercism/android/gy;->a(Lcrittercism/android/kh;)V

    iget-object v4, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v4, v4, Lcrittercism/android/kr;->b:I

    sub-int v3, v4, v3

    const-string v4, "%04x: +local %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcrittercism/android/gy;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Lcrittercism/android/gy;->a(Lcrittercism/android/fa$b;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    :cond_6
    move p1, v0

    goto/16 :goto_0

    .line 330
    :cond_7
    invoke-virtual {v2}, Lcrittercism/android/fa$b;->b()Lcrittercism/android/fa$a;

    move-result-object v3

    sget-object v4, Lcrittercism/android/fa$a;->c:Lcrittercism/android/fa$a;

    if-eq v3, v4, :cond_9

    .line 332
    iget-object v3, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v3, v3, Lcrittercism/android/kr;->b:I

    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcrittercism/android/kr;->b(I)V

    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v2}, Lcrittercism/android/fa$b;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Lcrittercism/android/kr;->e(I)I

    iget-object v4, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v4, v4, Lcrittercism/android/kr;->b:I

    sub-int v3, v4, v3

    const-string v4, "%04x: -local %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcrittercism/android/gy;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Lcrittercism/android/gy;->a(Lcrittercism/android/fa$b;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    :cond_9
    move p1, v0

    .line 335
    goto/16 :goto_0

    .line 337
    :cond_a
    return p1

    :cond_b
    move p1, v0

    goto/16 :goto_0
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 833
    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_1
    add-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private a(ILjava/util/ArrayList;)I
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 353
    :goto_0
    if-ge p1, v2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ff$a;

    iget v0, v0, Lcrittercism/android/ff$a;->a:I

    iget v1, p0, Lcrittercism/android/gy;->m:I

    if-ne v0, v1, :cond_0

    .line 355
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ff$a;

    invoke-direct {p0, v0}, Lcrittercism/android/gy;->a(Lcrittercism/android/ff$a;)V

    move p1, v1

    goto :goto_0

    .line 357
    :cond_0
    return p1
.end method

.method private static a(Lcrittercism/android/fa$b;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p0}, Lcrittercism/android/fa$b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Lcrittercism/android/fa$b;->d()Lcrittercism/android/kg;

    move-result-object v1

    .line 580
    if-nez v1, :cond_1

    .line 581
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {p0}, Lcrittercism/android/fa$b;->f()Lcrittercism/android/kh;

    move-result-object v1

    .line 588
    if-nez v1, :cond_2

    .line 589
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :goto_1
    invoke-virtual {p0}, Lcrittercism/android/fa$b;->e()Lcrittercism/android/kg;

    move-result-object v1

    .line 596
    if-eqz v1, :cond_0

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v1}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 583
    :cond_1
    invoke-virtual {v1}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {v1}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcrittercism/android/gy;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/gy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 135
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    iget-boolean v1, p0, Lcrittercism/android/gy;->d:Z

    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v0, p1, p2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    :cond_2
    return-void

    .line 136
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private a(Lcrittercism/android/ff$a;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 775
    iget-object v0, p1, Lcrittercism/android/ff$a;->b:Lcrittercism/android/ji;

    .line 776
    invoke-virtual {v0}, Lcrittercism/android/ji;->a()I

    move-result v0

    .line 777
    iget v2, p1, Lcrittercism/android/ff$a;->a:I

    .line 781
    iget v3, p0, Lcrittercism/android/gy;->n:I

    sub-int/2addr v0, v3

    .line 782
    iget v3, p0, Lcrittercism/android/gy;->m:I

    sub-int v3, v2, v3

    .line 784
    if-gez v3, :cond_0

    .line 785
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position entries must be in ascending address order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_0
    const/4 v2, -0x4

    if-lt v0, v2, :cond_1

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 791
    :cond_1
    invoke-direct {p0, v0}, Lcrittercism/android/gy;->b(I)V

    move v0, v1

    .line 795
    :cond_2
    invoke-static {v0, v3}, Lcrittercism/android/gy;->a(II)I

    move-result v2

    .line 797
    and-int/lit16 v4, v2, -0x100

    if-lez v4, :cond_6

    .line 798
    invoke-direct {p0, v3}, Lcrittercism/android/gy;->c(I)V

    .line 800
    invoke-static {v0, v1}, Lcrittercism/android/gy;->a(II)I

    move-result v2

    .line 802
    and-int/lit16 v3, v2, -0x100

    if-lez v3, :cond_5

    .line 803
    invoke-direct {p0, v0}, Lcrittercism/android/gy;->b(I)V

    .line 805
    invoke-static {v1, v1}, Lcrittercism/android/gy;->a(II)I

    move-result v0

    move v2, v1

    move v3, v1

    .line 809
    :goto_0
    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v4, v0}, Lcrittercism/android/kr;->b(I)V

    .line 811
    iget v0, p0, Lcrittercism/android/gy;->n:I

    add-int/2addr v0, v3

    iput v0, p0, Lcrittercism/android/gy;->n:I

    .line 812
    iget v0, p0, Lcrittercism/android/gy;->m:I

    add-int/2addr v0, v2

    iput v0, p0, Lcrittercism/android/gy;->m:I

    .line 814
    iget-object v0, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    .line 815
    :cond_3
    const-string v0, "%04x: line %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcrittercism/android/gy;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcrittercism/android/gy;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    .line 818
    :cond_4
    return-void

    :cond_5
    move v3, v0

    move v0, v2

    move v2, v1

    goto :goto_0

    :cond_6
    move v6, v2

    move v2, v3

    move v3, v0

    move v0, v6

    goto :goto_0
.end method

.method private a(Lcrittercism/android/kg;)V
    .locals 2

    .prologue
    .line 640
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcrittercism/android/gy;->h:Lcrittercism/android/ha;

    if-nez v0, :cond_1

    .line 641
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcrittercism/android/kr;->e(I)I

    .line 651
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget-object v1, p0, Lcrittercism/android/gy;->h:Lcrittercism/android/ha;

    iget-object v1, v1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    invoke-virtual {v1, p1}, Lcrittercism/android/ic;->b(Lcrittercism/android/kg;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcrittercism/android/kr;->e(I)I

    goto :goto_0
.end method

.method private a(Lcrittercism/android/kh;)V
    .locals 2

    .prologue
    .line 661
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcrittercism/android/gy;->h:Lcrittercism/android/ha;

    if-nez v0, :cond_1

    .line 662
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcrittercism/android/kr;->e(I)I

    .line 672
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget-object v1, p0, Lcrittercism/android/gy;->h:Lcrittercism/android/ha;

    iget-object v1, v1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    invoke-virtual {v1, p1}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcrittercism/android/kr;->e(I)I

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v0, :cond_a

    :cond_0
    move v1, v3

    .line 372
    :goto_0
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v4, v0, Lcrittercism/android/kr;->b:I

    .line 375
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 376
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ff$a;

    .line 377
    iget-object v0, v0, Lcrittercism/android/ff$a;->b:Lcrittercism/android/ji;

    invoke-virtual {v0}, Lcrittercism/android/ji;->a()I

    move-result v0

    iput v0, p0, Lcrittercism/android/gy;->n:I

    .line 379
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v6, p0, Lcrittercism/android/gy;->n:I

    invoke-virtual {v0, v6}, Lcrittercism/android/kr;->e(I)I

    .line 381
    if-eqz v1, :cond_2

    .line 382
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v0, v0, Lcrittercism/android/kr;->b:I

    sub-int/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "line_start: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcrittercism/android/gy;->n:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    .line 385
    :cond_2
    invoke-direct {p0}, Lcrittercism/android/gy;->b()I

    move-result v4

    .line 387
    iget-object v0, p0, Lcrittercism/android/gy;->k:Lcrittercism/android/kj;

    invoke-virtual {v0}, Lcrittercism/android/kj;->b()Lcrittercism/android/kk;

    move-result-object v6

    .line 388
    iget-object v0, v6, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v7, v0

    .line 394
    iget-boolean v0, p0, Lcrittercism/android/gy;->l:Z

    if-nez v0, :cond_11

    .line 395
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    .line 396
    invoke-virtual {v0}, Lcrittercism/android/fa$b;->g()I

    move-result v9

    if-ne v4, v9, :cond_3

    .line 397
    iget-object v8, p0, Lcrittercism/android/gy;->o:[Lcrittercism/android/fa$b;

    aput-object v0, v8, v4

    .line 401
    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 405
    :goto_1
    iget-object v4, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v4, v4, Lcrittercism/android/kr;->b:I

    .line 406
    iget-object v8, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v8, v7}, Lcrittercism/android/kr;->e(I)I

    .line 408
    if-eqz v1, :cond_5

    .line 409
    iget-object v8, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v8, v8, Lcrittercism/android/kr;->b:I

    sub-int v4, v8, v4

    const-string v8, "parameters_size: %04x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    :cond_5
    move v3, v2

    move v4, v0

    .line 417
    :goto_2
    if-ge v3, v7, :cond_d

    .line 418
    invoke-virtual {v6, v3}, Lcrittercism/android/kk;->b(I)Lcrittercism/android/kl;

    move-result-object v8

    .line 421
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v9, v0, Lcrittercism/android/kr;->b:I

    .line 423
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    .line 424
    invoke-virtual {v0}, Lcrittercism/android/fa$b;->g()I

    move-result v11

    if-ne v4, v11, :cond_6

    .line 427
    invoke-virtual {v0}, Lcrittercism/android/fa$b;->e()Lcrittercism/android/kg;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 432
    invoke-direct {p0, v5}, Lcrittercism/android/gy;->a(Lcrittercism/android/kg;)V

    .line 436
    :goto_3
    iget-object v10, p0, Lcrittercism/android/gy;->o:[Lcrittercism/android/fa$b;

    aput-object v0, v10, v4

    .line 442
    :goto_4
    if-nez v0, :cond_7

    .line 448
    invoke-direct {p0, v5}, Lcrittercism/android/gy;->a(Lcrittercism/android/kg;)V

    .line 451
    :cond_7
    if-eqz v1, :cond_9

    .line 452
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcrittercism/android/fa$b;->e()Lcrittercism/android/kg;

    move-result-object v10

    if-eqz v10, :cond_c

    :cond_8
    const-string v0, "<unnamed>"

    .line 455
    :goto_5
    iget-object v10, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v10, v10, Lcrittercism/android/kr;->b:I

    sub-int v9, v10, v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parameter "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " v"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    .line 460
    :cond_9
    invoke-virtual {v8}, Lcrittercism/android/kl;->f()I

    move-result v0

    add-int/2addr v4, v0

    .line 417
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_a
    move v1, v2

    .line 371
    goto/16 :goto_0

    .line 434
    :cond_b
    invoke-virtual {v0}, Lcrittercism/android/fa$b;->d()Lcrittercism/android/kg;

    move-result-object v10

    invoke-direct {p0, v10}, Lcrittercism/android/gy;->a(Lcrittercism/android/kg;)V

    goto :goto_3

    .line 452
    :cond_c
    invoke-virtual {v0}, Lcrittercism/android/fa$b;->d()Lcrittercism/android/kg;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 468
    :cond_d
    iget-object v0, p0, Lcrittercism/android/gy;->o:[Lcrittercism/android/fa$b;

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_f

    aget-object v3, v0, v2

    .line 469
    if-eqz v3, :cond_e

    .line 470
    invoke-virtual {v3}, Lcrittercism/android/fa$b;->e()Lcrittercism/android/kg;

    move-result-object v4

    .line 475
    if-eqz v4, :cond_e

    .line 476
    invoke-direct {p0, v3}, Lcrittercism/android/gy;->b(Lcrittercism/android/fa$b;)V

    .line 468
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 479
    :cond_f
    return-void

    :cond_10
    move-object v0, v5

    goto :goto_4

    :cond_11
    move v0, v4

    goto/16 :goto_1
.end method

.method private b()I
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcrittercism/android/gy;->j:I

    iget-object v1, p0, Lcrittercism/android/gy;->k:Lcrittercism/android/kj;

    invoke-virtual {v1}, Lcrittercism/android/kj;->b()Lcrittercism/android/kk;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/kk;->b()I

    move-result v1

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcrittercism/android/gy;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I)V
    .locals 5

    .prologue
    .line 851
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v0, v0, Lcrittercism/android/kr;->b:I

    .line 853
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcrittercism/android/kr;->b(I)V

    .line 854
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v1, p1}, Lcrittercism/android/kr;->f(I)I

    .line 855
    iget v1, p0, Lcrittercism/android/gy;->n:I

    add-int/2addr v1, p1

    iput v1, p0, Lcrittercism/android/gy;->n:I

    .line 857
    iget-object v1, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 858
    :cond_0
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v1, v1, Lcrittercism/android/kr;->b:I

    sub-int v0, v1, v0

    const-string v1, "line = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcrittercism/android/gy;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    .line 865
    :cond_1
    return-void
.end method

.method private b(Lcrittercism/android/fa$b;)V
    .locals 5

    .prologue
    .line 719
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v0, v0, Lcrittercism/android/kr;->b:I

    .line 721
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcrittercism/android/kr;->b(I)V

    .line 723
    invoke-virtual {p1}, Lcrittercism/android/fa$b;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcrittercism/android/gy;->d(I)V

    .line 724
    invoke-virtual {p1}, Lcrittercism/android/fa$b;->d()Lcrittercism/android/kg;

    move-result-object v1

    invoke-direct {p0, v1}, Lcrittercism/android/gy;->a(Lcrittercism/android/kg;)V

    .line 725
    invoke-virtual {p1}, Lcrittercism/android/fa$b;->f()Lcrittercism/android/kh;

    move-result-object v1

    invoke-direct {p0, v1}, Lcrittercism/android/gy;->a(Lcrittercism/android/kh;)V

    .line 726
    invoke-virtual {p1}, Lcrittercism/android/fa$b;->e()Lcrittercism/android/kg;

    move-result-object v1

    invoke-direct {p0, v1}, Lcrittercism/android/gy;->a(Lcrittercism/android/kg;)V

    .line 728
    iget-object v1, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 729
    :cond_0
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v1, v1, Lcrittercism/android/kr;->b:I

    sub-int v0, v1, v0

    const-string v1, "%04x: +localx %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcrittercism/android/gy;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcrittercism/android/gy;->a(Lcrittercism/android/fa$b;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    .line 737
    :cond_1
    return-void
.end method

.method private c()Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 528
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcrittercism/android/gy;->k:Lcrittercism/android/kj;

    invoke-virtual {v0}, Lcrittercism/android/kj;->b()Lcrittercism/android/kk;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    invoke-direct {p0}, Lcrittercism/android/gy;->b()I

    move-result v2

    .line 531
    new-instance v3, Ljava/util/BitSet;

    iget v0, p0, Lcrittercism/android/gy;->j:I

    sub-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 532
    iget-object v0, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v0

    .line 534
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    .line 535
    iget-object v5, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    invoke-virtual {v5, v0}, Lcrittercism/android/fa;->a(I)Lcrittercism/android/fa$b;

    move-result-object v5

    .line 536
    invoke-virtual {v5}, Lcrittercism/android/fa$b;->g()I

    move-result v6

    .line 538
    if-lt v6, v2, :cond_0

    .line 539
    sub-int v7, v6, v2

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 544
    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 548
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_1
    new-instance v0, Lcrittercism/android/gy$2;

    invoke-direct {v0, p0}, Lcrittercism/android/gy$2;-><init>(Lcrittercism/android/gy;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 562
    return-object v1
.end method

.method private c(I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 875
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v0, v0, Lcrittercism/android/kr;->b:I

    .line 877
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v1, v2}, Lcrittercism/android/kr;->b(I)V

    .line 878
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v1, p1}, Lcrittercism/android/kr;->e(I)I

    .line 879
    iget v1, p0, Lcrittercism/android/gy;->m:I

    add-int/2addr v1, p1

    iput v1, p0, Lcrittercism/android/gy;->m:I

    .line 881
    iget-object v1, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 882
    :cond_0
    iget-object v1, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    iget v1, v1, Lcrittercism/android/kr;->b:I

    sub-int v0, v1, v0

    const-string v1, "%04x: advance pc"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcrittercism/android/gy;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    .line 889
    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    .line 901
    if-gez p1, :cond_0

    .line 902
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signed value where unsigned required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v0, p1}, Lcrittercism/android/kr;->e(I)I

    .line 907
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 10

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 154
    :try_start_0
    iget-object v2, p0, Lcrittercism/android/gy;->e:Lcrittercism/android/ff;

    if-nez v2, :cond_0

    move v3, v0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcrittercism/android/gy;->e:Lcrittercism/android/ff;

    invoke-virtual {v4, v2}, Lcrittercism/android/ff;->a(I)Lcrittercism/android/ff$a;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcrittercism/android/gy;->e:Lcrittercism/android/ff;

    iget-object v2, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    move v3, v2

    goto :goto_0

    :cond_1
    new-instance v2, Lcrittercism/android/gy$1;

    invoke-direct {v2, p0}, Lcrittercism/android/gy$1;-><init>(Lcrittercism/android/gy;)V

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcrittercism/android/gy;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcrittercism/android/gy;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcrittercism/android/kr;->b(I)V

    iget-object v2, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    const-string v3, "%04x: prologue end"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcrittercism/android/gy;->m:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v2, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    iget-object v2, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v7, v2

    move v2, v0

    :goto_2
    invoke-direct {p0, v0}, Lcrittercism/android/gy;->a(I)I

    move-result v3

    invoke-direct {p0, v2, v5}, Lcrittercism/android/gy;->a(ILjava/util/ArrayList;)I

    move-result v4

    if-ge v3, v7, :cond_a

    iget-object v0, p0, Lcrittercism/android/gy;->f:Lcrittercism/android/fa;

    invoke-virtual {v0, v3}, Lcrittercism/android/fa;->a(I)Lcrittercism/android/fa$b;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/fa$b;->a()I

    move-result v0

    move v2, v0

    :goto_3
    if-ge v4, v6, :cond_9

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ff$a;

    iget v0, v0, Lcrittercism/android/ff$a;->a:I

    :goto_4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-eq v8, v1, :cond_6

    iget v9, p0, Lcrittercism/android/gy;->i:I

    if-ne v8, v9, :cond_4

    if-ne v2, v1, :cond_4

    if-eq v0, v1, :cond_6

    :cond_4
    if-ne v8, v0, :cond_5

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ff$a;

    invoke-direct {p0, v0}, Lcrittercism/android/gy;->a(Lcrittercism/android/ff$a;)V

    move v0, v3

    goto :goto_2

    :cond_5
    iget v0, p0, Lcrittercism/android/gy;->m:I

    sub-int v0, v8, v0

    invoke-direct {p0, v0}, Lcrittercism/android/gy;->c(I)V

    move v0, v3

    move v2, v4

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcrittercism/android/kr;->b(I)V

    iget-object v0, p0, Lcrittercism/android/gy;->a:Lcrittercism/android/ko;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcrittercism/android/gy;->b:Ljava/io/PrintWriter;

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcrittercism/android/gy;->a(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcrittercism/android/gy;->g:Lcrittercism/android/kr;

    invoke-virtual {v0}, Lcrittercism/android/kr;->e()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Lcrittercism/android/ku;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcrittercism/android/ku;

    move-result-object v0

    throw v0

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move v2, v1

    goto :goto_3
.end method
