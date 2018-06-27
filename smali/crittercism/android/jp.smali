.class public final Lcrittercism/android/jp;
.super Lcrittercism/android/jy;


# static fields
.field public static final a:Lcrittercism/android/jp;

.field public static final b:Lcrittercism/android/jp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcrittercism/android/jp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/jp;-><init>(Z)V

    sput-object v0, Lcrittercism/android/jp;->a:Lcrittercism/android/jp;

    .line 30
    new-instance v0, Lcrittercism/android/jp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcrittercism/android/jp;-><init>(Z)V

    sput-object v0, Lcrittercism/android/jp;->b:Lcrittercism/android/jp;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .prologue
    .line 66
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcrittercism/android/jy;-><init>(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)Lcrittercism/android/jp;
    .locals 1

    .prologue
    .line 40
    if-eqz p0, :cond_0

    sget-object v0, Lcrittercism/android/jp;->b:Lcrittercism/android/jp;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcrittercism/android/jp;->a:Lcrittercism/android/jp;

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcrittercism/android/jy;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcrittercism/android/jp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcrittercism/android/kl;->a:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "boolean"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcrittercism/android/jp;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "boolean{false}"

    goto :goto_0
.end method
