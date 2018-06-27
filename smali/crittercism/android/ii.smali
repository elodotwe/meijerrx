.class public final Lcrittercism/android/ii;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcrittercism/android/ha;

.field private final b:Lcrittercism/android/ko;


# direct methods
.method public constructor <init>(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iput-object p1, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    .line 118
    iput-object p2, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    .line 119
    return-void
.end method

.method public static a(Lcrittercism/android/jl;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    invoke-static {p0}, Lcrittercism/android/ii;->c(Lcrittercism/android/jl;)I

    move-result v0

    .line 368
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 369
    const-string v0, "null"

    .line 378
    :goto_0
    return-object v0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-virtual {p0}, Lcrittercism/android/jl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Lcrittercism/android/jl;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IJ)V
    .locals 4

    .prologue
    .line 427
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 428
    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 439
    iget-object v1, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    add-int/lit8 v2, v0, -0x1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v2, p1

    invoke-interface {v1, v2}, Lcrittercism/android/ko;->b(I)V

    .line 442
    :goto_0
    if-lez v0, :cond_1

    .line 443
    iget-object v1, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    long-to-int v2, p2

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lcrittercism/android/ko;->b(I)V

    .line 444
    const/16 v1, 0x8

    shr-long/2addr p2, v1

    .line 445
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 447
    :cond_1
    return-void
.end method

.method public static a(Lcrittercism/android/ha;Lcrittercism/android/in;)V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 494
    iget-object v1, p0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    .line 496
    invoke-virtual {p1}, Lcrittercism/android/in;->b()Lcrittercism/android/kh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcrittercism/android/ie;->a(Lcrittercism/android/kh;)Lcrittercism/android/id;

    .line 498
    invoke-virtual {p1}, Lcrittercism/android/in;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/iq;

    .line 499
    invoke-virtual {v0}, Lcrittercism/android/iq;->a()Lcrittercism/android/kg;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcrittercism/android/ic;->a(Lcrittercism/android/kg;)Lcrittercism/android/ib;

    .line 500
    invoke-virtual {v0}, Lcrittercism/android/iq;->b()Lcrittercism/android/jl;

    move-result-object v0

    invoke-static {p0, v0}, Lcrittercism/android/ii;->a(Lcrittercism/android/ha;Lcrittercism/android/jl;)V

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method public static a(Lcrittercism/android/ha;Lcrittercism/android/jl;)V
    .locals 4

    .prologue
    .line 515
    instance-of v0, p1, Lcrittercism/android/jm;

    if-eqz v0, :cond_1

    .line 516
    check-cast p1, Lcrittercism/android/jm;

    invoke-virtual {p1}, Lcrittercism/android/jm;->b()Lcrittercism/android/in;

    move-result-object v0

    invoke-static {p0, v0}, Lcrittercism/android/ii;->a(Lcrittercism/android/ha;Lcrittercism/android/in;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    instance-of v0, p1, Lcrittercism/android/jn;

    if-eqz v0, :cond_2

    .line 518
    check-cast p1, Lcrittercism/android/jn;

    invoke-virtual {p1}, Lcrittercism/android/jn;->b()Lcrittercism/android/jn$a;

    move-result-object v1

    .line 519
    iget-object v0, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v0

    .line 520
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    .line 521
    invoke-virtual {v1, v0}, Lcrittercism/android/jn$a;->a(I)Lcrittercism/android/jl;

    move-result-object v3

    invoke-static {p0, v3}, Lcrittercism/android/ii;->a(Lcrittercism/android/ha;Lcrittercism/android/jl;)V

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 524
    :cond_2
    invoke-virtual {p0, p1}, Lcrittercism/android/ha;->a(Lcrittercism/android/jl;)V

    goto :goto_0
.end method

.method private b(IJ)V
    .locals 6

    .prologue
    .line 458
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    .line 459
    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 467
    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long v2, p2, v1

    .line 473
    iget-object v1, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    add-int/lit8 v4, v0, -0x1

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v4, p1

    invoke-interface {v1, v4}, Lcrittercism/android/ko;->b(I)V

    .line 476
    :goto_0
    if-lez v0, :cond_1

    .line 477
    iget-object v1, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-interface {v1, v4}, Lcrittercism/android/ko;->b(I)V

    .line 478
    const/16 v1, 0x8

    shr-long/2addr v2, v1

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 481
    :cond_1
    return-void
.end method

.method private b(Lcrittercism/android/jl;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {p1}, Lcrittercism/android/ii;->c(Lcrittercism/android/jl;)I

    move-result v1

    .line 130
    packed-switch v1, :pswitch_data_0

    .line 202
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_1
    check-cast p1, Lcrittercism/android/ka;

    invoke-virtual {p1}, Lcrittercism/android/ka;->h()J

    move-result-wide v2

    .line 136
    const/16 v0, 0x3f

    shr-long v4, v2, v0

    xor-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x41

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    iget-object v4, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    add-int/lit8 v5, v0, -0x1

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v1, v5

    invoke-interface {v4, v1}, Lcrittercism/android/ko;->b(I)V

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    long-to-int v4, v2

    int-to-byte v4, v4

    invoke-interface {v1, v4}, Lcrittercism/android/ko;->b(I)V

    const/16 v1, 0x8

    shr-long/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 140
    :pswitch_2
    check-cast p1, Lcrittercism/android/ka;

    invoke-virtual {p1}, Lcrittercism/android/ka;->h()J

    move-result-wide v2

    .line 141
    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->a(IJ)V

    .line 199
    :cond_0
    :goto_1
    return-void

    .line 146
    :pswitch_3
    check-cast p1, Lcrittercism/android/jv;

    invoke-virtual {p1}, Lcrittercism/android/jv;->h()J

    move-result-wide v2

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    .line 147
    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->b(IJ)V

    goto :goto_1

    .line 151
    :pswitch_4
    check-cast p1, Lcrittercism/android/js;

    invoke-virtual {p1}, Lcrittercism/android/js;->h()J

    move-result-wide v2

    .line 152
    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->b(IJ)V

    goto :goto_1

    .line 156
    :pswitch_5
    iget-object v0, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    iget-object v0, v0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    check-cast p1, Lcrittercism/android/kg;

    invoke-virtual {v0, p1}, Lcrittercism/android/ic;->b(Lcrittercism/android/kg;)I

    move-result v0

    .line 157
    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->a(IJ)V

    goto :goto_1

    .line 161
    :pswitch_6
    iget-object v0, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    iget-object v0, v0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    check-cast p1, Lcrittercism/android/kh;

    invoke-virtual {v0, p1}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v0

    .line 162
    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->a(IJ)V

    goto :goto_1

    .line 166
    :pswitch_7
    iget-object v0, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    iget-object v0, v0, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    check-cast p1, Lcrittercism/android/ju;

    invoke-virtual {v0, p1}, Lcrittercism/android/hh;->b(Lcrittercism/android/ju;)I

    move-result v0

    .line 167
    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->a(IJ)V

    goto :goto_1

    .line 171
    :pswitch_8
    iget-object v0, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    iget-object v0, v0, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    check-cast p1, Lcrittercism/android/kd;

    invoke-virtual {v0, p1}, Lcrittercism/android/ht;->b(Lcrittercism/android/jo;)I

    move-result v0

    .line 172
    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->a(IJ)V

    goto :goto_1

    .line 176
    :pswitch_9
    check-cast p1, Lcrittercism/android/jt;

    invoke-virtual {p1}, Lcrittercism/android/jt;->f()Lcrittercism/android/ju;

    move-result-object v0

    .line 177
    iget-object v2, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    iget-object v2, v2, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    invoke-virtual {v2, v0}, Lcrittercism/android/hh;->b(Lcrittercism/android/ju;)I

    move-result v0

    .line 178
    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcrittercism/android/ii;->a(IJ)V

    goto :goto_1

    .line 182
    :pswitch_a
    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v0, v1}, Lcrittercism/android/ko;->b(I)V

    .line 183
    check-cast p1, Lcrittercism/android/jn;

    invoke-virtual {p0, p1, v2}, Lcrittercism/android/ii;->a(Lcrittercism/android/jn;Z)V

    goto :goto_1

    .line 187
    :pswitch_b
    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v0, v1}, Lcrittercism/android/ko;->b(I)V

    .line 188
    check-cast p1, Lcrittercism/android/jm;

    invoke-virtual {p1}, Lcrittercism/android/jm;->b()Lcrittercism/android/in;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcrittercism/android/ii;->a(Lcrittercism/android/in;Z)V

    goto :goto_1

    .line 193
    :pswitch_c
    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v0, v1}, Lcrittercism/android/ko;->b(I)V

    goto/16 :goto_1

    .line 197
    :pswitch_d
    check-cast p1, Lcrittercism/android/jp;

    invoke-virtual {p1}, Lcrittercism/android/jp;->g()I

    move-result v0

    .line 198
    iget-object v2, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcrittercism/android/ko;->b(I)V

    goto/16 :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static c(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 219
    instance-of v0, p0, Lcrittercism/android/jq;

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 221
    :cond_0
    instance-of v0, p0, Lcrittercism/android/kf;

    if-eqz v0, :cond_1

    .line 222
    const/4 v0, 0x2

    goto :goto_0

    .line 223
    :cond_1
    instance-of v0, p0, Lcrittercism/android/jr;

    if-eqz v0, :cond_2

    .line 224
    const/4 v0, 0x3

    goto :goto_0

    .line 225
    :cond_2
    instance-of v0, p0, Lcrittercism/android/jw;

    if-eqz v0, :cond_3

    .line 226
    const/4 v0, 0x4

    goto :goto_0

    .line 227
    :cond_3
    instance-of v0, p0, Lcrittercism/android/kb;

    if-eqz v0, :cond_4

    .line 228
    const/4 v0, 0x6

    goto :goto_0

    .line 229
    :cond_4
    instance-of v0, p0, Lcrittercism/android/jv;

    if-eqz v0, :cond_5

    .line 230
    const/16 v0, 0x10

    goto :goto_0

    .line 231
    :cond_5
    instance-of v0, p0, Lcrittercism/android/js;

    if-eqz v0, :cond_6

    .line 232
    const/16 v0, 0x11

    goto :goto_0

    .line 233
    :cond_6
    instance-of v0, p0, Lcrittercism/android/kg;

    if-eqz v0, :cond_7

    .line 234
    const/16 v0, 0x17

    goto :goto_0

    .line 235
    :cond_7
    instance-of v0, p0, Lcrittercism/android/kh;

    if-eqz v0, :cond_8

    .line 236
    const/16 v0, 0x18

    goto :goto_0

    .line 237
    :cond_8
    instance-of v0, p0, Lcrittercism/android/ju;

    if-eqz v0, :cond_9

    .line 238
    const/16 v0, 0x19

    goto :goto_0

    .line 239
    :cond_9
    instance-of v0, p0, Lcrittercism/android/kd;

    if-eqz v0, :cond_a

    .line 240
    const/16 v0, 0x1a

    goto :goto_0

    .line 241
    :cond_a
    instance-of v0, p0, Lcrittercism/android/jt;

    if-eqz v0, :cond_b

    .line 242
    const/16 v0, 0x1b

    goto :goto_0

    .line 243
    :cond_b
    instance-of v0, p0, Lcrittercism/android/jn;

    if-eqz v0, :cond_c

    .line 244
    const/16 v0, 0x1c

    goto :goto_0

    .line 245
    :cond_c
    instance-of v0, p0, Lcrittercism/android/jm;

    if-eqz v0, :cond_d

    .line 246
    const/16 v0, 0x1d

    goto :goto_0

    .line 247
    :cond_d
    instance-of v0, p0, Lcrittercism/android/jx;

    if-eqz v0, :cond_e

    .line 248
    const/16 v0, 0x1e

    goto :goto_0

    .line 249
    :cond_e
    instance-of v0, p0, Lcrittercism/android/jp;

    if-eqz v0, :cond_f

    .line 250
    const/16 v0, 0x1f

    goto :goto_0

    .line 252
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcrittercism/android/in;Z)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 308
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v0}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 309
    :goto_0
    iget-object v0, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    iget-object v4, v0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    .line 310
    iget-object v0, p0, Lcrittercism/android/ii;->a:Lcrittercism/android/ha;

    iget-object v0, v0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 312
    invoke-virtual {p1}, Lcrittercism/android/in;->b()Lcrittercism/android/kh;

    move-result-object v3

    .line 313
    invoke-virtual {v0, v3}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v5

    .line 315
    if-eqz v1, :cond_0

    .line 316
    iget-object v6, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  type_idx: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " // "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v3, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-virtual {p1}, Lcrittercism/android/in;->b()Lcrittercism/android/kh;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v0

    invoke-interface {v3, v0}, Lcrittercism/android/ko;->e(I)I

    .line 322
    invoke-virtual {p1}, Lcrittercism/android/in;->c()Ljava/util/Collection;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 325
    if-eqz v1, :cond_1

    .line 326
    iget-object v5, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 329
    :cond_1
    iget-object v5, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v5, v3}, Lcrittercism/android/ko;->e(I)I

    .line 332
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/iq;

    .line 333
    invoke-virtual {v0}, Lcrittercism/android/iq;->a()Lcrittercism/android/kg;

    move-result-object v6

    .line 334
    invoke-virtual {v4, v6}, Lcrittercism/android/ic;->b(Lcrittercism/android/kg;)I

    move-result v7

    .line 335
    invoke-virtual {v0}, Lcrittercism/android/iq;->b()Lcrittercism/android/jl;

    move-result-object v8

    .line 337
    if-eqz v1, :cond_6

    .line 338
    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  elements["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 339
    add-int/lit8 v0, v3, 0x1

    .line 340
    iget-object v3, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "    name_idx: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " // "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 344
    :goto_2
    iget-object v3, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v3, v7}, Lcrittercism/android/ko;->e(I)I

    .line 346
    if-eqz v1, :cond_2

    .line 347
    iget-object v3, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    value: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcrittercism/android/ii;->a(Lcrittercism/android/jl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 350
    :cond_2
    invoke-direct {p0, v8}, Lcrittercism/android/ii;->b(Lcrittercism/android/jl;)V

    move v3, v0

    .line 351
    goto :goto_1

    :cond_3
    move v1, v2

    .line 308
    goto/16 :goto_0

    .line 353
    :cond_4
    if-eqz v1, :cond_5

    .line 354
    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v0}, Lcrittercism/android/ko;->c()V

    .line 356
    :cond_5
    return-void

    :cond_6
    move v0, v3

    goto :goto_2
.end method

.method public final a(Lcrittercism/android/jn;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 270
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v0}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 271
    :goto_0
    invoke-virtual {p1}, Lcrittercism/android/jn;->b()Lcrittercism/android/jn$a;

    move-result-object v2

    .line 272
    iget-object v3, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v3

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget-object v4, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object v4, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v4, v3}, Lcrittercism/android/ko;->e(I)I

    .line 280
    :goto_1
    if-ge v1, v3, :cond_3

    .line 281
    invoke-virtual {v2, v1}, Lcrittercism/android/jn$a;->a(I)Lcrittercism/android/jl;

    move-result-object v4

    .line 282
    if-eqz v0, :cond_1

    .line 283
    iget-object v5, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcrittercism/android/ii;->a(Lcrittercism/android/jl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 286
    :cond_1
    invoke-direct {p0, v4}, Lcrittercism/android/ii;->b(Lcrittercism/android/jl;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 270
    goto :goto_0

    .line 289
    :cond_3
    if-eqz v0, :cond_4

    .line 290
    iget-object v0, p0, Lcrittercism/android/ii;->b:Lcrittercism/android/ko;

    invoke-interface {v0}, Lcrittercism/android/ko;->c()V

    .line 292
    :cond_4
    return-void
.end method
