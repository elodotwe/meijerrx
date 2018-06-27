.class public final Lcrittercism/android/eg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcrittercism/android/ei;

.field private final b:Lcrittercism/android/ea;

.field private c:I

.field private d:Lcrittercism/android/jc;


# direct methods
.method private constructor <init>(Lcrittercism/android/ea;Lcrittercism/android/ei;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/eg;->c:I

    .line 31
    iput-object p1, p0, Lcrittercism/android/eg;->b:Lcrittercism/android/ea;

    .line 32
    iput-object p2, p0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    .line 33
    return-void
.end method

.method static a(Lcrittercism/android/ea;Lcrittercism/android/ei;)Lcrittercism/android/eg;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcrittercism/android/eg;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/eg;-><init>(Lcrittercism/android/ea;Lcrittercism/android/ei;)V

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-virtual {v0}, Lcrittercism/android/kl;->f()I

    move-result v0

    return v0
.end method

.method final a(I)I
    .locals 1

    .prologue
    .line 45
    iput p1, p0, Lcrittercism/android/eg;->c:I

    .line 46
    iget-object v0, p0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v0, v0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {p1, v0}, Lcrittercism/android/jc;->a(ILcrittercism/android/km;)Lcrittercism/android/jc;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/eg;->d:Lcrittercism/android/jc;

    .line 47
    invoke-virtual {p0}, Lcrittercism/android/eg;->a()I

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/jc;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/eg;->d:Lcrittercism/android/jc;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcrittercism/android/eg;->b:Lcrittercism/android/ea;

    invoke-virtual {v0}, Lcrittercism/android/ea;->a()V

    .line 60
    iget-object v0, p0, Lcrittercism/android/eg;->d:Lcrittercism/android/jc;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcrittercism/android/eg;->d:Lcrittercism/android/jc;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcrittercism/android/eg;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
