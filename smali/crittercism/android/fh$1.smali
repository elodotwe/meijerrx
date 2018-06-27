.class final Lcrittercism/android/fh$1;
.super Lcrittercism/android/iw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>([ZII)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcrittercism/android/fh$1;->a:[Z

    iput p2, p0, Lcrittercism/android/fh$1;->b:I

    iput p3, p0, Lcrittercism/android/fh$1;->c:I

    invoke-direct {p0}, Lcrittercism/android/iw$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/ja;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p1, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget v0, v0, Lcrittercism/android/jf;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 193
    iget-object v0, p1, Lcrittercism/android/iu;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/jw;

    invoke-virtual {v0}, Lcrittercism/android/jw;->d_()I

    move-result v0

    .line 196
    iget-object v2, p0, Lcrittercism/android/fh$1;->a:[Z

    iget-object v3, p0, Lcrittercism/android/fh$1;->a:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    iget v3, p0, Lcrittercism/android/fh$1;->b:I

    iget v4, p0, Lcrittercism/android/fh$1;->c:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p1, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    invoke-virtual {v3}, Lcrittercism/android/jc;->e()I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v2, v1

    .line 200
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 196
    goto :goto_0
.end method
