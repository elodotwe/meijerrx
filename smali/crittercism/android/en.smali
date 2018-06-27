.class public final Lcrittercism/android/en;
.super Lcrittercism/android/kv;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/en$a;
    }
.end annotation


# static fields
.field public static final a:Lcrittercism/android/en;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcrittercism/android/en;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/en;-><init>(I)V

    sput-object v0, Lcrittercism/android/en;->a:Lcrittercism/android/en;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcrittercism/android/kv;-><init>(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/en;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v1, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v3, v1

    .line 143
    iget-object v1, p1, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v4, v1

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    .line 146
    :goto_1
    if-ge v2, v5, :cond_3

    .line 147
    invoke-virtual {p0, v2}, Lcrittercism/android/en;->a(I)Lcrittercism/android/en$a;

    move-result-object v1

    .line 148
    invoke-virtual {p1, v2}, Lcrittercism/android/en;->a(I)Lcrittercism/android/en$a;

    move-result-object v6

    .line 149
    invoke-virtual {v1, v6}, Lcrittercism/android/en$a;->a(Lcrittercism/android/en$a;)I

    move-result v1

    .line 150
    if-eqz v1, :cond_2

    move v0, v1

    .line 151
    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 155
    :cond_3
    if-ge v3, v4, :cond_4

    .line 156
    const/4 v0, -0x1

    goto :goto_0

    .line 157
    :cond_4
    if-le v3, v4, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(I)Lcrittercism/android/en$a;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcrittercism/android/en;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/en$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 68
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v2, v0

    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, "catch "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 75
    invoke-virtual {p0, v0}, Lcrittercism/android/en;->a(I)Lcrittercism/android/en$a;

    move-result-object v3

    .line 77
    if-eqz v0, :cond_0

    .line 78
    const-string v4, ",\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcrittercism/android/en;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    const-string v4, "<any>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :goto_1
    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget v3, v3, Lcrittercism/android/en$a;->b:I

    invoke-static {v3}, Lcrittercism/android/kw;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v4, v3, Lcrittercism/android/en$a;->a:Lcrittercism/android/kh;

    invoke-virtual {v4}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILcrittercism/android/kh;I)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcrittercism/android/en$a;

    invoke-direct {v0, p2, p3}, Lcrittercism/android/en$a;-><init>(Lcrittercism/android/kh;I)V

    invoke-virtual {p0, p1, v0}, Lcrittercism/android/en;->a(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcrittercism/android/en;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v0, v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcrittercism/android/en;->a(I)Lcrittercism/android/en$a;

    move-result-object v0

    .line 111
    iget-object v0, v0, Lcrittercism/android/en$a;->a:Lcrittercism/android/kh;

    sget-object v1, Lcrittercism/android/kh;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/kh;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lcrittercism/android/en;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/en;->a(Lcrittercism/android/en;)I

    move-result v0

    return v0
.end method
