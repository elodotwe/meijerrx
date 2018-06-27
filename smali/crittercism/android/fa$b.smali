.class public final Lcrittercism/android/fa$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcrittercism/android/fa$a;

.field private final c:Lcrittercism/android/jc;

.field private final d:Lcrittercism/android/kh;


# direct methods
.method public constructor <init>(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    if-gez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    if-nez p2, :cond_1

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disposition == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Lcrittercism/android/jc;->g()Lcrittercism/android/iy;

    move-result-object v0

    if-nez v0, :cond_2

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec.getLocalItem() == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    iput p1, p0, Lcrittercism/android/fa$b;->a:I

    .line 161
    iput-object p2, p0, Lcrittercism/android/fa$b;->b:Lcrittercism/android/fa$a;

    .line 162
    iput-object p3, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    .line 163
    invoke-virtual {p3}, Lcrittercism/android/jc;->b()Lcrittercism/android/kl;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/kh;->a(Lcrittercism/android/kl;)Lcrittercism/android/kh;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/fa$b;->d:Lcrittercism/android/kh;

    .line 164
    return-void
.end method

.method private b(Lcrittercism/android/fa$b;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 190
    iget v2, p0, Lcrittercism/android/fa$b;->a:I

    iget v3, p1, Lcrittercism/android/fa$b;->a:I

    if-ge v2, v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    iget v2, p0, Lcrittercism/android/fa$b;->a:I

    iget v3, p1, Lcrittercism/android/fa$b;->a:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 193
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcrittercism/android/fa$b;->c()Z

    move-result v2

    .line 197
    invoke-virtual {p1}, Lcrittercism/android/fa$b;->c()Z

    move-result v3

    .line 199
    if-eq v2, v3, :cond_3

    .line 200
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    iget-object v1, p1, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-virtual {v0, v1}, Lcrittercism/android/jc;->c(Lcrittercism/android/jc;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcrittercism/android/fa$b;->a:I

    return v0
.end method

.method public final a(Lcrittercism/android/fa$a;)Lcrittercism/android/fa$b;
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcrittercism/android/fa$b;->b:Lcrittercism/android/fa$a;

    if-ne p1, v0, :cond_0

    .line 315
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcrittercism/android/fa$b;

    iget v1, p0, Lcrittercism/android/fa$b;->a:I

    iget-object v2, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-direct {v0, v1, p1, v2}, Lcrittercism/android/fa$b;-><init>(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/fa$b;)Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p1, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-virtual {p0, v0}, Lcrittercism/android/fa$b;->a(Lcrittercism/android/jc;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcrittercism/android/jc;)Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-virtual {v0, p1}, Lcrittercism/android/jc;->a(Lcrittercism/android/jc;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/fa$a;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcrittercism/android/fa$b;->b:Lcrittercism/android/fa$a;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcrittercism/android/fa$b;->b:Lcrittercism/android/fa$a;

    sget-object v1, Lcrittercism/android/fa$a;->a:Lcrittercism/android/fa$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Lcrittercism/android/fa$b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcrittercism/android/fa$b;->b(Lcrittercism/android/fa$b;)I

    move-result v0

    return v0
.end method

.method public final d()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-virtual {v0}, Lcrittercism/android/jc;->g()Lcrittercism/android/iy;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/iy;->a:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final e()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-virtual {v0}, Lcrittercism/android/jc;->g()Lcrittercism/android/iy;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/iy;->b:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 174
    instance-of v1, p1, Lcrittercism/android/fa$b;

    if-nez v1, :cond_1

    .line 178
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/fa$b;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcrittercism/android/fa$b;->b(Lcrittercism/android/fa$b;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Lcrittercism/android/kh;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcrittercism/android/fa$b;->d:Lcrittercism/android/kh;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-virtual {v0}, Lcrittercism/android/jc;->e()I

    move-result v0

    return v0
.end method

.method public final h()Lcrittercism/android/jc;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcrittercism/android/fa$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/fa$b;->b:Lcrittercism/android/fa$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/fa$b;->c:Lcrittercism/android/jc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
