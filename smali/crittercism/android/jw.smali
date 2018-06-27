.class public final Lcrittercism/android/jw;
.super Lcrittercism/android/jy;


# static fields
.field public static final a:Lcrittercism/android/jw;

.field public static final b:Lcrittercism/android/jw;

.field public static final c:Lcrittercism/android/jw;

.field public static final d:Lcrittercism/android/jw;

.field public static final e:Lcrittercism/android/jw;

.field public static final f:Lcrittercism/android/jw;

.field public static final g:Lcrittercism/android/jw;

.field private static final i:[Lcrittercism/android/jw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x1ff

    new-array v0, v0, [Lcrittercism/android/jw;

    sput-object v0, Lcrittercism/android/jw;->i:[Lcrittercism/android/jw;

    .line 31
    const/4 v0, -0x1

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jw;->a:Lcrittercism/android/jw;

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jw;->b:Lcrittercism/android/jw;

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jw;->c:Lcrittercism/android/jw;

    .line 40
    const/4 v0, 0x2

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jw;->d:Lcrittercism/android/jw;

    .line 43
    const/4 v0, 0x3

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jw;->e:Lcrittercism/android/jw;

    .line 46
    const/4 v0, 0x4

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jw;->f:Lcrittercism/android/jw;

    .line 49
    const/4 v0, 0x5

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    sput-object v0, Lcrittercism/android/jw;->g:Lcrittercism/android/jw;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcrittercism/android/jy;-><init>(I)V

    .line 83
    return-void
.end method

.method public static a(I)Lcrittercism/android/jw;
    .locals 3

    .prologue
    .line 64
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Lcrittercism/android/jw;->i:[Lcrittercism/android/jw;

    array-length v1, v1

    rem-int v1, v0, v1

    .line 65
    sget-object v0, Lcrittercism/android/jw;->i:[Lcrittercism/android/jw;

    aget-object v0, v0, v1

    .line 67
    if-eqz v0, :cond_0

    iget v2, v0, Lcrittercism/android/jy;->h:I

    if-ne v2, p0, :cond_0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcrittercism/android/jw;

    invoke-direct {v0, p0}, Lcrittercism/android/jw;-><init>(I)V

    .line 72
    sget-object v2, Lcrittercism/android/jw;->i:[Lcrittercism/android/jw;

    aput-object v0, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcrittercism/android/jy;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcrittercism/android/kl;->f:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final d_()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcrittercism/android/jy;->h:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "int"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    iget v0, p0, Lcrittercism/android/jy;->h:I

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "int{0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
