.class final Lcrittercism/android/ed$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcrittercism/android/ee;

.field final b:I

.field final c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcrittercism/android/ee;I)V
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcrittercism/android/ed$a;->a:Lcrittercism/android/ee;

    .line 506
    iput p2, p0, Lcrittercism/android/ed$a;->b:I

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/ed$a;->c:Ljava/lang/Object;

    .line 508
    return-void
.end method
