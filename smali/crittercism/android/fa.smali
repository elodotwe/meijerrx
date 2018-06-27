.class public final Lcrittercism/android/fa;
.super Lcrittercism/android/kv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/fa$c;,
        Lcrittercism/android/fa$b;,
        Lcrittercism/android/fa$a;
    }
.end annotation


# static fields
.field public static final a:Lcrittercism/android/fa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcrittercism/android/fa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/fa;-><init>(I)V

    sput-object v0, Lcrittercism/android/fa;->a:Lcrittercism/android/fa;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 49
    return-void
.end method

.method public static a(Lcrittercism/android/et;)Lcrittercism/android/fa;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v0

    .line 345
    new-instance v5, Lcrittercism/android/fa$c;

    invoke-direct {v5, v4}, Lcrittercism/android/fa$c;-><init>(I)V

    move v3, v2

    .line 347
    :goto_0
    if-ge v3, v4, :cond_6

    .line 348
    invoke-virtual {p0, v3}, Lcrittercism/android/et;->a(I)Lcrittercism/android/es;

    move-result-object v1

    .line 350
    instance-of v0, v1, Lcrittercism/android/fb;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 351
    check-cast v0, Lcrittercism/android/fb;

    iget-object v6, v0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    .line 353
    invoke-virtual {v1}, Lcrittercism/android/es;->d()I

    move-result v1

    invoke-virtual {v6}, Lcrittercism/android/je;->a()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v5, v1, v0}, Lcrittercism/android/fa$c;->a(II)V

    move v0, v2

    :goto_1
    if-ge v0, v7, :cond_4

    iget-object v8, v5, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v8, v0}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v8

    invoke-virtual {v6, v0}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v9

    invoke-static {v9}, Lcrittercism/android/fa$c;->a(Lcrittercism/android/jc;)Lcrittercism/android/jc;

    move-result-object v9

    if-nez v8, :cond_1

    if-eqz v9, :cond_0

    invoke-virtual {v5, v1, v9}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/jc;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-nez v9, :cond_2

    invoke-virtual {v5, v1, v8}, Lcrittercism/android/fa$c;->b(ILcrittercism/android/jc;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v8}, Lcrittercism/android/jc;->a(Lcrittercism/android/jc;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v5, v1, v8}, Lcrittercism/android/fa$c;->b(ILcrittercism/android/jc;)V

    invoke-virtual {v5, v1, v9}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/jc;)V

    goto :goto_2

    .line 354
    :cond_3
    instance-of v0, v1, Lcrittercism/android/fc;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 355
    check-cast v0, Lcrittercism/android/fc;

    iget-object v0, v0, Lcrittercism/android/fc;->a:Lcrittercism/android/jc;

    .line 356
    invoke-virtual {v1}, Lcrittercism/android/es;->d()I

    move-result v1

    invoke-virtual {v5, v1, v0}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/jc;)V

    .line 347
    :cond_4
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 357
    :cond_5
    instance-of v0, v1, Lcrittercism/android/ez;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 358
    check-cast v0, Lcrittercism/android/ez;

    iget-object v0, v0, Lcrittercism/android/ez;->a:Lcrittercism/android/jc;

    .line 359
    invoke-virtual {v1}, Lcrittercism/android/es;->d()I

    move-result v1

    invoke-virtual {v5, v1, v0}, Lcrittercism/android/fa$c;->b(ILcrittercism/android/jc;)V

    goto :goto_3

    .line 363
    :cond_6
    const v0, 0x7fffffff

    invoke-virtual {v5, v0, v2}, Lcrittercism/android/fa$c;->a(II)V

    iget-object v0, v5, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v5, Lcrittercism/android/fa$c;->b:I

    sub-int v4, v0, v1

    if-nez v4, :cond_7

    sget-object v0, Lcrittercism/android/fa;->a:Lcrittercism/android/fa;

    .line 369
    :goto_4
    return-object v0

    .line 363
    :cond_7
    new-array v6, v4, [Lcrittercism/android/fa$b;

    if-ne v0, v4, :cond_9

    iget-object v0, v5, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_8
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Lcrittercism/android/fa;

    invoke-direct {v0, v4}, Lcrittercism/android/fa;-><init>(I)V

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_a

    aget-object v3, v6, v1

    invoke-virtual {v0, v1, v3}, Lcrittercism/android/fa;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    iget-object v0, v5, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    if-eqz v0, :cond_b

    add-int/lit8 v3, v1, 0x1

    aput-object v0, v6, v1

    move v0, v3

    :goto_7
    move v1, v0

    goto :goto_6

    :cond_a
    iput-boolean v2, v0, Lcrittercism/android/lc;->L:Z

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_7
.end method


# virtual methods
.method public final a(I)Lcrittercism/android/fa$b;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcrittercism/android/fa;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    return-object v0
.end method
