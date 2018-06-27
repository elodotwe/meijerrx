.class public final Lcrittercism/android/fo;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcrittercism/android/fo;

    invoke-direct {v0}, Lcrittercism/android/fo;-><init>()V

    sput-object v0, Lcrittercism/android/fo;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcrittercism/android/fo;->a(Lcrittercism/android/es;I)S

    move-result v0

    invoke-interface {p1, v0}, Lcrittercism/android/ko;->c(I)V

    .line 71
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    return-object v0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 1

    .prologue
    .line 63
    instance-of v0, p1, Lcrittercism/android/fi;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
