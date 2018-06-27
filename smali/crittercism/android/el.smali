.class public final Lcrittercism/android/el;
.super Ljava/lang/Object;


# instance fields
.field final a:[Lcrittercism/android/ep;

.field private final b:[Lcrittercism/android/ep;

.field private final c:[Lcrittercism/android/ep;


# direct methods
.method public constructor <init>(Lcrittercism/android/jg;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 51
    invoke-virtual {v0}, Lcrittercism/android/it;->d()I

    move-result v0

    .line 53
    new-array v1, v0, [Lcrittercism/android/ep;

    iput-object v1, p0, Lcrittercism/android/el;->a:[Lcrittercism/android/ep;

    .line 54
    new-array v1, v0, [Lcrittercism/android/ep;

    iput-object v1, p0, Lcrittercism/android/el;->b:[Lcrittercism/android/ep;

    .line 55
    new-array v0, v0, [Lcrittercism/android/ep;

    iput-object v0, p0, Lcrittercism/android/el;->c:[Lcrittercism/android/ep;

    .line 57
    invoke-direct {p0, p1}, Lcrittercism/android/el;->a(Lcrittercism/android/jg;)V

    .line 58
    return-void
.end method

.method private a(Lcrittercism/android/jg;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v2, p1, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    .line 128
    iget-object v0, v2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v0

    move v0, v1

    .line 130
    :goto_0
    if-ge v0, v3, :cond_0

    .line 131
    invoke-virtual {v2, v0}, Lcrittercism/android/it;->a(I)Lcrittercism/android/is;

    move-result-object v4

    .line 132
    iget v5, v4, Lcrittercism/android/is;->a:I

    .line 133
    iget-object v6, v4, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    invoke-virtual {v6, v1}, Lcrittercism/android/ix;->a(I)Lcrittercism/android/iw;

    move-result-object v6

    .line 135
    iget-object v7, p0, Lcrittercism/android/el;->a:[Lcrittercism/android/ep;

    new-instance v8, Lcrittercism/android/ep;

    iget-object v6, v6, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    invoke-direct {v8, v6}, Lcrittercism/android/ep;-><init>(Lcrittercism/android/ji;)V

    aput-object v8, v7, v5

    .line 137
    iget-object v4, v4, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    invoke-virtual {v4}, Lcrittercism/android/ix;->b()Lcrittercism/android/iw;

    move-result-object v4

    iget-object v4, v4, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    .line 139
    iget-object v6, p0, Lcrittercism/android/el;->b:[Lcrittercism/android/ep;

    new-instance v7, Lcrittercism/android/ep;

    invoke-direct {v7, v4}, Lcrittercism/android/ep;-><init>(Lcrittercism/android/ji;)V

    aput-object v7, v6, v5

    .line 140
    iget-object v6, p0, Lcrittercism/android/el;->c:[Lcrittercism/android/ep;

    new-instance v7, Lcrittercism/android/ep;

    invoke-direct {v7, v4}, Lcrittercism/android/ep;-><init>(Lcrittercism/android/ji;)V

    aput-object v7, v6, v5

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/is;)Lcrittercism/android/ep;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/el;->b:[Lcrittercism/android/ep;

    iget v1, p1, Lcrittercism/android/is;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b(Lcrittercism/android/is;)Lcrittercism/android/ep;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcrittercism/android/el;->c:[Lcrittercism/android/ep;

    iget v1, p1, Lcrittercism/android/is;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method
