.class final Lcrittercism/android/ed$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcrittercism/android/eh;

.field final b:I

.field final c:Lcrittercism/android/ea;


# direct methods
.method public constructor <init>(Lcrittercism/android/eh;I)V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcrittercism/android/ed$b;->a:Lcrittercism/android/eh;

    .line 526
    iput p2, p0, Lcrittercism/android/ed$b;->b:I

    .line 527
    new-instance v0, Lcrittercism/android/ea;

    invoke-direct {v0, p0}, Lcrittercism/android/ea;-><init>(Lcrittercism/android/ed$b;)V

    iput-object v0, p0, Lcrittercism/android/ed$b;->c:Lcrittercism/android/ea;

    .line 528
    return-void
.end method
