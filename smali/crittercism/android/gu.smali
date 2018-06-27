.class public final Lcrittercism/android/gu;
.super Lcrittercism/android/hv;


# instance fields
.field private final a:Lcrittercism/android/kh;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private h:Lcrittercism/android/jn;

.field private i:[B


# direct methods
.method public constructor <init>(Lcrittercism/android/kh;)V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 76
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/hv;-><init>(II)V

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lcrittercism/android/gu;->a:Lcrittercism/android/kh;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/gu;->d:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/gu;->h:Lcrittercism/android/jn;

    .line 89
    return-void
.end method

.method private static a(Lcrittercism/android/ha;Lcrittercism/android/ko;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 397
    if-nez v3, :cond_1

    .line 408
    :cond_0
    return-void

    .line 401
    :cond_1
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    :cond_2
    move v1, v0

    move v2, v0

    .line 405
    :goto_0
    if-ge v1, v3, :cond_0

    .line 406
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hd;

    invoke-virtual {v0, p0, p1, v2, v1}, Lcrittercism/android/hd;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;II)I

    move-result v2

    .line 405
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Lcrittercism/android/ko;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 374
    invoke-interface {p0}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "  %-21s %08x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcrittercism/android/ko;->a(Ljava/lang/String;)V

    .line 379
    :cond_0
    invoke-interface {p0, p2}, Lcrittercism/android/ko;->e(I)I

    .line 380
    return-void
.end method

.method private b(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 4

    .prologue
    .line 341
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/gu;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcrittercism/android/gu;->a:Lcrittercism/android/kh;

    invoke-virtual {v3}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 348
    :cond_0
    const-string v1, "static_fields"

    iget-object v2, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ko;Ljava/lang/String;I)V

    .line 349
    const-string v1, "instance_fields"

    iget-object v2, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ko;Ljava/lang/String;I)V

    .line 350
    const-string v1, "direct_methods"

    iget-object v2, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ko;Ljava/lang/String;I)V

    .line 351
    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ko;Ljava/lang/String;I)V

    .line 353
    const-string v1, "static_fields"

    iget-object v2, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 354
    const-string v1, "instance_fields"

    iget-object v2, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 355
    const-string v1, "direct_methods"

    iget-object v2, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 356
    const-string v1, "virtual_methods"

    iget-object v2, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    invoke-static {p1, p2, v1, v2}, Lcrittercism/android/gu;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 358
    if-eqz v0, :cond_1

    .line 359
    invoke-interface {p2}, Lcrittercism/android/ko;->c()V

    .line 361
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcrittercism/android/hn;->l:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcrittercism/android/gu;->c()Lcrittercism/android/jn;

    .line 229
    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hc;

    .line 230
    invoke-virtual {v0, p1}, Lcrittercism/android/hc;->a(Lcrittercism/android/ha;)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 236
    iget-object v0, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hc;

    .line 237
    invoke-virtual {v0, p1}, Lcrittercism/android/hc;->a(Lcrittercism/android/ha;)V

    goto :goto_1

    .line 241
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 243
    iget-object v0, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/he;

    .line 244
    invoke-virtual {v0, p1}, Lcrittercism/android/he;->a(Lcrittercism/android/ha;)V

    goto :goto_2

    .line 248
    :cond_2
    iget-object v0, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    iget-object v0, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/he;

    .line 251
    invoke-virtual {v0, p1}, Lcrittercism/android/he;->a(Lcrittercism/android/ha;)V

    goto :goto_3

    .line 254
    :cond_3
    return-void
.end method

.method public final a(Lcrittercism/android/hc;)V
    .locals 2

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public final a(Lcrittercism/android/hc;Lcrittercism/android/jl;)V
    .locals 2

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gu;->h:Lcrittercism/android/jn;

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "static fields already sorted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcrittercism/android/gu;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public final a(Lcrittercism/android/he;)V
    .locals 2

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Lcrittercism/android/kr;

    invoke-direct {v0}, Lcrittercism/android/kr;-><init>()V

    .line 329
    iget-object v1, p1, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    invoke-direct {p0, v1, v0}, Lcrittercism/android/gu;->b(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 330
    invoke-virtual {v0}, Lcrittercism/android/kr;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/gu;->i:[B

    .line 331
    iget-object v0, p0, Lcrittercism/android/gu;->i:[B

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcrittercism/android/gu;->a(I)V

    .line 332
    return-void
.end method

.method public final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 1

    .prologue
    .line 413
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    .line 415
    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0, p1, p2}, Lcrittercism/android/gu;->b(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gu;->i:[B

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->a([B)V

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/he;)V
    .locals 2

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gu;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcrittercism/android/jn;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v0, p0, Lcrittercism/android/gu;->h:Lcrittercism/android/jn;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_0

    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hc;

    iget-object v1, p0, Lcrittercism/android/gu;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/jl;

    instance-of v1, v0, Lcrittercism/android/ka;

    if-eqz v1, :cond_2

    check-cast v0, Lcrittercism/android/ka;

    invoke-virtual {v0}, Lcrittercism/android/ka;->h()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    :cond_0
    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcrittercism/android/gu;->h:Lcrittercism/android/jn;

    .line 268
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gu;->h:Lcrittercism/android/jn;

    return-object v0

    .line 265
    :cond_2
    if-nez v0, :cond_0

    :cond_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_4
    new-instance v5, Lcrittercism/android/jn$a;

    invoke-direct {v5, v4}, Lcrittercism/android/jn$a;-><init>(I)V

    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_5

    iget-object v0, p0, Lcrittercism/android/gu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hc;

    iget-object v1, p0, Lcrittercism/android/gu;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/jl;

    if-nez v1, :cond_6

    iget-object v0, v0, Lcrittercism/android/hc;->a:Lcrittercism/android/ju;

    iget-object v0, v0, Lcrittercism/android/kc;->b:Lcrittercism/android/ke;

    invoke-virtual {v0}, Lcrittercism/android/ke;->d()Lcrittercism/android/kl;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kl;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no zero for type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcrittercism/android/kl;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Lcrittercism/android/jp;->a:Lcrittercism/android/jp;

    :goto_3
    invoke-virtual {v5, v2, v0}, Lcrittercism/android/jn$a;->a(ILcrittercism/android/jl;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcrittercism/android/jq;->a:Lcrittercism/android/jq;

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcrittercism/android/jr;->a:Lcrittercism/android/jr;

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcrittercism/android/js;->a:Lcrittercism/android/js;

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcrittercism/android/jv;->a:Lcrittercism/android/jv;

    goto :goto_3

    :pswitch_5
    sget-object v0, Lcrittercism/android/jw;->b:Lcrittercism/android/jw;

    goto :goto_3

    :pswitch_6
    sget-object v0, Lcrittercism/android/kb;->a:Lcrittercism/android/kb;

    goto :goto_3

    :pswitch_7
    sget-object v0, Lcrittercism/android/kf;->a:Lcrittercism/android/kf;

    goto :goto_3

    :pswitch_8
    sget-object v0, Lcrittercism/android/jx;->a:Lcrittercism/android/jx;

    goto :goto_3

    :cond_5
    iput-boolean v3, v5, Lcrittercism/android/lc;->L:Z

    new-instance v0, Lcrittercism/android/jn;

    invoke-direct {v0, v5}, Lcrittercism/android/jn;-><init>(Lcrittercism/android/jn$a;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
