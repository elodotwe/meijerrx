.class public final Lcrittercism/android/fe;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field public b:Ljava/util/ArrayList;

.field public c:Z

.field public d:Z

.field e:I

.field private final f:Lcrittercism/android/ek;


# direct methods
.method public constructor <init>(Lcrittercism/android/ek;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcrittercism/android/fe;->f:Lcrittercism/android/ek;

    .line 79
    iput p3, p0, Lcrittercism/android/fe;->a:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/fe;->e:I

    .line 82
    iput-boolean v1, p0, Lcrittercism/android/fe;->c:Z

    .line 83
    iput-boolean v1, p0, Lcrittercism/android/fe;->d:Z

    .line 84
    return-void
.end method

.method private a(Lcrittercism/android/es;Lcrittercism/android/eu;)Lcrittercism/android/eu;
    .locals 1

    .prologue
    .line 505
    :goto_0
    if-eqz p2, :cond_0

    .line 506
    iget-object v0, p2, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    invoke-virtual {v0, p1}, Lcrittercism/android/ey;->b(Lcrittercism/android/es;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcrittercism/android/fe;->f:Lcrittercism/android/ek;

    invoke-static {p2, v0}, Lcrittercism/android/ev;->a(Lcrittercism/android/eu;Lcrittercism/android/ek;)Lcrittercism/android/eu;

    move-result-object p2

    goto :goto_0

    .line 513
    :cond_0
    return-object p2
.end method

.method public static a(Ljava/util/HashSet;Lcrittercism/android/es;)V
    .locals 4

    .prologue
    .line 171
    instance-of v0, p1, Lcrittercism/android/eq;

    if-eqz v0, :cond_1

    .line 172
    check-cast p1, Lcrittercism/android/eq;

    iget-object v0, p1, Lcrittercism/android/eq;->a:Lcrittercism/android/jl;

    .line 173
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    instance-of v0, p1, Lcrittercism/android/fb;

    if-eqz v0, :cond_2

    .line 175
    check-cast p1, Lcrittercism/android/fb;

    iget-object v1, p1, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    .line 176
    invoke-virtual {v1}, Lcrittercism/android/je;->b()I

    move-result v2

    .line 177
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 178
    invoke-virtual {v1, v0}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-static {p0, v3}, Lcrittercism/android/fe;->a(Ljava/util/HashSet;Lcrittercism/android/jc;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_2
    instance-of v0, p1, Lcrittercism/android/fc;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcrittercism/android/fc;

    iget-object v0, p1, Lcrittercism/android/fc;->a:Lcrittercism/android/jc;

    .line 182
    invoke-static {p0, v0}, Lcrittercism/android/fe;->a(Ljava/util/HashSet;Lcrittercism/android/jc;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/HashSet;Lcrittercism/android/jc;)V
    .locals 4

    .prologue
    .line 195
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Lcrittercism/android/jc;->g()Lcrittercism/android/iy;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcrittercism/android/iy;->a()Lcrittercism/android/kg;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Lcrittercism/android/iy;->b()Lcrittercism/android/kg;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcrittercism/android/jc;->b()Lcrittercism/android/kl;

    move-result-object v2

    .line 204
    sget-object v3, Lcrittercism/android/kl;->j:Lcrittercism/android/kl;

    if-eq v2, v3, :cond_2

    .line 205
    invoke-static {v2}, Lcrittercism/android/kh;->a(Lcrittercism/android/kl;)Lcrittercism/android/kh;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_2
    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_3
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Lcrittercism/android/jc;)Z
    .locals 1

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcrittercism/android/jc;->g()Lcrittercism/android/iy;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/iy;->a()Lcrittercism/android/kg;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcrittercism/android/es;)Lcrittercism/android/eu;
    .locals 4

    .prologue
    .line 524
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    const/4 v1, 0x0

    iget-object v2, p1, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-boolean v2, v2, Lcrittercism/android/eu;->e:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcrittercism/android/jd;->a(IZLjava/util/BitSet;)Lcrittercism/android/jd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcrittercism/android/es;->a(Lcrittercism/android/jd;)Lcrittercism/android/es;

    move-result-object v0

    iget-object v1, p1, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    invoke-direct {p0, v0, v1}, Lcrittercism/android/fe;->a(Lcrittercism/android/es;Lcrittercism/android/eu;)Lcrittercism/android/eu;

    move-result-object v0

    .line 525
    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcrittercism/android/kt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No expanded opcode for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/kt;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    return-object v0
.end method

.method private c()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    .line 682
    :goto_0
    if-ge v2, v3, :cond_2

    .line 683
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    .line 684
    instance-of v1, v0, Lcrittercism/android/fk;

    if-eqz v1, :cond_3

    .line 686
    iget-object v5, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    move-object v1, v0

    .line 690
    check-cast v1, Lcrittercism/android/fk;

    .line 692
    iget-object v6, v5, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    invoke-virtual {v6, v1}, Lcrittercism/android/ey;->a(Lcrittercism/android/fk;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 693
    iget v4, v5, Lcrittercism/android/eu;->b:I

    const/16 v6, 0x28

    if-ne v4, v6, :cond_1

    .line 698
    invoke-direct {p0, v0, v5}, Lcrittercism/android/fe;->a(Lcrittercism/android/es;Lcrittercism/android/eu;)Lcrittercism/android/eu;

    move-result-object v1

    .line 699
    if-nez v1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method too long"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    iget-object v4, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcrittercism/android/es;->a(Lcrittercism/android/eu;)Lcrittercism/android/es;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move v1, v3

    .line 746
    :goto_1
    const/4 v2, 0x1

    move v3, v1

    move v9, v2

    move v2, v0

    move v0, v9

    .line 682
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_0

    .line 728
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ep;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 737
    new-instance v4, Lcrittercism/android/fk;

    sget-object v5, Lcrittercism/android/ev;->P:Lcrittercism/android/eu;

    iget-object v6, v1, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    sget-object v7, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    iget-object v8, v1, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    invoke-direct {v4, v5, v6, v7, v8}, Lcrittercism/android/fk;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/ep;)V

    .line 740
    iget-object v5, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v4, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcrittercism/android/fk;->a(Lcrittercism/android/ep;)Lcrittercism/android/fk;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 742
    add-int/lit8 v1, v3, 0x1

    .line 743
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 731
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn (dangling)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unpaired TargetInsn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_2
    return v4

    :cond_3
    move v0, v4

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcrittercism/android/es;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 223
    iget-object v2, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-boolean v2, p0, Lcrittercism/android/fe;->c:Z

    if-nez v2, :cond_0

    iget-object v2, p1, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    invoke-virtual {v2}, Lcrittercism/android/ji;->a()I

    move-result v2

    if-ltz v2, :cond_0

    iput-boolean v1, p0, Lcrittercism/android/fe;->c:Z

    :cond_0
    iget-boolean v2, p0, Lcrittercism/android/fe;->d:Z

    if-nez v2, :cond_2

    instance-of v2, p1, Lcrittercism/android/fb;

    if-eqz v2, :cond_4

    check-cast p1, Lcrittercism/android/fb;

    iget-object v3, p1, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    invoke-virtual {v3}, Lcrittercism/android/je;->b()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v5

    invoke-static {v5}, Lcrittercism/android/fe;->a(Lcrittercism/android/jc;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcrittercism/android/fe;->d:Z

    .line 225
    :cond_2
    return-void

    .line 224
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    instance-of v2, p1, Lcrittercism/android/fc;

    if-eqz v2, :cond_1

    check-cast p1, Lcrittercism/android/fc;

    iget-object v2, p1, Lcrittercism/android/fc;->a:Lcrittercism/android/jc;

    invoke-static {v2}, Lcrittercism/android/fe;->a(Lcrittercism/android/jc;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method final a([Lcrittercism/android/eu;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 396
    iget v0, p0, Lcrittercism/android/fe;->e:I

    if-gez v0, :cond_1

    move v1, v2

    .line 403
    :goto_0
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v3, p0, Lcrittercism/android/fe;->e:I

    move v7, v2

    :goto_1
    if-ge v7, v8, :cond_7

    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    aget-object v4, p1, v7

    invoke-direct {p0, v0, v4}, Lcrittercism/android/fe;->a(Lcrittercism/android/es;Lcrittercism/android/eu;)Lcrittercism/android/eu;

    move-result-object v9

    if-nez v9, :cond_6

    invoke-direct {p0, v0}, Lcrittercism/android/fe;->b(Lcrittercism/android/es;)Lcrittercism/android/eu;

    move-result-object v4

    iget-object v4, v4, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    invoke-virtual {v4, v0}, Lcrittercism/android/ey;->c(Lcrittercism/android/es;)Ljava/util/BitSet;

    move-result-object v10

    iget-object v4, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-boolean v5, v4, Lcrittercism/android/eu;->e:Z

    iget-object v4, v0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    iget-object v4, v4, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v11, v4

    if-eqz v5, :cond_b

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-virtual {v4, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v4

    invoke-virtual {v4}, Lcrittercism/android/jc;->i()I

    move-result v4

    move v6, v4

    :goto_2
    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :goto_3
    move v5, v4

    move v4, v2

    :goto_4
    if-ge v5, v11, :cond_3

    invoke-virtual {v10, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-virtual {v12, v5}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v12

    invoke-virtual {v12}, Lcrittercism/android/jc;->i()I

    move-result v12

    add-int/2addr v4, v12

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 396
    :cond_1
    iget v0, p0, Lcrittercism/android/fe;->e:I

    move v1, v0

    goto :goto_0

    :cond_2
    move v4, v2

    .line 403
    goto :goto_3

    :cond_3
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v3, :cond_4

    move v3, v0

    :cond_4
    :goto_5
    aput-object v9, p1, v7

    :cond_5
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_6
    if-eq v4, v9, :cond_5

    goto :goto_5

    .line 404
    :cond_7
    if-ge v1, v3, :cond_a

    .line 405
    sub-int v4, v3, v1

    .line 409
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 411
    :goto_6
    if-ge v1, v5, :cond_9

    .line 419
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    .line 420
    instance-of v6, v0, Lcrittercism/android/ep;

    if-nez v6, :cond_8

    .line 425
    iget-object v6, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcrittercism/android/es;->c(I)Lcrittercism/android/es;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_9
    move v1, v3

    .line 430
    goto/16 :goto_0

    .line 432
    :cond_a
    iput v1, p0, Lcrittercism/android/fe;->e:I

    .line 433
    return-void

    :cond_b
    move v6, v2

    goto :goto_2
.end method

.method final a()[Lcrittercism/android/eu;
    .locals 4

    .prologue
    .line 375
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 376
    new-array v3, v2, [Lcrittercism/android/eu;

    .line 378
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 379
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    iget-object v0, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    aput-object v0, v3, v1

    .line 378
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 382
    :cond_0
    return-object v3
.end method

.method final b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 645
    :cond_0
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    if-gez v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v3, v0, Lcrittercism/android/es;->c:I

    invoke-virtual {v0}, Lcrittercism/android/es;->f()I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 646
    :cond_2
    invoke-direct {p0}, Lcrittercism/android/fe;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    return-void
.end method

.method final b([Lcrittercism/android/eu;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 554
    iget v0, p0, Lcrittercism/android/fe;->e:I

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 564
    :goto_0
    if-ge v6, v1, :cond_b

    .line 565
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    .line 566
    iget-object v2, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    .line 567
    aget-object v3, p1, v6

    .line 569
    if-eq v2, v3, :cond_0

    .line 570
    iget-object v2, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcrittercism/android/es;->a(Lcrittercism/android/eu;)Lcrittercism/android/es;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 578
    :cond_1
    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    mul-int/lit8 v0, v7, 0x2

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_a

    iget-object v0, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/es;

    iget-object v9, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    aget-object v1, p1, v5

    if-eqz v1, :cond_5

    move-object v3, v2

    move-object v4, v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eq v4, v9, :cond_3

    invoke-virtual {v0, v4}, Lcrittercism/android/es;->a(Lcrittercism/android/eu;)Lcrittercism/android/es;

    move-result-object v0

    :cond_3
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcrittercism/android/fe;->b(Lcrittercism/android/es;)Lcrittercism/android/eu;

    move-result-object v4

    iget-object v1, v4, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    invoke-virtual {v1, v0}, Lcrittercism/android/ey;->c(Lcrittercism/android/es;)Ljava/util/BitSet;

    move-result-object v10

    iget-object v1, v0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-virtual {v10, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    iget-object v11, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-boolean v11, v11, Lcrittercism/android/eu;->e:Z

    if-eqz v11, :cond_6

    invoke-virtual {v10, v6}, Ljava/util/BitSet;->set(I)V

    :cond_6
    invoke-virtual {v1, v10}, Lcrittercism/android/jd;->a(Ljava/util/BitSet;)Lcrittercism/android/jd;

    move-result-object v11

    iget-object v1, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-boolean v1, v1, Lcrittercism/android/eu;->e:Z

    if-eqz v1, :cond_7

    invoke-virtual {v10, v6, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_7
    iget-object v1, v11, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_8

    move-object v1, v2

    :goto_3
    iget-object v3, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-boolean v3, v3, Lcrittercism/android/eu;->e:Z

    if-eqz v3, :cond_9

    invoke-virtual {v10, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-virtual {v3, v6}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    iget-object v11, v0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    invoke-virtual {v3, v6}, Lcrittercism/android/jc;->a(I)Lcrittercism/android/jc;

    move-result-object v12

    invoke-static {v11, v3, v12}, Lcrittercism/android/es;->a(Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/fi;

    move-result-object v3

    :goto_4
    iget-object v11, v0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    iget-object v12, v0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-boolean v12, v12, Lcrittercism/android/eu;->e:Z

    invoke-virtual {v11, v6, v12, v10}, Lcrittercism/android/jd;->a(IZLjava/util/BitSet;)Lcrittercism/android/jd;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcrittercism/android/es;->a(Lcrittercism/android/jd;)Lcrittercism/android/es;

    move-result-object v0

    goto :goto_2

    :cond_8
    new-instance v1, Lcrittercism/android/ex;

    iget-object v3, v0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    invoke-direct {v1, v3, v11}, Lcrittercism/android/ex;-><init>(Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    goto :goto_3

    :cond_9
    move-object v3, v2

    goto :goto_4

    :cond_a
    iput-object v8, p0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    .line 580
    :cond_b
    return-void
.end method
