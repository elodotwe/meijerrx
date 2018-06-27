.class public final Lcrittercism/android/hu;
.super Lcrittercism/android/hz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/hu$2;,
        Lcrittercism/android/hu$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Comparator;


# instance fields
.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/HashMap;

.field private final g:Lcrittercism/android/hu$a;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcrittercism/android/hu$1;

    invoke-direct {v0}, Lcrittercism/android/hu$1;-><init>()V

    sput-object v0, Lcrittercism/android/hu;->d:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcrittercism/android/ha;ILcrittercism/android/hu$a;)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/hz;-><init>(Ljava/lang/String;Lcrittercism/android/ha;I)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/hu;->f:Ljava/util/HashMap;

    .line 94
    iput-object p4, p0, Lcrittercism/android/hu;->g:Lcrittercism/android/hu$a;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/hu;->h:I

    .line 96
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/hm;)I
    .locals 1

    .prologue
    .line 114
    check-cast p1, Lcrittercism/android/hv;

    .line 115
    invoke-virtual {p1}, Lcrittercism/android/hv;->d()I

    move-result v0

    return v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcrittercism/android/hv;)V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcrittercism/android/hu;->h()V

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcrittercism/android/hv;->e()I

    move-result v0

    iget v1, p0, Lcrittercism/android/hz;->b:I

    if-le v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible item alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method protected final a_(Lcrittercism/android/ko;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v5

    .line 333
    const/4 v0, 0x1

    .line 334
    iget-object v6, p0, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    .line 337
    iget-object v1, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    .line 338
    if-eqz v5, :cond_0

    .line 339
    if-eqz v3, :cond_2

    move v3, v2

    .line 346
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcrittercism/android/hv;->e()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 347
    add-int v8, v1, v4

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v8

    .line 349
    if-eq v1, v4, :cond_1

    .line 350
    sub-int v1, v4, v1

    invoke-interface {p1, v1}, Lcrittercism/android/ko;->g(I)V

    move v1, v4

    .line 354
    :cond_1
    invoke-virtual {v0, v6, p1}, Lcrittercism/android/hv;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 355
    invoke-virtual {v0}, Lcrittercism/android/hv;->b_()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 356
    goto :goto_0

    .line 342
    :cond_2
    const-string v4, "\n"

    invoke-interface {p1, v2, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_3
    iget v0, p0, Lcrittercism/android/hu;->h:I

    if-eq v1, v0, :cond_4

    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "output size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_4
    return-void
.end method

.method public final b(Lcrittercism/android/hv;)Lcrittercism/android/hv;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lcrittercism/android/hu;->h()V

    .line 196
    iget-object v0, p0, Lcrittercism/android/hu;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    .line 198
    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcrittercism/android/hu;->a(Lcrittercism/android/hv;)V

    .line 203
    iget-object v0, p0, Lcrittercism/android/hu;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 204
    goto :goto_0
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 264
    iget-object v2, p0, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v1, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 274
    if-ge v0, v3, :cond_1

    move v1, v0

    .line 275
    :goto_1
    if-ge v1, v3, :cond_0

    .line 279
    iget-object v0, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    .line 280
    invoke-virtual {v0, v2}, Lcrittercism/android/hv;->a(Lcrittercism/android/ha;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 282
    goto :goto_0

    .line 283
    :cond_1
    return-void
.end method

.method public final c_()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcrittercism/android/hu;->g()V

    .line 108
    iget v0, p0, Lcrittercism/android/hu;->h:I

    return v0
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0}, Lcrittercism/android/hu;->g()V

    .line 296
    sget-object v1, Lcrittercism/android/hu$2;->a:[I

    iget-object v2, p0, Lcrittercism/android/hu;->g:Lcrittercism/android/hu$a;

    invoke-virtual {v2}, Lcrittercism/android/hu$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 307
    :goto_0
    iget-object v1, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 309
    :goto_1
    if-ge v1, v3, :cond_1

    .line 310
    iget-object v0, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    .line 312
    :try_start_0
    invoke-virtual {v0, p0, v2}, Lcrittercism/android/hv;->b(Lcrittercism/android/hz;I)I

    move-result v4

    .line 314
    if-ge v4, v2, :cond_0

    .line 315
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bogus place() result for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while placing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcrittercism/android/ku;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcrittercism/android/ku;

    move-result-object v0

    throw v0

    .line 298
    :pswitch_0
    iget-object v1, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v1, p0, Lcrittercism/android/hu;->e:Ljava/util/ArrayList;

    sget-object v2, Lcrittercism/android/hu;->d:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 319
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcrittercism/android/hv;->b_()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    add-int v2, v4, v0

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 326
    :cond_1
    iput v2, p0, Lcrittercism/android/hu;->h:I

    .line 327
    return-void

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
