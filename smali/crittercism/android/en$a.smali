.class public final Lcrittercism/android/en$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcrittercism/android/kh;

.field public final b:I


# direct methods
.method public constructor <init>(Lcrittercism/android/kh;I)V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    if-gez p2, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    if-nez p1, :cond_1

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptionType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    iput p2, p0, Lcrittercism/android/en$a;->b:I

    .line 190
    iput-object p1, p0, Lcrittercism/android/en$a;->a:Lcrittercism/android/kh;

    .line 191
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/en$a;)I
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcrittercism/android/en$a;->b:I

    iget v1, p1, Lcrittercism/android/en$a;->b:I

    if-ge v0, v1, :cond_0

    .line 212
    const/4 v0, -0x1

    .line 217
    :goto_0
    return v0

    .line 213
    :cond_0
    iget v0, p0, Lcrittercism/android/en$a;->b:I

    iget v1, p1, Lcrittercism/android/en$a;->b:I

    if-le v0, v1, :cond_1

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcrittercism/android/en$a;->a:Lcrittercism/android/kh;

    iget-object v1, p1, Lcrittercism/android/en$a;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/kh;->a(Lcrittercism/android/jl;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, Lcrittercism/android/en$a;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/en$a;->a(Lcrittercism/android/en$a;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 202
    instance-of v1, p1, Lcrittercism/android/en$a;

    if-eqz v1, :cond_0

    .line 203
    check-cast p1, Lcrittercism/android/en$a;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/en$a;->a(Lcrittercism/android/en$a;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 206
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcrittercism/android/en$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/en$a;->a:Lcrittercism/android/kh;

    invoke-virtual {v1}, Lcrittercism/android/kh;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
