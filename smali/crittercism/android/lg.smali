.class public final Lcrittercism/android/lg;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcrittercism/android/kx;

.field final b:Lcrittercism/android/kx;

.field private final c:Ljava/io/Writer;

.field private final d:I

.field private final e:Ljava/lang/StringBuffer;

.field private final f:Ljava/lang/StringBuffer;


# direct methods
.method private constructor <init>(Ljava/io/Writer;IILjava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    if-gtz p2, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    if-gtz p3, :cond_2

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rightWidth < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    if-nez p4, :cond_3

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spacer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 107
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 109
    iput-object p1, p0, Lcrittercism/android/lg;->c:Ljava/io/Writer;

    .line 110
    iput p2, p0, Lcrittercism/android/lg;->d:I

    .line 111
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcrittercism/android/lg;->e:Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    iput-object v2, p0, Lcrittercism/android/lg;->f:Ljava/lang/StringBuffer;

    .line 113
    new-instance v2, Lcrittercism/android/kx;

    invoke-direct {v2, v0, p2}, Lcrittercism/android/kx;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcrittercism/android/lg;->a:Lcrittercism/android/kx;

    .line 114
    new-instance v0, Lcrittercism/android/kx;

    invoke-direct {v0, v1, p3, p4}, Lcrittercism/android/kx;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    iput-object v0, p0, Lcrittercism/android/lg;->b:Lcrittercism/android/kx;

    .line 116
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 63
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 65
    new-instance v2, Ljava/io/StringWriter;

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v2, v0}, Ljava/io/StringWriter;-><init>(I)V

    .line 66
    new-instance v0, Lcrittercism/android/lg;

    invoke-direct {v0, v2, p1, p4, p2}, Lcrittercism/android/lg;-><init>(Ljava/io/Writer;IILjava/lang/String;)V

    .line 70
    :try_start_0
    iget-object v1, v0, Lcrittercism/android/lg;->a:Lcrittercism/android/kx;

    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    iget-object v1, v0, Lcrittercism/android/lg;->b:Lcrittercism/android/kx;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-direct {v0}, Lcrittercism/android/lg;->a()V

    .line 77
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/lg;->e:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcrittercism/android/lg;->a:Lcrittercism/android/kx;

    invoke-static {v0, v1}, Lcrittercism/android/lg;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 156
    iget-object v0, p0, Lcrittercism/android/lg;->f:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcrittercism/android/lg;->b:Lcrittercism/android/kx;

    invoke-static {v0, v1}, Lcrittercism/android/lg;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 157
    invoke-direct {p0}, Lcrittercism/android/lg;->b()V

    .line 158
    iget-object v0, p0, Lcrittercism/android/lg;->e:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcrittercism/android/lg;->a:Lcrittercism/android/kx;

    invoke-static {v0, v1}, Lcrittercism/android/lg;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_0
    iget-object v0, p0, Lcrittercism/android/lg;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/lg;->b:Lcrittercism/android/kx;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcrittercism/android/kx;->write(I)V

    invoke-direct {p0}, Lcrittercism/android/lg;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/lg;->f:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcrittercism/android/lg;->b:Lcrittercism/android/kx;

    invoke-static {v0, v1}, Lcrittercism/android/lg;->a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_1
    iget-object v0, p0, Lcrittercism/android/lg;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/lg;->a:Lcrittercism/android/kx;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcrittercism/android/kx;->write(I)V

    invoke-direct {p0}, Lcrittercism/android/lg;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 162
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 235
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 237
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 238
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 240
    :cond_0
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 173
    :goto_0
    iget-object v0, p0, Lcrittercism/android/lg;->e:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 174
    if-gez v1, :cond_1

    .line 180
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcrittercism/android/lg;->f:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 179
    if-ltz v2, :cond_0

    .line 183
    if-eqz v1, :cond_2

    .line 184
    iget-object v0, p0, Lcrittercism/android/lg;->c:Ljava/io/Writer;

    iget-object v3, p0, Lcrittercism/android/lg;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 187
    :cond_2
    if-eqz v2, :cond_4

    .line 188
    iget-object v3, p0, Lcrittercism/android/lg;->c:Ljava/io/Writer;

    iget v0, p0, Lcrittercism/android/lg;->d:I

    sub-int/2addr v0, v1

    :goto_1
    if-lez v0, :cond_3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 189
    :cond_3
    iget-object v0, p0, Lcrittercism/android/lg;->c:Ljava/io/Writer;

    iget-object v3, p0, Lcrittercism/android/lg;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    :cond_4
    iget-object v0, p0, Lcrittercism/android/lg;->c:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(I)V

    .line 194
    iget-object v0, p0, Lcrittercism/android/lg;->e:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 195
    iget-object v0, p0, Lcrittercism/android/lg;->f:Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
