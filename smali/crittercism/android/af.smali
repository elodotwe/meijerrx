.class public final Lcrittercism/android/af;
.super Lcrittercism/android/v;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcrittercism/android/ab;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcrittercism/android/v;-><init>(Lcrittercism/android/ab;)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/af;->d:I

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v2, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 60
    const/4 v0, 0x1

    .line 63
    :try_start_0
    sget-object v3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    invoke-virtual {v3, p1, v2}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcrittercism/android/af;->d:I

    .line 65
    iget-object v3, p0, Lcrittercism/android/v;->a:Lcrittercism/android/ab;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v3, v2}, Lcrittercism/android/ab;->a(I)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/v;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcrittercism/android/ae;

    iget v1, p0, Lcrittercism/android/af;->d:I

    invoke-direct {v0, p0, v1}, Lcrittercism/android/ae;-><init>(Lcrittercism/android/v;I)V

    return-object v0
.end method

.method public final c()Lcrittercism/android/v;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcrittercism/android/ai;->d:Lcrittercism/android/ai;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x14

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x40

    return v0
.end method
