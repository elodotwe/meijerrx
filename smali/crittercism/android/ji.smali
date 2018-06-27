.class public final Lcrittercism/android/ji;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcrittercism/android/ji;


# instance fields
.field private final b:Lcrittercism/android/kg;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcrittercism/android/ji;

    invoke-direct {v0}, Lcrittercism/android/ji;-><init>()V

    sput-object v0, Lcrittercism/android/ji;->a:Lcrittercism/android/ji;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    .line 66
    iput v1, p0, Lcrittercism/android/ji;->c:I

    .line 67
    iput v1, p0, Lcrittercism/android/ji;->d:I

    .line 68
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcrittercism/android/ji;->d:I

    return v0
.end method

.method public final a(Lcrittercism/android/ji;)Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcrittercism/android/ji;->d:I

    iget v1, p1, Lcrittercism/android/ji;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    instance-of v2, p1, Lcrittercism/android/ji;

    if-nez v2, :cond_1

    .line 108
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 102
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 103
    goto :goto_0

    .line 106
    :cond_2
    check-cast p1, Lcrittercism/android/ji;

    .line 108
    .end local p1    # "other":Ljava/lang/Object;
    iget v2, p0, Lcrittercism/android/ji;->c:I

    iget v3, p1, Lcrittercism/android/ji;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcrittercism/android/ji;->d:I

    iget v3, p1, Lcrittercism/android/ji;->d:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    iget-object v3, p1, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    iget-object v3, p1, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    invoke-virtual {v2, v3}, Lcrittercism/android/kg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->hashCode()I

    move-result v0

    iget v1, p0, Lcrittercism/android/ji;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcrittercism/android/ji;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 75
    iget-object v1, p0, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcrittercism/android/ji;->b:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :cond_0
    iget v1, p0, Lcrittercism/android/ji;->d:I

    if-ltz v1, :cond_1

    .line 81
    iget v1, p0, Lcrittercism/android/ji;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    iget v1, p0, Lcrittercism/android/ji;->c:I

    if-gez v1, :cond_2

    .line 87
    const-string v1, "????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_2
    iget v1, p0, Lcrittercism/android/ji;->c:I

    invoke-static {v1}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
