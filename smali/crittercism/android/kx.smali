.class public final Lcrittercism/android/kx;
.super Ljava/io/FilterWriter;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    .prologue
    .line 86
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcrittercism/android/kx;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-gez p2, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    if-nez p3, :cond_2

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefix == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    if-eqz p2, :cond_4

    move v0, p2

    :goto_0
    iput v0, p0, Lcrittercism/android/kx;->b:I

    .line 72
    shr-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcrittercism/android/kx;->c:I

    .line 73
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p3, 0x0

    :cond_3
    iput-object p3, p0, Lcrittercism/android/kx;->a:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcrittercism/android/kx;->a()V

    .line 76
    return-void

    .line 71
    :cond_4
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iput v1, p0, Lcrittercism/android/kx;->d:I

    .line 166
    iget v0, p0, Lcrittercism/android/kx;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcrittercism/android/kx;->e:Z

    .line 167
    iput v1, p0, Lcrittercism/android/kx;->f:I

    .line 168
    return-void

    :cond_0
    move v0, v1

    .line 166
    goto :goto_0
.end method


# virtual methods
.method public final write(I)V
    .locals 5
    .param p1, "c"    # I

    .prologue
    const/16 v3, 0x20

    const/16 v4, 0xa

    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcrittercism/android/kx;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-boolean v2, p0, Lcrittercism/android/kx;->e:Z

    if-eqz v2, :cond_1

    .line 94
    if-ne p1, v3, :cond_0

    .line 95
    iget v2, p0, Lcrittercism/android/kx;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcrittercism/android/kx;->f:I

    .line 96
    iget v2, p0, Lcrittercism/android/kx;->f:I

    iget v3, p0, Lcrittercism/android/kx;->c:I

    if-lt v2, v3, :cond_1

    .line 97
    iget v2, p0, Lcrittercism/android/kx;->c:I

    iput v2, p0, Lcrittercism/android/kx;->f:I

    .line 98
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcrittercism/android/kx;->e:Z

    .line 105
    :cond_1
    iget v2, p0, Lcrittercism/android/kx;->d:I

    iget v3, p0, Lcrittercism/android/kx;->b:I

    if-ne v2, v3, :cond_2

    if-eq p1, v4, :cond_2

    .line 106
    iget-object v2, p0, Lcrittercism/android/kx;->out:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 107
    const/4 v2, 0x0

    iput v2, p0, Lcrittercism/android/kx;->d:I

    .line 114
    :cond_2
    iget v2, p0, Lcrittercism/android/kx;->d:I

    if-nez v2, :cond_5

    .line 115
    iget-object v2, p0, Lcrittercism/android/kx;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcrittercism/android/kx;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcrittercism/android/kx;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    :cond_3
    iget-boolean v2, p0, Lcrittercism/android/kx;->e:Z

    if-nez v2, :cond_5

    .line 120
    :goto_0
    iget v2, p0, Lcrittercism/android/kx;->f:I

    if-ge v0, v2, :cond_4

    .line 121
    iget-object v2, p0, Lcrittercism/android/kx;->out:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_4
    iget v0, p0, Lcrittercism/android/kx;->f:I

    iput v0, p0, Lcrittercism/android/kx;->d:I

    .line 127
    :cond_5
    iget-object v0, p0, Lcrittercism/android/kx;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 129
    if-ne p1, v4, :cond_6

    .line 130
    invoke-direct {p0}, Lcrittercism/android/kx;->a()V

    .line 134
    :goto_1
    monitor-exit v1

    return-void

    .line 132
    :cond_6
    iget v0, p0, Lcrittercism/android/kx;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/kx;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 152
    iget-object v1, p0, Lcrittercism/android/kx;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :goto_0
    if-lez p3, :cond_0

    .line 154
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcrittercism/android/kx;->write(I)V

    .line 155
    add-int/lit8 p2, p2, 0x1

    .line 156
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 158
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcrittercism/android/kx;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :goto_0
    if-lez p3, :cond_0

    .line 142
    :try_start_0
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcrittercism/android/kx;->write(I)V

    .line 143
    add-int/lit8 p2, p2, 0x1

    .line 144
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 146
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
