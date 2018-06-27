.class public final Lcrittercism/android/ed$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Lcrittercism/android/ei;

.field public b:Z

.field public c:I

.field public d:Lcrittercism/android/ei;

.field public e:Ljava/lang/String;

.field public f:Lcrittercism/android/ej;

.field final g:Ljava/util/Map;

.field final h:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcrittercism/android/ei;)V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ed$c;->g:Ljava/util/Map;

    .line 454
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ed$c;->h:Ljava/util/Map;

    .line 458
    iput-object p1, p0, Lcrittercism/android/ed$c;->a:Lcrittercism/android/ei;

    .line 459
    return-void
.end method
