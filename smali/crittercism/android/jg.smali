.class public final Lcrittercism/android/jg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcrittercism/android/it;

.field public final b:I

.field public c:[Lcrittercism/android/ky;

.field public d:Lcrittercism/android/ky;


# direct methods
.method public constructor <init>(Lcrittercism/android/it;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "blocks == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/jg;->b:I

    .line 63
    iput-object v1, p0, Lcrittercism/android/jg;->c:[Lcrittercism/android/ky;

    .line 64
    iput-object v1, p0, Lcrittercism/android/jg;->d:Lcrittercism/android/ky;

    .line 65
    return-void
.end method
