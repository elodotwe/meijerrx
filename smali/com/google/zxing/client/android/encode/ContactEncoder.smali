.class abstract Lcom/google/zxing/client/android/encode/ContactEncoder;
.super Ljava/lang/Object;
.source "ContactEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doAppend(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/client/android/encode/Formatter;C)V
    .locals 3
    .param p0, "newContents"    # Ljava/lang/StringBuilder;
    .param p1, "newDisplayContents"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "fieldFormatter"    # Lcom/google/zxing/client/android/encode/Formatter;
    .param p5, "terminator"    # C

    .prologue
    .line 59
    invoke-static {p3}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "trimmed":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4, v0}, Lcom/google/zxing/client/android/encode/Formatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    return-void
.end method

.method static doAppendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/google/zxing/client/android/encode/Formatter;Lcom/google/zxing/client/android/encode/Formatter;C)V
    .locals 8
    .param p0, "newContents"    # Ljava/lang/StringBuilder;
    .param p1, "newDisplayContents"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "max"    # I
    .param p5, "formatter"    # Lcom/google/zxing/client/android/encode/Formatter;
    .param p6, "fieldFormatter"    # Lcom/google/zxing/client/android/encode/Formatter;
    .param p7, "terminator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/google/zxing/client/android/encode/Formatter;",
            "Lcom/google/zxing/client/android/encode/Formatter;",
            "C)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    .line 93
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    new-instance v4, Ljava/util/HashSet;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 79
    .local v4, "uniques":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/zxing/client/android/encode/ContactEncoder;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "trimmed":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 82
    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 83
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p6, v3}, Lcom/google/zxing/client/android/encode/Formatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    if-nez p5, :cond_3

    move-object v1, v3

    .line 85
    .local v1, "display":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p4, :cond_0

    .line 89
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v1    # "display":Ljava/lang/String;
    :cond_3
    invoke-interface {p5, v3}, Lcom/google/zxing/client/android/encode/Formatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    if-nez p0, :cond_0

    .line 50
    :goto_0
    return-object v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method abstract encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
