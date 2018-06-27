.class public final Lcrittercism/android/gt;
.super Ljava/lang/Object;


# instance fields
.field a:Lcrittercism/android/eo;

.field b:[B

.field c:I

.field d:Ljava/util/TreeMap;

.field private final e:Lcrittercism/android/er;


# direct methods
.method public constructor <init>(Lcrittercism/android/er;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcrittercism/android/gt;->e:Lcrittercism/android/er;

    .line 77
    iput-object v1, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    .line 78
    iput-object v1, p0, Lcrittercism/android/gt;->b:[B

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/gt;->c:I

    .line 80
    iput-object v1, p0, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    .line 81
    return-void
.end method

.method private static a(Lcrittercism/android/en;IILjava/lang/String;Lcrittercism/android/ko;)V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcrittercism/android/en;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-interface {p4, p2, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 314
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcrittercism/android/gt;->e:Lcrittercism/android/er;

    invoke-virtual {v0}, Lcrittercism/android/er;->a()V

    iget-object v0, v0, Lcrittercism/android/er;->d:Lcrittercism/android/eo;

    iput-object v0, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    .line 90
    :cond_0
    return-void
.end method

.method public final a(Lcrittercism/android/ko;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Lcrittercism/android/gt;->a()V

    .line 196
    invoke-interface {p1}, Lcrittercism/android/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 197
    const-string v6, "  "

    invoke-virtual {p0}, Lcrittercism/android/gt;->a()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    if-eqz v5, :cond_1

    const/4 v0, 0x6

    move v4, v0

    :goto_1
    if-eqz v5, :cond_2

    const/4 v0, 0x2

    :goto_2
    iget-object v3, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    iget-object v3, v3, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v7, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "tries:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    :goto_3
    move v3, v2

    :goto_4
    if-ge v3, v7, :cond_5

    iget-object v9, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    invoke-virtual {v9, v3}, Lcrittercism/android/eo;->a(I)Lcrittercism/android/eo$a;

    move-result-object v9

    invoke-virtual {v9}, Lcrittercism/android/eo$a;->c()Lcrittercism/android/en;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "try "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcrittercism/android/eo$a;->a()I

    move-result v12

    invoke-static {v12}, Lcrittercism/android/kw;->c(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcrittercism/android/eo$a;->b()I

    move-result v9

    invoke-static {v9}, Lcrittercism/android/kw;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    invoke-virtual {v10, v8, v11}, Lcrittercism/android/en;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_4

    invoke-interface {p1, v4, v9}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    invoke-interface {p1, v0, v10}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_0
    move v5, v2

    goto/16 :goto_0

    :cond_1
    move v4, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "tries:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "handlers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    iget v0, p0, Lcrittercism/android/gt;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v1

    move v4, v2

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/en;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v3, :cond_6

    sub-int v6, v0, v4

    invoke-static {v3, v4, v6, v8, p1}, Lcrittercism/android/gt;->a(Lcrittercism/android/en;IILjava/lang/String;Lcrittercism/android/ko;)V

    :cond_6
    move-object v3, v1

    move v4, v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcrittercism/android/gt;->b:[B

    array-length v0, v0

    sub-int/2addr v0, v4

    invoke-static {v3, v4, v0, v8, p1}, Lcrittercism/android/gt;->a(Lcrittercism/android/en;IILjava/lang/String;Lcrittercism/android/ko;)V

    .line 200
    :cond_8
    iget-object v0, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v0

    .line 201
    :goto_7
    if-ge v2, v1, :cond_a

    .line 202
    iget-object v0, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    invoke-virtual {v0, v2}, Lcrittercism/android/eo;->a(I)Lcrittercism/android/eo$a;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcrittercism/android/eo$a;->a()I

    move-result v3

    .line 204
    invoke-virtual {v0}, Lcrittercism/android/eo$a;->b()I

    move-result v4

    .line 205
    sub-int v5, v4, v3

    .line 207
    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_9

    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bogus exception range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_9
    invoke-interface {p1, v3}, Lcrittercism/android/ko;->d(I)V

    .line 214
    invoke-interface {p1, v5}, Lcrittercism/android/ko;->c(I)V

    .line 215
    iget-object v3, p0, Lcrittercism/android/gt;->d:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcrittercism/android/eo$a;->c()Lcrittercism/android/en;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcrittercism/android/ko;->c(I)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 218
    :cond_a
    iget-object v0, p0, Lcrittercism/android/gt;->b:[B

    invoke-interface {p1, v0}, Lcrittercism/android/ko;->a([B)V

    .line 219
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcrittercism/android/gt;->a()V

    .line 99
    iget-object v0, p0, Lcrittercism/android/gt;->a:Lcrittercism/android/eo;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
