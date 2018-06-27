.class public Lcom/crittercism/app/CritterJSInterface;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;)V
    .locals 1
    .param p1, "instance"    # Lcrittercism/android/ar;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string v0, "CritterJSInterface"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 29
    :cond_0
    iput-object p1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    .line 30
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/crittercism/app/CritterJSInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() badly initialized: null instance."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "negative long integer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {p0, p1, v0}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method private static a(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 491
    if-gez p0, :cond_0

    .line 492
    const-string v1, "logNetworkRequest"

    const-string v2, "responseCode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "negative integer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_0
    return v0

    .line 495
    :cond_0
    const/16 v1, 0x2a

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 504
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    .line 505
    if-ne v4, p0, :cond_1

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 510
    :cond_2
    const-string v1, "logNetworkRequest"

    const-string v2, "responseCode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the given HTTP response is not allowed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0x65
        0xc8
        0xc9
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0x12c
        0x12d
        0x12e
        0x12f
        0x130
        0x131
        0x132
        0x133
        0x190
        0x191
        0x192
        0x193
        0x194
        0x195
        0x196
        0x197
        0x198
        0x199
        0x19a
        0x19b
        0x19c
        0x19d
        0x19e
        0x19f
        0x1a0
        0x1a1
        0x1f4
        0x1f5
        0x1f6
        0x1f7
        0x1f8
        0x1f9
    .end array-data
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 516
    if-nez p0, :cond_1

    .line 517
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/crittercism/app/CritterJSInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() given invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "parameter: null string or invalid javascript type. Request is being ignored..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v2}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 523
    :goto_1
    return v0

    .line 517
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 520
    const-string v0, "empty string"

    invoke-static {p1, p2, v0}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 521
    goto :goto_1

    .line 523
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 619
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/crittercism/app/CritterJSInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() given invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Request is being ignored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v0, v1}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    return-void

    .line 619
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public beginTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "beginTransaction"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v0, p1}, Lcrittercism/android/ar;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    throw v0

    .line 193
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "endTransaction"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v0, p1}, Lcrittercism/android/ar;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    throw v0

    .line 221
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public failTransaction(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "failTransaction"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v0, p1}, Lcrittercism/android/ar;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    throw v0

    .line 248
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getTransactionValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "transactionName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v1, :cond_1

    const-string v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v1, v1, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v1}, Lcrittercism/android/dq;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getTransactionValue"

    const-string v2, "transactionName"

    invoke-static {p1, v1, v2}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v1, p1}, Lcrittercism/android/ar;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    throw v0

    .line 302
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "leaveBreadcrumb"

    const-string v1, "breadcrumb"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v0, p1}, Lcrittercism/android/ar;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    throw v0

    .line 166
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "stackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "logError"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, ""

    const-string v0, ""

    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_2

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const-string v3, "Uncaught "

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    const/4 v1, 0x0

    aget-object v1, v2, v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_3

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Lcrittercism/android/ci;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p2, v3}, Lcrittercism/android/ci;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v0, v2}, Lcrittercism/android/ar;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    throw v0

    .line 35
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v2, v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logHandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "stackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "logHandledException"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "logHandledException"

    const-string v1, "reason"

    invoke-static {p2, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "logHandledException"

    const-string v1, "stack"

    invoke-static {p3, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcrittercism/android/ci;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcrittercism/android/ci;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    throw v0

    .line 98
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public logNetworkRequest(Ljava/lang/String;Ljava/lang/String;JJJII)V
    .locals 17
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "latency"    # J
    .param p5, "bytesRead"    # J
    .param p7, "bytesSent"    # J
    .param p9, "responseCode"    # I
    .param p10, "errorCode"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 417
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v2, :cond_1

    const-string v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v2, v2, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v2}, Lcrittercism/android/dq;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "logNetworkRequest"

    const-string v3, "httpMethod"

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    const-string v2, "logNetworkRequest"

    const-string v3, "url"

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gez v2, :cond_5

    :try_start_2
    const-string v2, "logNetworkRequest"

    const-string v3, "bytesRead"

    move-wide/from16 v0, p5

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 418
    :catch_0
    move-exception v2

    throw v2

    .line 417
    :cond_2
    const/16 v2, 0x9

    :try_start_3
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "GET"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "HEAD"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "POST"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "PUT"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "DELETE"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "TRACE"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "CONNECT"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "OPTIONS"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "PATCH"

    aput-object v4, v3, v2

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v2, "logNetworkRequest"

    const-string v3, "httpMethod"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "the given HTTP method is not allowed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v2, "logNetworkRequest"

    const-string v3, "urlString"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "malformed url string: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 420
    :catch_2
    move-exception v2

    invoke-static {v2}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 417
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-gez v2, :cond_6

    :try_start_4
    const-string v2, "logNetworkRequest"

    const-string v3, "bytesSent"

    move-wide/from16 v0, p7

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    invoke-static/range {p9 .. p9}, Lcom/crittercism/app/CritterJSInterface;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v13, Lcom/crittercism/error/CRXMLHttpRequestException;

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lcom/crittercism/error/CRXMLHttpRequestException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p3

    const-string v2, "logNetworkRequest"

    const-string v3, "latency"

    const-wide/16 v6, 0x0

    cmp-long v4, p3, v6

    if-gez v4, :cond_7

    move-wide/from16 v0, p3

    invoke-static {v2, v3, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    invoke-virtual/range {v3 .. v15}, Lcrittercism/android/ar;->a(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;J)V

    goto/16 :goto_0

    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v4, v14, v6

    if-gez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "excessively large long integer: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public logUnhandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "stackStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "logUnhandledException"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "logUnhandledException"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "logUnhandledException"

    const-string v1, "reason"

    invoke-static {p2, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "logUnhandledException"

    const-string v1, "stack"

    invoke-static {p3, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcrittercism/android/ci;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcrittercism/android/ci;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    throw v0

    .line 132
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMetadata(Ljava/lang/String;)V
    .locals 3
    .param p1, "metadataJsonStr"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const-string v0, "setMetadata"

    const-string v1, "metadataJson"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    throw v0

    .line 326
    :catch_1
    move-exception v0

    :try_start_3
    const-string v0, "setMetadata"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "badly formatted json string. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/crittercism/app/CritterJSInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 329
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTransactionValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "transactionName"    # Ljava/lang/String;
    .param p2, "transactionValue"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setTransactionValue"

    const-string v1, "transactionName"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v0, p1, p2}, Lcrittercism/android/ar;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    throw v0

    .line 275
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    if-nez v0, :cond_1

    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->g:Lcrittercism/android/dq;

    invoke-virtual {v0}, Lcrittercism/android/dq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "setUsername"

    const-string v1, "username"

    invoke-static {p1, v0, v1}, Lcom/crittercism/app/CritterJSInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v1, p0, Lcom/crittercism/app/CritterJSInterface;->a:Lcrittercism/android/ar;

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    throw v0

    .line 360
    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcrittercism/android/dr;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 363
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dr;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
