.class public final Lcrittercism/android/fh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/fh$a;
    }
.end annotation


# instance fields
.field public final a:Lcrittercism/android/jg;

.field public final b:I

.field public final c:Lcrittercism/android/el;

.field public final d:Lcrittercism/android/fd;

.field final e:I

.field public f:[I

.field final g:I

.field h:Z

.field private final i:Lcrittercism/android/ek;

.field private final j:Lcrittercism/android/iz;

.field private final k:Lcrittercism/android/fh$a;


# direct methods
.method public constructor <init>(Lcrittercism/android/jg;ILcrittercism/android/ek;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p3, p0, Lcrittercism/android/fh;->i:Lcrittercism/android/ek;

    .line 123
    iput-object p1, p0, Lcrittercism/android/fh;->a:Lcrittercism/android/jg;

    .line 124
    iput v2, p0, Lcrittercism/android/fh;->b:I

    .line 125
    iput-object v3, p0, Lcrittercism/android/fh;->j:Lcrittercism/android/iz;

    .line 126
    new-instance v1, Lcrittercism/android/el;

    invoke-direct {v1, p1}, Lcrittercism/android/el;-><init>(Lcrittercism/android/jg;)V

    iput-object v1, p0, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    .line 127
    iput p2, p0, Lcrittercism/android/fh;->g:I

    .line 128
    iput-object v3, p0, Lcrittercism/android/fh;->f:[I

    .line 129
    new-array v1, v2, [Z

    aput-boolean v2, v1, v0

    iget-object v2, p1, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    invoke-virtual {v2}, Lcrittercism/android/it;->b()I

    move-result v2

    iget-object v3, p1, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    new-instance v4, Lcrittercism/android/fh$1;

    invoke-direct {v4, v1, v2, p2}, Lcrittercism/android/fh$1;-><init>([ZII)V

    invoke-virtual {v3, v4}, Lcrittercism/android/it;->a(Lcrittercism/android/iw$b;)V

    aget-boolean v1, v1, v0

    iput-boolean v1, p0, Lcrittercism/android/fh;->h:Z

    .line 131
    iget-object v1, p1, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 132
    iget-object v2, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v2

    .line 140
    mul-int/lit8 v3, v2, 0x3

    invoke-virtual {v1}, Lcrittercism/android/it;->c()I

    move-result v4

    add-int/2addr v3, v4

    .line 142
    invoke-virtual {v1}, Lcrittercism/android/it;->b()I

    move-result v1

    iget-boolean v4, p0, Lcrittercism/android/fh;->h:Z

    if-eqz v4, :cond_0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcrittercism/android/fh;->e:I

    .line 159
    new-instance v0, Lcrittercism/android/fd;

    mul-int/lit8 v1, v2, 0x3

    iget v2, p0, Lcrittercism/android/fh;->e:I

    invoke-direct {v0, p3, v3, v1, v2}, Lcrittercism/android/fd;-><init>(Lcrittercism/android/ek;III)V

    iput-object v0, p0, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    .line 161
    new-instance v0, Lcrittercism/android/fh$a;

    iget-object v1, p0, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    invoke-direct {v0, p0, v1}, Lcrittercism/android/fh$a;-><init>(Lcrittercism/android/fh;Lcrittercism/android/fd;)V

    iput-object v0, p0, Lcrittercism/android/fh;->k:Lcrittercism/android/fh$a;

    .line 167
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcrittercism/android/fh;->g:I

    goto :goto_0
.end method

.method static synthetic a(Lcrittercism/android/iw;)Lcrittercism/android/jd;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    invoke-static {p0, v0}, Lcrittercism/android/fh;->a(Lcrittercism/android/iw;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcrittercism/android/iw;Lcrittercism/android/jc;)Lcrittercism/android/jd;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 469
    iget-object v0, p0, Lcrittercism/android/iw;->e:Lcrittercism/android/jd;

    .line 471
    iget-object v1, p0, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget v1, v1, Lcrittercism/android/jf;->a:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v4

    invoke-virtual {v4}, Lcrittercism/android/jc;->e()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 482
    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-static {v1, v0}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v0

    .line 485
    :cond_0
    if-nez p1, :cond_1

    .line 489
    :goto_1
    return-object v0

    :pswitch_1
    move v1, v2

    .line 471
    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v0, p1}, Lcrittercism/android/jd;->b(Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v0

    goto :goto_1

    .line 471
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcrittercism/android/fh;->a:Lcrittercism/android/jg;

    iget-object v4, v0, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 227
    iget-object v5, p0, Lcrittercism/android/fh;->f:[I

    .line 228
    array-length v6, v5

    move v2, v3

    .line 231
    :goto_0
    if-ge v2, v6, :cond_7

    .line 232
    add-int/lit8 v0, v2, 0x1

    .line 233
    array-length v1, v5

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 234
    :goto_1
    aget v1, v5, v2

    invoke-virtual {v4, v1}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v7

    iget-object v1, p0, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    iget-object v1, v1, Lcrittercism/android/el;->a:[Lcrittercism/android/ep;

    iget v8, v7, Lcrittercism/android/is;->a:I

    aget-object v8, v1, v8

    iget-object v1, p0, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    invoke-virtual {v1, v8}, Lcrittercism/android/fd;->a(Lcrittercism/android/es;)V

    iget-object v1, p0, Lcrittercism/android/fh;->j:Lcrittercism/android/iz;

    if-eqz v1, :cond_0

    iget-object v9, p0, Lcrittercism/android/fh;->j:Lcrittercism/android/iz;

    iget v1, v7, Lcrittercism/android/is;->a:I

    invoke-virtual {v9, v1}, Lcrittercism/android/iz;->a(I)Lcrittercism/android/je;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_2
    iget-object v9, p0, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    new-instance v10, Lcrittercism/android/fb;

    iget-object v8, v8, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    invoke-direct {v10, v8, v1}, Lcrittercism/android/fb;-><init>(Lcrittercism/android/ji;Lcrittercism/android/je;)V

    invoke-virtual {v9, v10}, Lcrittercism/android/fd;->a(Lcrittercism/android/es;)V

    :cond_0
    iget-object v1, p0, Lcrittercism/android/fh;->k:Lcrittercism/android/fh$a;

    iget-object v8, p0, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    invoke-virtual {v8, v7}, Lcrittercism/android/el;->a(Lcrittercism/android/is;)Lcrittercism/android/ep;

    move-result-object v8

    iput-object v7, v1, Lcrittercism/android/fh$a;->a:Lcrittercism/android/is;

    iput-object v8, v1, Lcrittercism/android/fh$a;->b:Lcrittercism/android/ep;

    iget-object v1, v7, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    iget-object v8, p0, Lcrittercism/android/fh;->k:Lcrittercism/android/fh$a;

    invoke-virtual {v1, v8}, Lcrittercism/android/ix;->a(Lcrittercism/android/iw$b;)V

    iget-object v1, p0, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    iget-object v8, p0, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    invoke-virtual {v8, v7}, Lcrittercism/android/el;->b(Lcrittercism/android/is;)Lcrittercism/android/ep;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcrittercism/android/fd;->a(Lcrittercism/android/es;)V

    iget v8, v7, Lcrittercism/android/is;->d:I

    iget-object v1, v7, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    invoke-virtual {v1}, Lcrittercism/android/ix;->b()Lcrittercism/android/iw;

    move-result-object v9

    if-ltz v8, :cond_5

    if-eq v8, v0, :cond_5

    iget-object v1, v9, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget v1, v1, Lcrittercism/android/jf;->c:I

    const/4 v10, 0x4

    if-ne v1, v10, :cond_6

    iget-object v1, v7, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    invoke-virtual {v1}, Lcrittercism/android/ky;->a()I

    move-result v1

    const/4 v10, 0x2

    if-eq v1, v10, :cond_3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    aget v0, v5, v0

    goto :goto_1

    .line 234
    :cond_2
    iget-object v1, v9, Lcrittercism/android/iz;->a:Lcrittercism/android/je;

    goto :goto_2

    :cond_3
    iget-object v1, v7, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    invoke-virtual {v1, v3}, Lcrittercism/android/ky;->a(I)I

    move-result v1

    iget v10, v7, Lcrittercism/android/is;->d:I

    if-ne v1, v10, :cond_4

    iget-object v1, v7, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcrittercism/android/ky;->a(I)I

    move-result v1

    :cond_4
    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    iget-object v1, p0, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    iget-object v1, v1, Lcrittercism/android/el;->a:[Lcrittercism/android/ep;

    aget-object v1, v1, v8

    iget-object v7, v0, Lcrittercism/android/fd;->a:Lcrittercism/android/fe;

    iget-object v0, v7, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v8, v0, -0x1

    :try_start_0
    iget-object v0, v7, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fk;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v7, v7, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcrittercism/android/fk;->a(Lcrittercism/android/ep;)Lcrittercism/android/fk;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_5
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 234
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-reversible instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcrittercism/android/fk;

    sget-object v1, Lcrittercism/android/ev;->P:Lcrittercism/android/eu;

    iget-object v7, v9, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    sget-object v9, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    iget-object v10, p0, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    iget-object v10, v10, Lcrittercism/android/el;->a:[Lcrittercism/android/ep;

    aget-object v8, v10, v8

    invoke-direct {v0, v1, v7, v9, v8}, Lcrittercism/android/fk;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/ep;)V

    iget-object v1, p0, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    invoke-virtual {v1, v0}, Lcrittercism/android/fd;->a(Lcrittercism/android/es;)V

    goto :goto_3

    .line 236
    :cond_7
    return-void
.end method

.method public final b()V
    .locals 21

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcrittercism/android/fh;->a:Lcrittercism/android/jg;

    iget-object v6, v1, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 313
    iget-object v1, v6, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v7, v1

    .line 314
    invoke-virtual {v6}, Lcrittercism/android/it;->d()I

    move-result v1

    .line 315
    invoke-static {v1}, Lcrittercism/android/kp;->a(I)[I

    move-result-object v8

    .line 316
    invoke-static {v1}, Lcrittercism/android/kp;->a(I)[I

    move-result-object v9

    .line 318
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_0

    .line 319
    invoke-virtual {v6, v1}, Lcrittercism/android/it;->a(I)Lcrittercism/android/is;

    move-result-object v2

    .line 320
    iget v2, v2, Lcrittercism/android/is;->a:I

    invoke-static {v8, v2}, Lcrittercism/android/kp;->b([II)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_0
    new-array v10, v7, [I

    .line 324
    const/4 v2, 0x0

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lcrittercism/android/fh;->a:Lcrittercism/android/jg;

    iget v1, v1, Lcrittercism/android/jg;->b:I

    move v3, v2

    .line 337
    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    move v2, v1

    .line 352
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcrittercism/android/fh;->a:Lcrittercism/android/jg;

    iget-object v1, v11, Lcrittercism/android/jg;->d:Lcrittercism/android/ky;

    if-nez v1, :cond_8

    iget-object v1, v11, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    invoke-virtual {v1}, Lcrittercism/android/it;->d()I

    move-result v12

    new-array v13, v12, [Lcrittercism/android/ky;

    new-instance v14, Lcrittercism/android/ky;

    const/16 v1, 0xa

    invoke-direct {v14, v1}, Lcrittercism/android/ky;-><init>(I)V

    iget-object v1, v11, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    iget-object v1, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v15, v1

    const/4 v1, 0x0

    move v5, v1

    :goto_3
    if-ge v5, v15, :cond_4

    iget-object v1, v11, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    invoke-virtual {v1, v5}, Lcrittercism/android/it;->a(I)Lcrittercism/android/is;

    move-result-object v1

    iget v0, v1, Lcrittercism/android/is;->a:I

    move/from16 v16, v0

    iget-object v0, v1, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcrittercism/android/ky;->a()I

    move-result v18

    if-nez v18, :cond_2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcrittercism/android/ky;->b(I)V

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    move v4, v1

    :goto_4
    move/from16 v0, v18

    if-ge v4, v0, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcrittercism/android/ky;->a(I)I

    move-result v19

    aget-object v1, v13, v19

    if-nez v1, :cond_3

    new-instance v1, Lcrittercism/android/ky;

    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-direct {v1, v0}, Lcrittercism/android/ky;-><init>(I)V

    aput-object v1, v13, v19

    :cond_3
    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcrittercism/android/ky;->b(I)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v12, :cond_6

    aget-object v4, v13, v1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcrittercism/android/ky;->b()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcrittercism/android/lc;->L:Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v14}, Lcrittercism/android/ky;->b()V

    const/4 v1, 0x0

    iput-boolean v1, v14, Lcrittercism/android/lc;->L:Z

    iget v1, v11, Lcrittercism/android/jg;->b:I

    aget-object v1, v13, v1

    if-nez v1, :cond_7

    iget v1, v11, Lcrittercism/android/jg;->b:I

    sget-object v4, Lcrittercism/android/ky;->a:Lcrittercism/android/ky;

    aput-object v4, v13, v1

    :cond_7
    iput-object v13, v11, Lcrittercism/android/jg;->c:[Lcrittercism/android/ky;

    iput-object v14, v11, Lcrittercism/android/jg;->d:Lcrittercism/android/ky;

    :cond_8
    iget-object v1, v11, Lcrittercism/android/jg;->c:[Lcrittercism/android/ky;

    aget-object v5, v1, v2

    if-nez v5, :cond_9

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no such block: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_9
    invoke-virtual {v5}, Lcrittercism/android/ky;->a()I

    move-result v11

    .line 355
    const/4 v1, 0x0

    move v4, v1

    :goto_6
    if-ge v4, v11, :cond_13

    .line 356
    invoke-virtual {v5, v4}, Lcrittercism/android/ky;->a(I)I

    move-result v1

    .line 358
    invoke-static {v9, v1}, Lcrittercism/android/kp;->a([II)Z

    move-result v12

    if-nez v12, :cond_13

    .line 363
    invoke-static {v8, v1}, Lcrittercism/android/kp;->a([II)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 368
    invoke-virtual {v6, v1}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v12

    .line 372
    iget v12, v12, Lcrittercism/android/is;->d:I

    if-ne v12, v2, :cond_a

    .line 375
    invoke-static {v9, v1}, Lcrittercism/android/kp;->b([II)V

    move v2, v1

    .line 376
    goto/16 :goto_2

    .line 355
    :cond_a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6

    .line 396
    :pswitch_0
    const/4 v2, 0x0

    .line 398
    :goto_7
    if-eqz v2, :cond_10

    .line 399
    iget v2, v2, Lcrittercism/android/is;->a:I

    .line 403
    iget v3, v4, Lcrittercism/android/is;->d:I

    .line 405
    invoke-static {v8, v2}, Lcrittercism/android/kp;->a([II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 381
    :goto_8
    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 390
    invoke-static {v8, v2}, Lcrittercism/android/kp;->c([II)V

    .line 391
    invoke-static {v9, v2}, Lcrittercism/android/kp;->c([II)V

    .line 392
    aput v2, v10, v1

    .line 393
    add-int/lit8 v1, v1, 0x1

    .line 395
    invoke-virtual {v6, v2}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v4

    .line 396
    iget v2, v4, Lcrittercism/android/is;->d:I

    iget-object v3, v4, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    invoke-virtual {v3}, Lcrittercism/android/ky;->a()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_b

    invoke-virtual {v6, v2}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v2

    goto :goto_7

    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcrittercism/android/ky;->a(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v2

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcrittercism/android/ky;->a(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v2

    goto :goto_7

    .line 411
    :cond_c
    if-eq v3, v2, :cond_d

    if-ltz v3, :cond_d

    invoke-static {v8, v3}, Lcrittercism/android/kp;->a([II)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    .line 416
    goto :goto_8

    .line 422
    :cond_d
    iget-object v5, v4, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    .line 423
    invoke-virtual {v5}, Lcrittercism/android/ky;->a()I

    move-result v11

    .line 424
    const/4 v4, -0x1

    .line 425
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v11, :cond_f

    .line 426
    invoke-virtual {v5, v2}, Lcrittercism/android/ky;->a(I)I

    move-result v3

    .line 427
    invoke-static {v8, v3}, Lcrittercism/android/kp;->a([II)Z

    move-result v12

    if-eqz v12, :cond_e

    move v2, v3

    .line 429
    goto :goto_8

    .line 425
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    move v2, v4

    .line 433
    goto :goto_8

    .line 338
    :cond_10
    invoke-static {v8}, Lcrittercism/android/kp;->a([I)I

    move-result v2

    move v3, v1

    move v1, v2

    goto/16 :goto_1

    .line 436
    :cond_11
    if-eq v3, v7, :cond_12

    .line 438
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_12
    move-object/from16 v0, p0

    iput-object v10, v0, Lcrittercism/android/fh;->f:[I

    .line 442
    return-void

    :cond_13
    move v1, v3

    goto :goto_8

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
