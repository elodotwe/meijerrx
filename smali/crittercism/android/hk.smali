.class public abstract Lcrittercism/android/hk;
.super Lcrittercism/android/hl;


# instance fields
.field final a:Lcrittercism/android/kh;


# direct methods
.method public constructor <init>(Lcrittercism/android/kh;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcrittercism/android/hl;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcrittercism/android/hk;->a:Lcrittercism/android/kh;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 49
    iget-object v1, p0, Lcrittercism/android/hk;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/ie;->a(Lcrittercism/android/kh;)Lcrittercism/android/id;

    .line 50
    return-void
.end method
