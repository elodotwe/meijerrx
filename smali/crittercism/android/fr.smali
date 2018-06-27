.class public final Lcrittercism/android/fr;
.super Lcrittercism/android/ey;


# static fields
.field public static final b:Lcrittercism/android/ey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcrittercism/android/fr;

    invoke-direct {v0}, Lcrittercism/android/fr;-><init>()V

    sput-object v0, Lcrittercism/android/fr;->b:Lcrittercism/android/ey;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcrittercism/android/ey;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcrittercism/android/es;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 48
    iget-object v1, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/ko;Lcrittercism/android/es;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p2, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 126
    iget-object v1, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v1

    .line 134
    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v2, v0}, Lcrittercism/android/fr;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lcrittercism/android/fr;->a(Lcrittercism/android/es;I)S

    move-result v0

    invoke-interface {p1, v0}, Lcrittercism/android/ko;->c(I)V

    .line 137
    return-void
.end method

.method public final b(Lcrittercism/android/es;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    return-object v0
.end method

.method public final b(Lcrittercism/android/es;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    instance-of v0, p1, Lcrittercism/android/fi;

    if-nez v0, :cond_0

    move v0, v2

    .line 107
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v4, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 84
    iget-object v0, v4, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 103
    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {v4, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    .line 87
    invoke-virtual {v4, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 107
    :cond_1
    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v1

    invoke-static {v1}, Lcrittercism/android/fr;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fr;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-virtual {v4, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v1

    .line 96
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Lcrittercism/android/jc;->e()I

    move-result v5

    invoke-virtual {v4, v2}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v4

    invoke-virtual {v4}, Lcrittercism/android/jc;->e()I

    move-result v4

    if-eq v5, v4, :cond_1

    move v0, v2

    .line 98
    goto :goto_0

    :cond_2
    move v0, v2

    .line 107
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Lcrittercism/android/es;)Ljava/util/BitSet;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v0, p1, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    .line 115
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 117
    invoke-virtual {v0, v3}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2}, Lcrittercism/android/jc;->e()I

    move-result v2

    invoke-static {v2}, Lcrittercism/android/fr;->a(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 118
    invoke-virtual {v0, v4}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/fr;->a(I)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    .line 119
    return-object v1
.end method
