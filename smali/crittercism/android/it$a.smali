.class final Lcrittercism/android/it$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/iw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/it$a;->a:I

    .line 322
    return-void
.end method

.method private a(Lcrittercism/android/iw;)V
    .locals 4

    .prologue
    .line 369
    iget-object v0, p1, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    .line 371
    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0, v0}, Lcrittercism/android/it$a;->a(Lcrittercism/android/jc;)V

    .line 375
    :cond_0
    iget-object v1, p1, Lcrittercism/android/iw;->e:Lcrittercism/android/jd;

    .line 376
    iget-object v0, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v0

    .line 378
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 379
    invoke-virtual {v1, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-direct {p0, v3}, Lcrittercism/android/it$a;->a(Lcrittercism/android/jc;)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_1
    return-void
.end method

.method private a(Lcrittercism/android/jc;)V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p1}, Lcrittercism/android/jc;->h()I

    move-result v0

    .line 391
    iget v1, p0, Lcrittercism/android/it$a;->a:I

    if-le v0, v1, :cond_0

    .line 392
    iput v0, p0, Lcrittercism/android/it$a;->a:I

    .line 394
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/ja;)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcrittercism/android/it$a;->a(Lcrittercism/android/iw;)V

    .line 341
    return-void
.end method

.method public final a(Lcrittercism/android/jb;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcrittercism/android/it$a;->a(Lcrittercism/android/iw;)V

    .line 336
    return-void
.end method

.method public final a(Lcrittercism/android/jj;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcrittercism/android/it$a;->a(Lcrittercism/android/iw;)V

    .line 351
    return-void
.end method

.method public final a(Lcrittercism/android/jk;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcrittercism/android/it$a;->a(Lcrittercism/android/iw;)V

    .line 356
    return-void
.end method
