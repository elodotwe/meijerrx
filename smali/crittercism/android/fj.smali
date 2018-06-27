.class public final Lcrittercism/android/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/em;


# instance fields
.field private final a:Lcrittercism/android/jg;

.field private final b:[I

.field private final c:Lcrittercism/android/el;


# direct methods
.method public constructor <init>(Lcrittercism/android/jg;[ILcrittercism/android/el;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    if-nez p2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    if-nez p3, :cond_2

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addresses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    iput-object p1, p0, Lcrittercism/android/fj;->a:Lcrittercism/android/jg;

    .line 70
    iput-object p2, p0, Lcrittercism/android/fj;->b:[I

    .line 71
    iput-object p3, p0, Lcrittercism/android/fj;->c:Lcrittercism/android/el;

    .line 72
    return-void
.end method

.method private static a(Lcrittercism/android/is;Lcrittercism/android/el;)Lcrittercism/android/en;
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 218
    iget-object v4, p0, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    .line 219
    invoke-virtual {v4}, Lcrittercism/android/ky;->a()I

    move-result v1

    .line 220
    iget v2, p0, Lcrittercism/android/is;->d:I

    .line 221
    iget-object v0, p0, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    invoke-virtual {v0}, Lcrittercism/android/ix;->b()Lcrittercism/android/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/iw;->c()Lcrittercism/android/kn;

    move-result-object v5

    .line 222
    invoke-interface {v5}, Lcrittercism/android/kn;->a()I

    move-result v0

    .line 224
    if-nez v0, :cond_0

    .line 225
    sget-object v0, Lcrittercism/android/en;->a:Lcrittercism/android/en;

    .line 262
    :goto_0
    return-object v0

    .line 228
    :cond_0
    if-ne v2, v6, :cond_1

    if-ne v1, v0, :cond_2

    :cond_1
    if-eq v2, v6, :cond_3

    add-int/lit8 v6, v0, 0x1

    if-ne v1, v6, :cond_2

    invoke-virtual {v4, v0}, Lcrittercism/android/ky;->a(I)I

    move-result v1

    if-eq v2, v1, :cond_3

    .line 237
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen: weird successors list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v3

    .line 245
    :goto_1
    if-ge v1, v0, :cond_4

    .line 246
    invoke-interface {v5, v1}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v2

    .line 247
    sget-object v6, Lcrittercism/android/kl;->o:Lcrittercism/android/kl;

    invoke-virtual {v2, v6}, Lcrittercism/android/kl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    add-int/lit8 v0, v1, 0x1

    .line 253
    :cond_4
    new-instance v1, Lcrittercism/android/en;

    invoke-direct {v1, v0}, Lcrittercism/android/en;-><init>(I)V

    move v2, v3

    .line 255
    :goto_2
    if-ge v2, v0, :cond_6

    .line 256
    new-instance v6, Lcrittercism/android/kh;

    invoke-interface {v5, v2}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v7

    invoke-direct {v6, v7}, Lcrittercism/android/kh;-><init>(Lcrittercism/android/kl;)V

    .line 257
    invoke-virtual {v4, v2}, Lcrittercism/android/ky;->a(I)I

    move-result v7

    iget-object v8, p1, Lcrittercism/android/el;->a:[Lcrittercism/android/ep;

    aget-object v7, v8, v7

    .line 258
    invoke-virtual {v7}, Lcrittercism/android/ep;->d()I

    move-result v7

    invoke-virtual {v1, v2, v6, v7}, Lcrittercism/android/en;->a(ILcrittercism/android/kh;I)V

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 245
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    :cond_6
    iput-boolean v3, v1, Lcrittercism/android/lc;->L:Z

    move-object v0, v1

    .line 262
    goto :goto_0
.end method

.method private static a(Lcrittercism/android/is;Lcrittercism/android/is;Lcrittercism/android/en;Lcrittercism/android/el;)Lcrittercism/android/eo$a;
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p3, p0}, Lcrittercism/android/el;->a(Lcrittercism/android/is;)Lcrittercism/android/ep;

    move-result-object v0

    .line 284
    invoke-virtual {p3, p1}, Lcrittercism/android/el;->b(Lcrittercism/android/is;)Lcrittercism/android/ep;

    move-result-object v1

    .line 286
    new-instance v2, Lcrittercism/android/eo$a;

    invoke-virtual {v0}, Lcrittercism/android/ep;->d()I

    move-result v0

    invoke-virtual {v1}, Lcrittercism/android/ep;->d()I

    move-result v1

    invoke-direct {v2, v0, v1, p2}, Lcrittercism/android/eo$a;-><init>(IILcrittercism/android/en;)V

    return-object v2
.end method


# virtual methods
.method public final a()Lcrittercism/android/eo;
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, Lcrittercism/android/fj;->a:Lcrittercism/android/jg;

    iget-object v9, p0, Lcrittercism/android/fj;->b:[I

    iget-object v10, p0, Lcrittercism/android/fj;->c:Lcrittercism/android/el;

    array-length v11, v9

    iget-object v12, v0, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v3, Lcrittercism/android/en;->a:Lcrittercism/android/en;

    move v8, v5

    move-object v2, v1

    :goto_0
    if-ge v8, v11, :cond_6

    aget v0, v9, v8

    invoke-virtual {v12, v0}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v0

    iget-object v4, v0, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    invoke-virtual {v4}, Lcrittercism/android/ix;->b()Lcrittercism/android/iw;

    move-result-object v4

    iget-object v4, v4, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget-object v4, v4, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    invoke-interface {v4}, Lcrittercism/android/kn;->a()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    :goto_1
    if-eqz v4, :cond_a

    invoke-static {v0, v10}, Lcrittercism/android/fj;->a(Lcrittercism/android/is;Lcrittercism/android/el;)Lcrittercism/android/en;

    move-result-object v4

    iget-object v6, v3, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v6, v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v4}, Lcrittercism/android/en;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v10, v2}, Lcrittercism/android/el;->a(Lcrittercism/android/is;)Lcrittercism/android/ep;

    move-result-object v6

    invoke-virtual {v6}, Lcrittercism/android/ep;->d()I

    move-result v6

    invoke-virtual {v10, v0}, Lcrittercism/android/el;->b(Lcrittercism/android/is;)Lcrittercism/android/ep;

    move-result-object v14

    invoke-virtual {v14}, Lcrittercism/android/ep;->d()I

    move-result v14

    sub-int v6, v14, v6

    const v14, 0xffff

    if-gt v6, v14, :cond_3

    move v6, v7

    :goto_2
    if-eqz v6, :cond_4

    move-object v1, v2

    move-object v2, v3

    :goto_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    iget-object v6, v3, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v6, v6

    if-eqz v6, :cond_5

    invoke-static {v2, v1, v3, v10}, Lcrittercism/android/fj;->a(Lcrittercism/android/is;Lcrittercism/android/is;Lcrittercism/android/en;Lcrittercism/android/el;)Lcrittercism/android/eo$a;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v1, v0

    move-object v2, v4

    goto :goto_3

    :cond_6
    iget-object v0, v3, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_7

    invoke-static {v2, v1, v3, v10}, Lcrittercism/android/fj;->a(Lcrittercism/android/is;Lcrittercism/android/is;Lcrittercism/android/en;Lcrittercism/android/el;)Lcrittercism/android/eo$a;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    sget-object v0, Lcrittercism/android/eo;->a:Lcrittercism/android/eo;

    :goto_4
    return-object v0

    :cond_8
    new-instance v1, Lcrittercism/android/eo;

    invoke-direct {v1, v3}, Lcrittercism/android/eo;-><init>(I)V

    move v2, v5

    :goto_5
    if-ge v2, v3, :cond_9

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/eo$a;

    invoke-virtual {v1, v2, v0}, Lcrittercism/android/eo;->a(ILcrittercism/android/eo$a;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_9
    iput-boolean v5, v1, Lcrittercism/android/lc;->L:Z

    move-object v0, v1

    goto :goto_4

    :cond_a
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcrittercism/android/fj;->a:Lcrittercism/android/jg;

    iget-object v2, v1, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 82
    iget-object v1, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v1

    move v1, v0

    .line 84
    :goto_0
    if-ge v1, v3, :cond_0

    .line 85
    invoke-virtual {v2, v1}, Lcrittercism/android/it;->a(I)Lcrittercism/android/is;

    move-result-object v4

    .line 86
    iget-object v4, v4, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    invoke-virtual {v4}, Lcrittercism/android/ix;->b()Lcrittercism/android/iw;

    move-result-object v4

    invoke-virtual {v4}, Lcrittercism/android/iw;->c()Lcrittercism/android/kn;

    move-result-object v4

    .line 87
    invoke-interface {v4}, Lcrittercism/android/kn;->a()I

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 92
    :cond_0
    return v0

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/util/HashSet;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v3, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 98
    iget-object v0, p0, Lcrittercism/android/fj;->a:Lcrittercism/android/jg;

    iget-object v4, v0, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 99
    iget-object v0, v4, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v5, v0

    move v2, v1

    .line 101
    :goto_0
    if-ge v2, v5, :cond_1

    .line 102
    invoke-virtual {v4, v2}, Lcrittercism/android/it;->a(I)Lcrittercism/android/is;

    move-result-object v0

    .line 103
    iget-object v0, v0, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    invoke-virtual {v0}, Lcrittercism/android/ix;->b()Lcrittercism/android/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/iw;->c()Lcrittercism/android/kn;

    move-result-object v6

    .line 104
    invoke-interface {v6}, Lcrittercism/android/kn;->a()I

    move-result v7

    move v0, v1

    .line 106
    :goto_1
    if-ge v0, v7, :cond_0

    .line 107
    invoke-interface {v6, v0}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 111
    :cond_1
    return-object v3
.end method
