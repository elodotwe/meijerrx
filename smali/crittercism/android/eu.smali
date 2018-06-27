.class public final Lcrittercism/android/eu;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Lcrittercism/android/ey;

.field final e:Z


# direct methods
.method public constructor <init>(IIILcrittercism/android/ey;Z)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcrittercism/android/il;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    invoke-static {p2}, Lcrittercism/android/il;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    invoke-static {p3}, Lcrittercism/android/il;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nextOpcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    if-nez p4, :cond_3

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3
    iput p1, p0, Lcrittercism/android/eu;->a:I

    .line 79
    iput p2, p0, Lcrittercism/android/eu;->b:I

    .line 80
    iput p3, p0, Lcrittercism/android/eu;->c:I

    .line 81
    iput-object p4, p0, Lcrittercism/android/eu;->d:Lcrittercism/android/ey;

    .line 82
    iput-boolean p5, p0, Lcrittercism/android/eu;->e:Z

    .line 83
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcrittercism/android/eu;->a:I

    invoke-static {v0}, Lcrittercism/android/ik;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
