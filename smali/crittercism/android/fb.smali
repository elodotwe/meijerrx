.class public final Lcrittercism/android/fb;
.super Lcrittercism/android/fm;


# instance fields
.field final a:Lcrittercism/android/je;


# direct methods
.method public constructor <init>(Lcrittercism/android/ji;Lcrittercism/android/je;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcrittercism/android/fm;-><init>(Lcrittercism/android/ji;)V

    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p2, p0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/jd;)Lcrittercism/android/es;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcrittercism/android/fb;

    iget-object v1, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v2, p0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    invoke-direct {v0, v1, v2}, Lcrittercism/android/fb;-><init>(Lcrittercism/android/ji;Lcrittercism/android/je;)V

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    invoke-virtual {v0}, Lcrittercism/android/je;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    invoke-virtual {v0}, Lcrittercism/android/je;->b()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    invoke-virtual {v1}, Lcrittercism/android/je;->a()I

    move-result v1

    .line 82
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v0, 0x28

    add-int/lit8 v0, v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 84
    const-string v0, "local-snapshot"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 87
    iget-object v3, p0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    invoke-virtual {v3, v0}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_0

    .line 89
    const-string v4, "\n  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-static {v3}, Lcrittercism/android/fc;->a(Lcrittercism/android/jc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcrittercism/android/es;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcrittercism/android/fb;

    iget-object v1, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v2, p0, Lcrittercism/android/fb;->a:Lcrittercism/android/je;

    invoke-virtual {v2, p1}, Lcrittercism/android/je;->b(I)Lcrittercism/android/je;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcrittercism/android/fb;-><init>(Lcrittercism/android/ji;Lcrittercism/android/je;)V

    return-object v0
.end method
