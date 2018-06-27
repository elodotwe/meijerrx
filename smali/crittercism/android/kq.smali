.class public final Lcrittercism/android/kq;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:I

.field public final c:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 76
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcrittercism/android/kq;-><init>([BI)V

    .line 77
    return-void
.end method

.method private constructor <init>([BI)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-gez p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    array-length v0, p1

    if-le p2, v0, :cond_2

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end > bytes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p1, p0, Lcrittercism/android/kq;->a:[B

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/kq;->b:I

    .line 67
    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcrittercism/android/kq;->c:I

    .line 68
    return-void
.end method
