.class public final Lcrittercism/android/d;
.super Lcrittercism/android/bh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/d$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field d:Z

.field e:Lcrittercism/android/d$a;

.field public f:J

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lcrittercism/android/cf;

.field public j:Lcrittercism/android/l;

.field public k:Ljava/lang/String;

.field public l:Lcrittercism/android/b;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Z

.field private q:Z

.field private r:[D


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lcrittercism/android/bh;-><init>()V

    .line 26
    iput-wide v4, p0, Lcrittercism/android/d;->a:J

    .line 27
    iput-wide v4, p0, Lcrittercism/android/d;->b:J

    .line 31
    iput-boolean v1, p0, Lcrittercism/android/d;->m:Z

    .line 32
    iput-boolean v1, p0, Lcrittercism/android/d;->c:Z

    .line 34
    iput-boolean v1, p0, Lcrittercism/android/d;->d:Z

    .line 68
    sget-object v0, Lcrittercism/android/d$a;->a:Lcrittercism/android/d$a;

    iput-object v0, p0, Lcrittercism/android/d;->e:Lcrittercism/android/d$a;

    .line 70
    iput-wide v2, p0, Lcrittercism/android/d;->o:J

    .line 72
    iput-wide v2, p0, Lcrittercism/android/d;->f:J

    .line 74
    iput-boolean v1, p0, Lcrittercism/android/d;->p:Z

    .line 75
    iput-boolean v1, p0, Lcrittercism/android/d;->q:Z

    .line 77
    iput v1, p0, Lcrittercism/android/d;->g:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/d;->h:Ljava/lang/String;

    .line 81
    new-instance v0, Lcrittercism/android/cf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/cf;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcrittercism/android/d;->i:Lcrittercism/android/cf;

    .line 89
    new-instance v0, Lcrittercism/android/l;

    invoke-direct {v0}, Lcrittercism/android/l;-><init>()V

    iput-object v0, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    .line 98
    sget-object v0, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    iput-object v0, p0, Lcrittercism/android/d;->l:Lcrittercism/android/b;

    .line 144
    sget-object v0, Lcrittercism/android/by;->a:Lcrittercism/android/by;

    invoke-virtual {v0}, Lcrittercism/android/by;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/d;->n:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Lcrittercism/android/bh;-><init>()V

    .line 26
    iput-wide v4, p0, Lcrittercism/android/d;->a:J

    .line 27
    iput-wide v4, p0, Lcrittercism/android/d;->b:J

    .line 31
    iput-boolean v1, p0, Lcrittercism/android/d;->m:Z

    .line 32
    iput-boolean v1, p0, Lcrittercism/android/d;->c:Z

    .line 34
    iput-boolean v1, p0, Lcrittercism/android/d;->d:Z

    .line 68
    sget-object v0, Lcrittercism/android/d$a;->a:Lcrittercism/android/d$a;

    iput-object v0, p0, Lcrittercism/android/d;->e:Lcrittercism/android/d$a;

    .line 70
    iput-wide v2, p0, Lcrittercism/android/d;->o:J

    .line 72
    iput-wide v2, p0, Lcrittercism/android/d;->f:J

    .line 74
    iput-boolean v1, p0, Lcrittercism/android/d;->p:Z

    .line 75
    iput-boolean v1, p0, Lcrittercism/android/d;->q:Z

    .line 77
    iput v1, p0, Lcrittercism/android/d;->g:I

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcrittercism/android/d;->h:Ljava/lang/String;

    .line 81
    new-instance v0, Lcrittercism/android/cf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/cf;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcrittercism/android/d;->i:Lcrittercism/android/cf;

    .line 89
    new-instance v0, Lcrittercism/android/l;

    invoke-direct {v0}, Lcrittercism/android/l;-><init>()V

    iput-object v0, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    .line 98
    sget-object v0, Lcrittercism/android/b;->a:Lcrittercism/android/b;

    iput-object v0, p0, Lcrittercism/android/d;->l:Lcrittercism/android/b;

    .line 148
    sget-object v0, Lcrittercism/android/by;->a:Lcrittercism/android/by;

    invoke-virtual {v0}, Lcrittercism/android/by;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/d;->n:Ljava/lang/String;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    iput-object p1, p0, Lcrittercism/android/d;->k:Ljava/lang/String;

    .line 152
    :cond_0
    return-void
.end method

.method private g()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 235
    .line 237
    iget-wide v2, p0, Lcrittercism/android/d;->a:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcrittercism/android/d;->b:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 238
    iget-wide v0, p0, Lcrittercism/android/d;->b:J

    iget-wide v2, p0, Lcrittercism/android/d;->a:J

    sub-long/2addr v0, v2

    .line 241
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v6, p0, Lcrittercism/android/d;->k:Ljava/lang/String;

    .line 218
    if-nez v6, :cond_1

    .line 219
    iget-object v8, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    const-string v0, "unknown-host"

    iget-object v3, v8, Lcrittercism/android/l;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v8, Lcrittercism/android/l;->b:Ljava/lang/String;

    move-object v6, v0

    :goto_0
    iget-boolean v0, v8, Lcrittercism/android/l;->f:Z

    if-eqz v0, :cond_3

    iget v0, v8, Lcrittercism/android/l;->e:I

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    :cond_0
    :goto_1
    iput-object v6, p0, Lcrittercism/android/d;->k:Ljava/lang/String;

    .line 223
    :cond_1
    return-object v6

    .line 219
    :cond_2
    iget-object v3, v8, Lcrittercism/android/l;->a:Ljava/net/InetAddress;

    if-eqz v3, :cond_c

    iget-object v0, v8, Lcrittercism/android/l;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_3
    iget-object v0, v8, Lcrittercism/android/l;->c:Ljava/lang/String;

    const-string v7, ""

    if-eqz v0, :cond_5

    const-string v3, "http:"

    const/4 v5, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "https:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    move-object v6, v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v1, v8, Lcrittercism/android/l;->d:Lcrittercism/android/l$a;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcrittercism/android/l;->d:Lcrittercism/android/l$a;

    invoke-static {v2}, Lcrittercism/android/l$a;->a(Lcrittercism/android/l$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_8
    const-string v1, ""

    iget v2, v8, Lcrittercism/android/l;->e:I

    if-lez v2, :cond_a

    iget-object v2, v8, Lcrittercism/android/l;->d:Lcrittercism/android/l$a;

    if-eqz v2, :cond_9

    iget-object v2, v8, Lcrittercism/android/l;->d:Lcrittercism/android/l$a;

    invoke-static {v2}, Lcrittercism/android/l$a;->b(Lcrittercism/android/l$a;)I

    move-result v2

    iget v4, v8, Lcrittercism/android/l;->e:I

    if-eq v2, v4, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v8, Lcrittercism/android/l;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object v1, v2

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_b
    move-object v1, v7

    goto/16 :goto_3

    :cond_c
    move-object v6, v0

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    if-lez p1, :cond_0

    iput p1, v0, Lcrittercism/android/l;->e:I

    .line 415
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/d;->p:Z

    .line 189
    iput-wide p1, p0, Lcrittercism/android/d;->o:J

    .line 191
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcrittercism/android/d;->r:[D

    .line 287
    return-void
.end method

.method public final a(Lcrittercism/android/l$a;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    iput-object p1, v0, Lcrittercism/android/l;->d:Lcrittercism/android/l$a;

    .line 404
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcrittercism/android/d;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 425
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 231
    :cond_0
    iput-object p1, p0, Lcrittercism/android/d;->k:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcrittercism/android/cf;

    invoke-direct {v0, p1}, Lcrittercism/android/cf;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcrittercism/android/d;->i:Lcrittercism/android/cf;

    .line 377
    return-void
.end method

.method public final a(Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/d;->k:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    iput-object p1, v0, Lcrittercism/android/l;->a:Ljava/net/InetAddress;

    .line 382
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 254
    iget-boolean v0, p0, Lcrittercism/android/d;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcrittercism/android/d;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/d;->a:J

    .line 257
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/d;->q:Z

    .line 205
    iput-wide p1, p0, Lcrittercism/android/d;->f:J

    .line 206
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/d;->k:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    iput-object p1, v0, Lcrittercism/android/l;->b:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 265
    iget-boolean v0, p0, Lcrittercism/android/d;->c:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcrittercism/android/d;->b:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/d;->b:J

    .line 268
    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 1

    .prologue
    .line 249
    iput-wide p1, p0, Lcrittercism/android/d;->a:J

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/d;->m:Z

    .line 251
    return-void
.end method

.method public final d()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 337
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 339
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 344
    invoke-virtual {p0}, Lcrittercism/android/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 345
    sget-object v1, Lcrittercism/android/dx;->a:Lcrittercism/android/dx;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcrittercism/android/d;->a:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcrittercism/android/dx;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 346
    invoke-direct {p0}, Lcrittercism/android/d;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 347
    iget-object v1, p0, Lcrittercism/android/d;->l:Lcrittercism/android/b;

    invoke-virtual {v1}, Lcrittercism/android/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 348
    iget-wide v2, p0, Lcrittercism/android/d;->o:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 349
    iget-wide v2, p0, Lcrittercism/android/d;->f:J

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 350
    iget v1, p0, Lcrittercism/android/d;->g:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 351
    iget-object v1, p0, Lcrittercism/android/d;->i:Lcrittercism/android/cf;

    iget v1, v1, Lcrittercism/android/cf;->a:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 352
    iget-object v1, p0, Lcrittercism/android/d;->i:Lcrittercism/android/cf;

    iget v1, v1, Lcrittercism/android/cf;->b:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 353
    iget-object v1, p0, Lcrittercism/android/d;->r:[D

    if-eqz v1, :cond_0

    .line 354
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 355
    iget-object v2, p0, Lcrittercism/android/d;->r:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 356
    iget-object v2, p0, Lcrittercism/android/d;->r:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 357
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 360
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Failed to create statsArray"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcrittercism/android/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcrittercism/android/l;->f:Z

    .line 442
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 295
    const-string v0, ""

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI            : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "URI Builder    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/d;->j:Lcrittercism/android/l;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Logged by      : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/d;->e:Lcrittercism/android/d$a;

    invoke-virtual {v1}, Lcrittercism/android/d$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error type:         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/d;->i:Lcrittercism/android/cf;

    iget v1, v1, Lcrittercism/android/cf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Error code:         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/d;->i:Lcrittercism/android/cf;

    iget v1, v1, Lcrittercism/android/cf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response time  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcrittercism/android/d;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Start time     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/d;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "End time       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/d;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes out    : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/d;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Bytes in     : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcrittercism/android/d;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Response code  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcrittercism/android/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Request method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcrittercism/android/d;->r:[D

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Location       : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/d;->r:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    return-object v0
.end method
