.class public final Lcrittercism/android/hj;
.super Lcrittercism/android/ig;


# instance fields
.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcrittercism/android/ig;-><init>(Ljava/lang/String;Lcrittercism/android/ha;)V

    .line 40
    new-instance v0, Lcrittercism/android/hi;

    invoke-direct {v0}, Lcrittercism/android/hi;-><init>()V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcrittercism/android/hi;->a(I)V

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/hj;->d:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcrittercism/android/hj;->d:Ljava/util/List;

    return-object v0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
