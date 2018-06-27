.class public final Lcrittercism/android/ff;
.super Lcrittercism/android/kv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ff$a;
    }
.end annotation


# static fields
.field public static final a:Lcrittercism/android/ff;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcrittercism/android/ff;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/ff;-><init>(I)V

    sput-object v0, Lcrittercism/android/ff;->a:Lcrittercism/android/ff;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 121
    return-void
.end method

.method public static a(Lcrittercism/android/et;I)Lcrittercism/android/ff;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 59
    packed-switch p1, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus howMuch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    sget-object v0, Lcrittercism/android/ff;->a:Lcrittercism/android/ff;

    .line 111
    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    sget-object v6, Lcrittercism/android/ji;->a:Lcrittercism/android/ji;

    .line 75
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v7, v0

    .line 76
    new-array v8, v7, [Lcrittercism/android/ff$a;

    move v5, v2

    move v0, v2

    move v1, v2

    move-object v3, v6

    .line 80
    :goto_1
    if-ge v5, v7, :cond_3

    .line 81
    invoke-virtual {p0, v5}, Lcrittercism/android/et;->a(I)Lcrittercism/android/es;

    move-result-object v9

    .line 83
    instance-of v4, v9, Lcrittercism/android/ep;

    if-eqz v4, :cond_1

    .line 84
    const/4 v1, 0x1

    .line 80
    :cond_0
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 88
    :cond_1
    iget-object v4, v9, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    .line 90
    invoke-virtual {v4, v6}, Lcrittercism/android/ji;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v4, v3}, Lcrittercism/android/ji;->a(Lcrittercism/android/ji;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 91
    const/4 v10, 0x3

    if-ne p1, v10, :cond_2

    if-eqz v1, :cond_0

    .line 99
    :cond_2
    new-instance v1, Lcrittercism/android/ff$a;

    invoke-virtual {v9}, Lcrittercism/android/es;->d()I

    move-result v3

    invoke-direct {v1, v3, v4}, Lcrittercism/android/ff$a;-><init>(ILcrittercism/android/ji;)V

    aput-object v1, v8, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move-object v3, v4

    .line 102
    goto :goto_2

    .line 105
    :cond_3
    new-instance v1, Lcrittercism/android/ff;

    invoke-direct {v1, v0}, Lcrittercism/android/ff;-><init>(I)V

    move v3, v2

    .line 106
    :goto_3
    if-ge v3, v0, :cond_4

    .line 107
    aget-object v4, v8, v3

    invoke-virtual {v1, v3, v4}, Lcrittercism/android/ff;->a(ILjava/lang/Object;)V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 110
    :cond_4
    iput-boolean v2, v1, Lcrittercism/android/lc;->L:Z

    move-object v0, v1

    .line 111
    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Lcrittercism/android/ff$a;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcrittercism/android/ff;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ff$a;

    return-object v0
.end method
