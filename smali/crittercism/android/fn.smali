.class public final Lcrittercism/android/fn;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcrittercism/android/fn;

    invoke-direct {v0}, Lcrittercism/android/fn;-><init>()V

    sput-object v0, Lcrittercism/android/fn;->b:Lcrittercism/android/ey;

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
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Lcrittercism/android/fn;->d(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 1

    .prologue
    .line 82
    move-object v0, p2

    check-cast v0, Lcrittercism/android/fk;

    invoke-virtual {v0}, Lcrittercism/android/fk;->b()I

    move-result v0

    .line 84
    and-int/lit16 v0, v0, 0xff

    invoke-static {p2, v0}, Lcrittercism/android/fn;->a(Lcrittercism/android/es;I)S

    move-result v0

    invoke-interface {p1, v0}, Lcrittercism/android/ko;->c(I)V

    .line 85
    return-void
.end method

.method public final a(Lcrittercism/android/fk;)Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p1}, Lcrittercism/android/fk;->b()I

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcrittercism/android/fn;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Lcrittercism/android/fn;->e(Lcrittercism/android/es;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 1

    .prologue
    .line 61
    instance-of v0, p1, Lcrittercism/android/fk;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_1
    check-cast p1, Lcrittercism/android/fk;

    .line 67
    invoke-virtual {p1}, Lcrittercism/android/fk;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcrittercism/android/fn;->a(Lcrittercism/android/fk;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
