.class public final Lcrittercism/android/ea;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcrittercism/android/ef;

.field final b:Ljava/util/List;

.field public c:Lcrittercism/android/ji;

.field public d:Lcrittercism/android/kk;

.field private final e:Lcrittercism/android/eh;

.field private final f:Ljava/util/List;

.field private g:Z

.field private final h:Lcrittercism/android/eg;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;


# direct methods
.method constructor <init>(Lcrittercism/android/ed$b;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcrittercism/android/ea;->f:Ljava/util/List;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcrittercism/android/ea;->b:Ljava/util/List;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcrittercism/android/ea;->i:Ljava/util/List;

    .line 203
    sget-object v1, Lcrittercism/android/ji;->a:Lcrittercism/android/ji;

    iput-object v1, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcrittercism/android/ea;->j:Ljava/util/List;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcrittercism/android/ea;->k:Ljava/util/List;

    .line 206
    sget-object v1, Lcrittercism/android/kk;->a:Lcrittercism/android/kk;

    iput-object v1, p0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    .line 209
    iget-object v1, p1, Lcrittercism/android/ed$b;->a:Lcrittercism/android/eh;

    iput-object v1, p0, Lcrittercism/android/ea;->e:Lcrittercism/android/eh;

    .line 210
    iget v1, p1, Lcrittercism/android/ed$b;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 211
    const/4 v1, 0x0

    iput-object v1, p0, Lcrittercism/android/ea;->h:Lcrittercism/android/eg;

    .line 216
    :goto_1
    iget-object v1, p0, Lcrittercism/android/ea;->e:Lcrittercism/android/eh;

    iget-object v1, v1, Lcrittercism/android/eh;->d:Lcrittercism/android/ej;

    iget-object v1, v1, Lcrittercism/android/ej;->a:[Lcrittercism/android/ei;

    array-length v3, v1

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 217
    iget-object v5, p0, Lcrittercism/android/ea;->b:Ljava/util/List;

    invoke-static {p0, v4}, Lcrittercism/android/eg;->a(Lcrittercism/android/ea;Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v1, v0

    .line 210
    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcrittercism/android/ea;->e:Lcrittercism/android/eh;

    iget-object v1, v1, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    invoke-static {p0, v1}, Lcrittercism/android/eg;->a(Lcrittercism/android/ea;Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/ea;->h:Lcrittercism/android/eg;

    .line 214
    iget-object v1, p0, Lcrittercism/android/ea;->b:Ljava/util/List;

    iget-object v3, p0, Lcrittercism/android/ea;->h:Lcrittercism/android/eg;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_2
    new-instance v0, Lcrittercism/android/ef;

    invoke-direct {v0}, Lcrittercism/android/ef;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    .line 220
    iget-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    invoke-virtual {p0, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/ef;)V

    .line 221
    iget-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    iput-boolean v2, v0, Lcrittercism/android/ef;->c:Z

    .line 222
    return-void
.end method

.method private static a(Lcrittercism/android/eg;Lcrittercism/android/ei;)Lcrittercism/android/eg;
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    invoke-virtual {v0, p1}, Lcrittercism/android/ei;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requested "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    return-object p0
.end method

.method private static a(Lcrittercism/android/eg;[Lcrittercism/android/eg;)Lcrittercism/android/jd;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 893
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 894
    :goto_0
    new-instance v2, Lcrittercism/android/jd;

    array-length v3, p1

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lcrittercism/android/jd;-><init>(I)V

    .line 895
    if-eqz p0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcrittercism/android/jd;->a(ILcrittercism/android/jc;)V

    .line 898
    :cond_0
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 899
    add-int v3, v1, v0

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcrittercism/android/jd;->a(ILcrittercism/android/jc;)V

    .line 898
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 893
    goto :goto_0

    .line 901
    :cond_2
    return-object v2
.end method

.method private a(Lcrittercism/android/ef;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Lcrittercism/android/ef;

    invoke-direct {v0}, Lcrittercism/android/ef;-><init>()V

    .line 462
    invoke-virtual {p0, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/ef;)V

    .line 463
    iget-object v1, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    iput-object v0, v1, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    .line 464
    iget-object v1, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    iput-object p1, v1, Lcrittercism/android/ef;->f:Lcrittercism/android/ef;

    .line 465
    iget-object v1, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    iput-object p2, v1, Lcrittercism/android/ef;->d:Ljava/util/List;

    .line 466
    iput-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    .line 467
    iget-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/ef;->c:Z

    .line 468
    return-void
.end method


# virtual methods
.method public final a(ILcrittercism/android/ei;)Lcrittercism/android/eg;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcrittercism/android/ea;->h:Lcrittercism/android/eg;

    if-eqz v0, :cond_0

    .line 243
    add-int/lit8 p1, p1, 0x1

    .line 245
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ea;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/eg;

    invoke-static {v0, p2}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ei;)Lcrittercism/android/eg;
    .locals 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcrittercism/android/ea;->g:Z

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot allocate locals after adding instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    invoke-static {p0, p1}, Lcrittercism/android/eg;->a(Lcrittercism/android/ea;Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcrittercism/android/ea;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object v0
.end method

.method final a()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 280
    iget-boolean v0, p0, Lcrittercism/android/ea;->g:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/ea;->g:Z

    .line 286
    iget-object v0, p0, Lcrittercism/android/ea;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v6, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/eg;

    .line 287
    invoke-virtual {v0, v6}, Lcrittercism/android/eg;->a(I)I

    move-result v0

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_0

    .line 290
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 291
    iget-object v0, p0, Lcrittercism/android/ea;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v6

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcrittercism/android/eg;

    .line 292
    sub-int v0, v1, v6

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v5

    .line 293
    invoke-virtual {v3, v1}, Lcrittercism/android/eg;->a(I)I

    move-result v0

    add-int v8, v1, v0

    .line 294
    new-instance v0, Lcrittercism/android/ja;

    iget-object v1, v3, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v1, v1, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v1}, Lcrittercism/android/jh;->a(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {v3}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v3

    sget-object v4, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/ja;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v8

    .line 296
    goto :goto_1

    .line 297
    :cond_2
    iget-object v0, p0, Lcrittercism/android/ea;->f:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ef;

    iget-object v0, v0, Lcrittercism/android/ef;->a:Ljava/util/List;

    invoke-interface {v0, v7, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 298
    return-void
.end method

.method public final a(Lcrittercism/android/ef;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p1, Lcrittercism/android/ef;->b:Lcrittercism/android/ea;

    if-ne v0, p0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p1, Lcrittercism/android/ef;->b:Lcrittercism/android/ea;

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot adopt label; it belongs to another Code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    iput-object p0, p1, Lcrittercism/android/ef;->b:Lcrittercism/android/ea;

    .line 325
    iget-object v0, p0, Lcrittercism/android/ea;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/eg;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 826
    iget-object v0, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v1, p0, Lcrittercism/android/ea;->e:Lcrittercism/android/eh;

    iget-object v1, v1, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Lcrittercism/android/ei;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "declared "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/ea;->e:Lcrittercism/android/eh;

    iget-object v2, v2, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_0
    new-instance v0, Lcrittercism/android/jb;

    iget-object v1, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v1, v1, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v1}, Lcrittercism/android/jh;->e(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {p1}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcrittercism/android/jb;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    invoke-virtual {p0, v0, v4}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 833
    return-void
.end method

.method public final a(Lcrittercism/android/eg;Lcrittercism/android/eg;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 741
    iget-object v0, p2, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-virtual {v0}, Lcrittercism/android/kl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Lcrittercism/android/jj;

    sget-object v1, Lcrittercism/android/jh;->ch:Lcrittercism/android/jf;

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {p2}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v3

    invoke-static {v3}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v3

    iget-object v4, p0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    iget-object v5, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v5, v5, Lcrittercism/android/ei;->n:Lcrittercism/android/kh;

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/jj;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;Lcrittercism/android/jl;)V

    invoke-virtual {p0, v0, v6}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 744
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Z)V

    .line 749
    :goto_0
    return-void

    .line 746
    :cond_0
    new-instance v1, Lcrittercism/android/jb;

    iget-object v0, p2, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    iget-object v2, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v2, v2, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-virtual {v0}, Lcrittercism/android/kl;->c()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcrittercism/android/kl;->c()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    invoke-static {v2, v0}, Lcrittercism/android/jh;->a(Lcrittercism/android/km;Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {p1}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {p2}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcrittercism/android/jb;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jc;)V

    invoke-virtual {p0, v1, v6}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcrittercism/android/jh;->bv:Lcrittercism/android/jf;

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcrittercism/android/jh;->bu:Lcrittercism/android/jf;

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcrittercism/android/jh;->bt:Lcrittercism/android/jf;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcrittercism/android/eg;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 477
    if-nez p2, :cond_0

    sget-object v1, Lcrittercism/android/jh;->r:Lcrittercism/android/jf;

    .line 480
    :goto_0
    iget v0, v1, Lcrittercism/android/jf;->c:I

    if-ne v0, v6, :cond_1

    .line 481
    new-instance v0, Lcrittercism/android/ja;

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {p1}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v3

    sget-object v4, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    invoke-static {p2}, Lcrittercism/android/ec;->a(Ljava/lang/Object;)Lcrittercism/android/ki;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/ja;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    invoke-virtual {p0, v0, v7}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 488
    :goto_1
    return-void

    .line 477
    :cond_0
    iget-object v0, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v0}, Lcrittercism/android/jh;->d(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v1

    goto :goto_0

    .line 484
    :cond_1
    new-instance v0, Lcrittercism/android/jj;

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    sget-object v3, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    iget-object v4, p0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    invoke-static {p2}, Lcrittercism/android/ec;->a(Ljava/lang/Object;)Lcrittercism/android/ki;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/jj;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;Lcrittercism/android/jl;)V

    invoke-virtual {p0, v0, v7}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 486
    invoke-virtual {p0, p1, v6}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Z)V

    goto :goto_1
.end method

.method public final a(Lcrittercism/android/eg;Z)V
    .locals 5

    .prologue
    .line 836
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v0}, Lcrittercism/android/jh;->c(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v0

    .line 839
    :goto_0
    new-instance v1, Lcrittercism/android/jb;

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {p1}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v3

    sget-object v4, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    invoke-direct {v1, v0, v2, v3, v4}, Lcrittercism/android/jb;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 840
    return-void

    .line 836
    :cond_0
    iget-object v0, p1, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v0}, Lcrittercism/android/jh;->b(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v0

    goto :goto_0
.end method

.method public final varargs a(Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V
    .locals 6

    .prologue
    .line 673
    invoke-virtual {p1}, Lcrittercism/android/eh;->a()Lcrittercism/android/kj;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/jh;->c(Lcrittercism/android/kj;)Lcrittercism/android/jf;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/jf;Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    .line 674
    return-void
.end method

.method public final a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    iget-boolean v0, v0, Lcrittercism/android/ef;->c:Z

    if-nez v0, :cond_1

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no current label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1
    iget-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    iget-object v0, v0, Lcrittercism/android/ef;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p1, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget v0, v0, Lcrittercism/android/jf;->c:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 416
    :pswitch_1
    if-eqz p2, :cond_3

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected branch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :pswitch_2
    if-eqz p2, :cond_2

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected branch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_2
    iput-object v2, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    .line 448
    :cond_3
    :goto_0
    return-void

    .line 429
    :pswitch_3
    if-nez p2, :cond_4

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "branch == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_4
    iget-object v0, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    iput-object p2, v0, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    .line 433
    iput-object v2, p0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    goto :goto_0

    .line 437
    :pswitch_4
    if-nez p2, :cond_5

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "branch == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/ef;Ljava/util/List;)V

    goto :goto_0

    .line 444
    :pswitch_5
    if-eqz p2, :cond_6

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected branch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcrittercism/android/ea;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/ef;Ljava/util/List;)V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final varargs a(Lcrittercism/android/jf;Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V
    .locals 6

    .prologue
    .line 691
    new-instance v0, Lcrittercism/android/jj;

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-static {p4, p5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;[Lcrittercism/android/eg;)Lcrittercism/android/jd;

    move-result-object v3

    iget-object v4, p0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    iget-object v5, p2, Lcrittercism/android/eh;->f:Lcrittercism/android/kd;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/jj;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;Lcrittercism/android/jl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 693
    if-eqz p3, :cond_0

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Z)V

    .line 696
    :cond_0
    return-void
.end method

.method final b()I
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, Lcrittercism/android/ea;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/eg;

    .line 307
    invoke-virtual {v0}, Lcrittercism/android/eg;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 309
    :cond_0
    return v1
.end method

.method public final b(Lcrittercism/android/ei;)Lcrittercism/android/eg;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcrittercism/android/ea;->h:Lcrittercism/android/eg;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "static methods cannot access \'this\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ea;->h:Lcrittercism/android/eg;

    invoke-static {v0, p1}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 812
    iget-object v0, p0, Lcrittercism/android/ea;->e:Lcrittercism/android/eh;

    iget-object v0, v0, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    sget-object v1, Lcrittercism/android/ei;->i:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Lcrittercism/android/ei;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "declared "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/ea;->e:Lcrittercism/android/eh;

    iget-object v2, v2, Lcrittercism/android/eh;->b:Lcrittercism/android/ei;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but returned void"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_0
    new-instance v0, Lcrittercism/android/jb;

    sget-object v1, Lcrittercism/android/jh;->bw:Lcrittercism/android/jf;

    iget-object v2, p0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    sget-object v3, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    invoke-direct {v0, v1, v2, v4, v3}, Lcrittercism/android/jb;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    invoke-virtual {p0, v0, v4}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 818
    return-void
.end method

.method final d()Lcrittercism/android/it;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 863
    iget-boolean v0, p0, Lcrittercism/android/ea;->g:Z

    if-nez v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcrittercism/android/ea;->a()V

    .line 867
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ea;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ef;

    invoke-virtual {v0}, Lcrittercism/android/ef;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    iget-object v1, v0, Lcrittercism/android/ef;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    :goto_2
    iget-object v1, v0, Lcrittercism/android/ef;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/ef;

    invoke-virtual {v1}, Lcrittercism/android/ef;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v6, v0, Lcrittercism/android/ef;->d:Ljava/util/List;

    iget-object v1, v0, Lcrittercism/android/ef;->d:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/ef;

    iget-object v1, v1, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    invoke-interface {v6, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v1, v0, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    invoke-virtual {v1}, Lcrittercism/android/ef;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    iget-object v1, v1, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    iput-object v1, v0, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v1, v0, Lcrittercism/android/ef;->f:Lcrittercism/android/ef;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcrittercism/android/ef;->f:Lcrittercism/android/ef;

    invoke-virtual {v1}, Lcrittercism/android/ef;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcrittercism/android/ef;->f:Lcrittercism/android/ef;

    iget-object v1, v1, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    iput-object v1, v0, Lcrittercism/android/ef;->f:Lcrittercism/android/ef;

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v2, 0x1

    iput v2, v0, Lcrittercism/android/ef;->g:I

    move v2, v1

    goto :goto_0

    .line 869
    :cond_6
    new-instance v5, Lcrittercism/android/it;

    iget-object v0, p0, Lcrittercism/android/ea;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Lcrittercism/android/it;-><init>(I)V

    move v4, v3

    .line 870
    :goto_5
    iget-object v0, p0, Lcrittercism/android/ea;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 871
    iget-object v0, p0, Lcrittercism/android/ea;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcrittercism/android/ef;

    new-instance v6, Lcrittercism/android/ix;

    iget-object v0, v1, Lcrittercism/android/ef;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Lcrittercism/android/ix;-><init>(I)V

    move v2, v3

    :goto_6
    iget-object v0, v1, Lcrittercism/android/ef;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, v1, Lcrittercism/android/ef;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/iw;

    invoke-virtual {v6, v2, v0}, Lcrittercism/android/ix;->a(ILcrittercism/android/iw;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_7
    iput-boolean v3, v6, Lcrittercism/android/lc;->L:Z

    const/4 v2, -0x1

    new-instance v7, Lcrittercism/android/ky;

    invoke-direct {v7}, Lcrittercism/android/ky;-><init>()V

    iget-object v0, v1, Lcrittercism/android/ef;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ef;

    iget v0, v0, Lcrittercism/android/ef;->g:I

    invoke-virtual {v7, v0}, Lcrittercism/android/ky;->b(I)V

    goto :goto_7

    :cond_8
    iget-object v0, v1, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcrittercism/android/ef;->e:Lcrittercism/android/ef;

    iget v0, v0, Lcrittercism/android/ef;->g:I

    invoke-virtual {v7, v0}, Lcrittercism/android/ky;->b(I)V

    :goto_8
    iget-object v2, v1, Lcrittercism/android/ef;->f:Lcrittercism/android/ef;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcrittercism/android/ef;->f:Lcrittercism/android/ef;

    iget v2, v2, Lcrittercism/android/ef;->g:I

    invoke-virtual {v7, v2}, Lcrittercism/android/ky;->b(I)V

    :cond_9
    iput-boolean v3, v7, Lcrittercism/android/lc;->L:Z

    new-instance v2, Lcrittercism/android/is;

    iget v1, v1, Lcrittercism/android/ef;->g:I

    invoke-direct {v2, v1, v6, v7, v0}, Lcrittercism/android/is;-><init>(ILcrittercism/android/ix;Lcrittercism/android/ky;I)V

    invoke-virtual {v5, v4, v2}, Lcrittercism/android/it;->a(ILcrittercism/android/is;)V

    .line 870
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_5

    .line 873
    :cond_a
    return-object v5

    :cond_b
    move v0, v2

    goto :goto_8
.end method
