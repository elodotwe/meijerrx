.class public final Lcrittercism/android/ih;
.super Lcrittercism/android/hv;


# instance fields
.field final a:Ljava/util/List;

.field private final c:Lcrittercism/android/hn;


# direct methods
.method public constructor <init>(Lcrittercism/android/hn;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 56
    invoke-static {p2}, Lcrittercism/android/ih;->a(Ljava/util/List;)I

    move-result v1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Lcrittercism/android/hv;->b_()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-static {p2}, Lcrittercism/android/ih;->a(Ljava/util/List;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcrittercism/android/hv;-><init>(II)V

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "itemType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p2, p0, Lcrittercism/android/ih;->a:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lcrittercism/android/ih;->c:Lcrittercism/android/hn;

    .line 64
    return-void
.end method

.method private static a(Ljava/util/List;)I
    .locals 2

    .prologue
    .line 77
    const/4 v1, 0x4

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    iget v0, v0, Lcrittercism/android/hv;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 80
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "items.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "items == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcrittercism/android/ih;->c:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcrittercism/android/ih;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    .line 123
    invoke-virtual {v0, p1}, Lcrittercism/android/hv;->a(Lcrittercism/android/ha;)V

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 8

    .prologue
    const/4 v0, -0x1

    .line 160
    iget v1, p0, Lcrittercism/android/hv;->b:I

    add-int v2, p2, v1

    .line 162
    const/4 v1, 0x1

    .line 166
    iget-object v3, p0, Lcrittercism/android/ih;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    .line 167
    invoke-virtual {v0}, Lcrittercism/android/hv;->b_()I

    move-result v5

    .line 168
    if-eqz v3, :cond_1

    .line 170
    iget v1, v0, Lcrittercism/android/hv;->b:I

    .line 171
    const/4 v3, 0x0

    move v2, v5

    .line 183
    :cond_0
    invoke-virtual {v0, p1, v4}, Lcrittercism/android/hv;->b(Lcrittercism/android/hz;I)I

    move-result v0

    add-int/2addr v0, v5

    move v4, v0

    .line 184
    goto :goto_0

    .line 173
    :cond_1
    if-eq v5, v2, :cond_2

    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "item size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    iget v7, v0, Lcrittercism/android/hv;->b:I

    if-eq v7, v1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "item alignment mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_3
    return-void
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcrittercism/android/ih;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 192
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/ih;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcrittercism/android/hm;->a()Lcrittercism/android/hn;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/hn;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 194
    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 197
    :cond_0
    invoke-interface {p2, v0}, Lcrittercism/android/ko;->d(I)V

    .line 199
    iget-object v0, p0, Lcrittercism/android/ih;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hv;

    .line 200
    invoke-virtual {v0, p1, p2}, Lcrittercism/android/hv;->a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 113
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object v1, p0, Lcrittercism/android/ih;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
