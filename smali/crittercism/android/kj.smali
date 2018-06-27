.class public final Lcrittercism/android/kj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:Ljava/util/HashMap;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcrittercism/android/kl;

.field private final d:Lcrittercism/android/kk;

.field private e:Lcrittercism/android/kk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcrittercism/android/kj;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcrittercism/android/kl;Lcrittercism/android/kk;)V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "returnType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    if-nez p3, :cond_2

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameterTypes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_2
    iput-object p1, p0, Lcrittercism/android/kj;->b:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcrittercism/android/kj;->c:Lcrittercism/android/kl;

    .line 231
    iput-object p3, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/kj;->e:Lcrittercism/android/kk;

    .line 233
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcrittercism/android/kj;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    sget-object v1, Lcrittercism/android/kj;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcrittercism/android/kj;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/kj;

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-eqz v0, :cond_1

    .line 108
    :goto_0
    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :cond_1
    invoke-static {p0}, Lcrittercism/android/kj;->b(Ljava/lang/String;)[Lcrittercism/android/kl;

    move-result-object v5

    .line 68
    const/4 v0, 0x1

    move v2, v3

    .line 72
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 73
    const/16 v4, 0x29

    if-ne v1, v4, :cond_6

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/kl;->b(Ljava/lang/String;)Lcrittercism/android/kl;

    move-result-object v0

    .line 101
    new-instance v1, Lcrittercism/android/kk;

    invoke-direct {v1, v2}, Lcrittercism/android/kk;-><init>(I)V

    .line 103
    :goto_2
    if-ge v3, v2, :cond_5

    .line 104
    aget-object v4, v5, v3

    invoke-virtual {v1, v3, v4}, Lcrittercism/android/kk;->a(ILcrittercism/android/kl;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 79
    :goto_3
    const/16 v6, 0x5b

    if-ne v1, v6, :cond_2

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 84
    :cond_2
    const/16 v6, 0x4c

    if-ne v1, v6, :cond_4

    .line 86
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 87
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 95
    :goto_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/kl;->a(Ljava/lang/String;)Lcrittercism/android/kl;

    move-result-object v0

    aput-object v0, v5, v2

    .line 97
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 98
    goto :goto_1

    .line 92
    :cond_4
    add-int/lit8 v1, v4, 0x1

    goto :goto_4

    .line 107
    :cond_5
    new-instance v2, Lcrittercism/android/kj;

    invoke-direct {v2, p0, v0, v1}, Lcrittercism/android/kj;-><init>(Ljava/lang/String;Lcrittercism/android/kl;Lcrittercism/android/kk;)V

    .line 108
    invoke-static {v2}, Lcrittercism/android/kj;->b(Lcrittercism/android/kj;)Lcrittercism/android/kj;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v4, v0

    goto :goto_3
.end method

.method private static b(Lcrittercism/android/kj;)Lcrittercism/android/kj;
    .locals 3

    .prologue
    .line 390
    sget-object v1, Lcrittercism/android/kj;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v2, p0, Lcrittercism/android/kj;->b:Ljava/lang/String;

    .line 392
    sget-object v0, Lcrittercism/android/kj;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/kj;

    .line 393
    if-eqz v0, :cond_0

    .line 394
    monitor-exit v1

    .line 397
    :goto_0
    return-object v0

    .line 396
    :cond_0
    sget-object v0, Lcrittercism/android/kj;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;)[Lcrittercism/android/kl;
    .locals 7

    .prologue
    const/16 v6, 0x29

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 124
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    const/4 v1, 0x1

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_6

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 136
    if-ne v4, v6, :cond_2

    .line 145
    :goto_1
    if-eqz v1, :cond_1

    add-int/lit8 v2, v3, -0x1

    if-ne v1, v2, :cond_4

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_3

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_5
    new-array v0, v0, [Lcrittercism/android/kl;

    return-object v0

    :cond_6
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcrittercism/android/kj;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 261
    if-ne p0, p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    iget-object v1, p0, Lcrittercism/android/kj;->c:Lcrittercism/android/kl;

    iget-object v2, p1, Lcrittercism/android/kj;->c:Lcrittercism/android/kl;

    invoke-virtual {v1, v2}, Lcrittercism/android/kl;->a(Lcrittercism/android/kl;)I

    move-result v1

    .line 273
    if-eqz v1, :cond_2

    move v0, v1

    .line 274
    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    iget-object v1, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v1

    .line 278
    iget-object v1, p1, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    iget-object v1, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v1

    .line 279
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    .line 281
    :goto_1
    if-ge v2, v5, :cond_4

    .line 282
    iget-object v1, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    invoke-virtual {v1, v2}, Lcrittercism/android/kk;->b(I)Lcrittercism/android/kl;

    move-result-object v1

    .line 283
    iget-object v6, p1, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    invoke-virtual {v6, v2}, Lcrittercism/android/kk;->b(I)Lcrittercism/android/kl;

    move-result-object v6

    .line 285
    invoke-virtual {v1, v6}, Lcrittercism/android/kl;->a(Lcrittercism/android/kl;)I

    move-result v1

    .line 287
    if-eqz v1, :cond_3

    move v0, v1

    .line 288
    goto :goto_0

    .line 281
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 292
    :cond_4
    if-ge v3, v4, :cond_5

    .line 293
    const/4 v0, -0x1

    goto :goto_0

    .line 294
    :cond_5
    if-le v3, v4, :cond_0

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/kl;)Lcrittercism/android/kj;
    .locals 4

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcrittercism/android/kl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/kj;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    invoke-virtual {v1, p1}, Lcrittercism/android/kk;->b(Lcrittercism/android/kl;)Lcrittercism/android/kk;

    move-result-object v1

    .line 373
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcrittercism/android/lc;->L:Z

    .line 375
    new-instance v2, Lcrittercism/android/kj;

    iget-object v3, p0, Lcrittercism/android/kj;->c:Lcrittercism/android/kl;

    invoke-direct {v2, v0, v3, v1}, Lcrittercism/android/kj;-><init>(Ljava/lang/String;Lcrittercism/android/kl;Lcrittercism/android/kk;)V

    .line 378
    invoke-static {v2}, Lcrittercism/android/kj;->b(Lcrittercism/android/kj;)Lcrittercism/android/kj;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcrittercism/android/kj;->c:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final b()Lcrittercism/android/kk;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    return-object v0
.end method

.method public final c()Lcrittercism/android/kk;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcrittercism/android/kj;->e:Lcrittercism/android/kk;

    if-nez v1, :cond_2

    .line 344
    iget-object v1, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    iget-object v1, v1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v1

    .line 345
    new-instance v2, Lcrittercism/android/kk;

    invoke-direct {v2, v4}, Lcrittercism/android/kk;-><init>(I)V

    move v3, v0

    move v1, v0

    .line 347
    :goto_0
    if-ge v3, v4, :cond_1

    .line 348
    iget-object v0, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    invoke-virtual {v0, v3}, Lcrittercism/android/kk;->b(I)Lcrittercism/android/kl;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcrittercism/android/kl;->h()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    const/4 v1, 0x1

    .line 351
    sget-object v0, Lcrittercism/android/kl;->f:Lcrittercism/android/kl;

    .line 353
    :cond_0
    invoke-virtual {v2, v3, v0}, Lcrittercism/android/kk;->a(ILcrittercism/android/kl;)V

    .line 347
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 355
    :cond_1
    if-eqz v1, :cond_3

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcrittercism/android/kj;->e:Lcrittercism/android/kk;

    .line 358
    :cond_2
    iget-object v0, p0, Lcrittercism/android/kj;->e:Lcrittercism/android/kk;

    return-object v0

    .line 355
    :cond_3
    iget-object v0, p0, Lcrittercism/android/kj;->d:Lcrittercism/android/kk;

    goto :goto_1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcrittercism/android/kj;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/kj;->a(Lcrittercism/android/kj;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 238
    if-ne p0, p1, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 250
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 246
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcrittercism/android/kj;

    if-nez v0, :cond_1

    .line 247
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcrittercism/android/kj;->b:Ljava/lang/String;

    check-cast p1, Lcrittercism/android/kj;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcrittercism/android/kj;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcrittercism/android/kj;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcrittercism/android/kj;->b:Ljava/lang/String;

    return-object v0
.end method
