.class final Lcrittercism/android/gx$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/er$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/gx;->a(Lcrittercism/android/hz;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ha;

.field final synthetic b:Lcrittercism/android/gx;


# direct methods
.method constructor <init>(Lcrittercism/android/gx;Lcrittercism/android/ha;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcrittercism/android/gx$1;->b:Lcrittercism/android/gx;

    iput-object p2, p0, Lcrittercism/android/gx$1;->a:Lcrittercism/android/ha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcrittercism/android/gx$1;->a:Lcrittercism/android/ha;

    instance-of v1, p1, Lcrittercism/android/kg;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    invoke-virtual {v0, p1}, Lcrittercism/android/ic;->a(Lcrittercism/android/jl;)Lcrittercism/android/hl;

    move-result-object v0

    .line 203
    :goto_0
    if-nez v0, :cond_4

    .line 204
    const/4 v0, -0x1

    .line 206
    :goto_1
    return v0

    .line 202
    :cond_0
    instance-of v1, p1, Lcrittercism/android/kh;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    invoke-virtual {v0, p1}, Lcrittercism/android/ie;->a(Lcrittercism/android/jl;)Lcrittercism/android/hl;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcrittercism/android/jo;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcrittercism/android/ha;->j:Lcrittercism/android/ht;

    invoke-virtual {v0, p1}, Lcrittercism/android/ht;->a(Lcrittercism/android/jl;)Lcrittercism/android/hl;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcrittercism/android/ju;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcrittercism/android/ha;->i:Lcrittercism/android/hh;

    invoke-virtual {v0, p1}, Lcrittercism/android/hh;->a(Lcrittercism/android/jl;)Lcrittercism/android/hl;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_4
    invoke-virtual {v0}, Lcrittercism/android/hl;->d()I

    move-result v0

    goto :goto_1
.end method
