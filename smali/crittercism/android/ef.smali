.class public final Lcrittercism/android/ef;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/List;

.field b:Lcrittercism/android/ea;

.field public c:Z

.field d:Ljava/util/List;

.field e:Lcrittercism/android/ef;

.field f:Lcrittercism/android/ef;

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ef;->a:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/ef;->c:Z

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/ef;->d:Ljava/util/List;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/ef;->g:I

    .line 49
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcrittercism/android/ef;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
