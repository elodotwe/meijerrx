.class public final Lcrittercism/android/gs;
.super Lcrittercism/android/hv;


# instance fields
.field private a:Lcrittercism/android/gq;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/hv;-><init>(II)V

    .line 61
    iput-object v2, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    .line 62
    iput-object v2, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    .line 63
    iput-object v2, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    .line 64
    iput-object v2, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)I
    .locals 1

    .prologue
    .line 346
    if-nez p0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lcrittercism/android/gs;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "uninternable instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    check-cast p1, Lcrittercism/android/gs;

    .line 127
    iget-object v0, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    iget-object v1, p1, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    invoke-virtual {v0, v1}, Lcrittercism/android/gq;->c(Lcrittercism/android/hv;)I

    move-result v0

    return v0
.end method

.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcrittercism/android/hn;->r:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 5

    .prologue
    .line 241
    iget-object v0, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    .line 243
    iget-object v1, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    invoke-virtual {v0, v1}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v0

    check-cast v0, Lcrittercism/android/gq;

    iput-object v0, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    .line 247
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hf;

    .line 249
    iget-object v1, p1, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    iget-object v3, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    iget-object v4, v0, Lcrittercism/android/hf;->a:Lcrittercism/android/ju;

    invoke-virtual {v1, v4}, Lcrittercism/android/hh;->a(Lcrittercism/android/ju;)Lcrittercism/android/hg;

    iget-object v1, v0, Lcrittercism/android/hf;->b:Lcrittercism/android/gq;

    invoke-virtual {v3, v1}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v1

    check-cast v1, Lcrittercism/android/gq;

    iput-object v1, v0, Lcrittercism/android/hf;->b:Lcrittercism/android/gq;

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hr;

    .line 255
    iget-object v1, p1, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    iget-object v3, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    iget-object v4, v0, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    invoke-virtual {v1, v4}, Lcrittercism/android/ht;->a(Lcrittercism/android/jo;)Lcrittercism/android/hs;

    iget-object v1, v0, Lcrittercism/android/hr;->b:Lcrittercism/android/gq;

    invoke-virtual {v3, v1}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v1

    check-cast v1, Lcrittercism/android/gq;

    iput-object v1, v0, Lcrittercism/android/hr;->b:Lcrittercism/android/gq;

    goto :goto_1

    .line 259
    :cond_2
    iget-object v0, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 260
    iget-object v0, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hw;

    .line 261
    iget-object v2, p1, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    iget-object v3, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    iget-object v4, v0, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    invoke-virtual {v2, v4}, Lcrittercism/android/ht;->a(Lcrittercism/android/jo;)Lcrittercism/android/hs;

    iget-object v0, v0, Lcrittercism/android/hw;->b:Lcrittercism/android/ih;

    invoke-virtual {v3, v0}, Lcrittercism/android/hu;->a(Lcrittercism/android/hv;)V

    goto :goto_2

    .line 264
    :cond_3
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcrittercism/android/gs;->a(Ljava/util/ArrayList;)I

    move-result v0

    iget-object v1, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lcrittercism/android/gs;->a(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    invoke-static {v1}, Lcrittercism/android/gs;->a(Ljava/util/ArrayList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcrittercism/android/gs;->a(I)V

    .line 280
    return-void
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 285
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v1

    .line 286
    iget-object v0, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    invoke-static {v0}, Lcrittercism/android/hv;->b(Lcrittercism/android/hv;)I

    move-result v0

    .line 287
    iget-object v2, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    invoke-static {v2}, Lcrittercism/android/gs;->a(Ljava/util/ArrayList;)I

    move-result v2

    .line 288
    iget-object v3, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    invoke-static {v3}, Lcrittercism/android/gs;->a(Ljava/util/ArrayList;)I

    move-result v3

    .line 289
    iget-object v4, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    invoke-static {v4}, Lcrittercism/android/gs;->a(Ljava/util/ArrayList;)I

    move-result v4

    .line 291
    if-eqz v1, :cond_0

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/gs;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " annotations directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v10, v5}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  class_annotations_off: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v9, v5}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  fields_size:           "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v9, v5}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  methods_size:          "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v9, v5}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  parameters_size:       "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v9, v5}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 302
    :cond_0
    invoke-interface {p2, v0}, Lcrittercism/android/ko;->d(I)V

    .line 303
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->d(I)V

    .line 304
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    .line 305
    invoke-interface {p2, v4}, Lcrittercism/android/ko;->d(I)V

    .line 307
    if-eqz v2, :cond_3

    .line 308
    iget-object v0, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 309
    if-eqz v1, :cond_1

    .line 310
    const-string v0, "  fields:"

    invoke-interface {p2, v10, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hf;

    .line 313
    iget-object v5, p1, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    iget-object v6, v0, Lcrittercism/android/hf;->a:Lcrittercism/android/ju;

    invoke-virtual {v5, v6}, Lcrittercism/android/hh;->b(Lcrittercism/android/ju;)I

    move-result v5

    iget-object v6, v0, Lcrittercism/android/hf;->b:Lcrittercism/android/gq;

    invoke-virtual {v6}, Lcrittercism/android/gq;->d()I

    move-result v6

    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcrittercism/android/hf;->a:Lcrittercism/android/ju;

    invoke-virtual {v0}, Lcrittercism/android/ju;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v10, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "      field_idx:       "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "      annotations_off: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v5}, Lcrittercism/android/ko;->d(I)V

    invoke-interface {p2, v6}, Lcrittercism/android/ko;->d(I)V

    goto :goto_0

    .line 317
    :cond_3
    if-eqz v3, :cond_6

    .line 318
    iget-object v0, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 319
    if-eqz v1, :cond_4

    .line 320
    const-string v0, "  methods:"

    invoke-interface {p2, v10, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 322
    :cond_4
    iget-object v0, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hr;

    .line 323
    iget-object v3, p1, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    iget-object v5, v0, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    invoke-virtual {v3, v5}, Lcrittercism/android/ht;->b(Lcrittercism/android/jo;)I

    move-result v3

    iget-object v5, v0, Lcrittercism/android/hr;->b:Lcrittercism/android/gq;

    invoke-virtual {v5}, Lcrittercism/android/gq;->d()I

    move-result v5

    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcrittercism/android/hr;->a:Lcrittercism/android/kd;

    invoke-virtual {v0}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v10, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "      method_idx:      "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "      annotations_off: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    :cond_5
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    invoke-interface {p2, v5}, Lcrittercism/android/ko;->d(I)V

    goto :goto_1

    .line 327
    :cond_6
    if-eqz v4, :cond_9

    .line 328
    iget-object v0, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 329
    if-eqz v1, :cond_7

    .line 330
    const-string v0, "  parameters:"

    invoke-interface {p2, v10, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 332
    :cond_7
    iget-object v0, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hw;

    .line 333
    iget-object v2, p1, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    iget-object v3, v0, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    invoke-virtual {v2, v3}, Lcrittercism/android/ht;->b(Lcrittercism/android/jo;)I

    move-result v2

    iget-object v3, v0, Lcrittercism/android/hw;->b:Lcrittercism/android/ih;

    invoke-virtual {v3}, Lcrittercism/android/ih;->d()I

    move-result v3

    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcrittercism/android/hw;->a:Lcrittercism/android/kd;

    invoke-virtual {v0}, Lcrittercism/android/kd;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v10, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "      method_idx:      "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "      annotations_off: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v9, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    :cond_8
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->d(I)V

    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    goto :goto_2

    .line 336
    :cond_9
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gs;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gs;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/gs;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/gs;->a:Lcrittercism/android/gq;

    invoke-virtual {v0}, Lcrittercism/android/gq;->hashCode()I

    move-result v0

    goto :goto_0
.end method
