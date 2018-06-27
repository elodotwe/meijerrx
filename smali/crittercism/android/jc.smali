.class public final Lcrittercism/android/jc;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/km;
.implements Lcrittercism/android/lf;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/jc$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static final b:Lcrittercism/android/jc$a;


# instance fields
.field private final c:I

.field private final d:Lcrittercism/android/km;

.field private final e:Lcrittercism/android/iy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcrittercism/android/jc;->a:Ljava/util/HashMap;

    .line 41
    new-instance v0, Lcrittercism/android/jc$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/jc$a;-><init>(B)V

    sput-object v0, Lcrittercism/android/jc;->b:Lcrittercism/android/jc$a;

    return-void
.end method

.method private constructor <init>(ILcrittercism/android/km;Lcrittercism/android/iy;)V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    if-gez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reg < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    if-nez p2, :cond_1

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    iput p1, p0, Lcrittercism/android/jc;->c:I

    .line 161
    iput-object p2, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    .line 162
    iput-object p3, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    .line 163
    return-void
.end method

.method private synthetic constructor <init>(ILcrittercism/android/km;Lcrittercism/android/iy;B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/jc;-><init>(ILcrittercism/android/km;Lcrittercism/android/iy;)V

    return-void
.end method

.method static synthetic a(ILcrittercism/android/km;Lcrittercism/android/iy;)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcrittercism/android/jc;->d(ILcrittercism/android/km;Lcrittercism/android/iy;)I

    move-result v0

    return v0
.end method

.method public static a(ILcrittercism/android/km;)Lcrittercism/android/jc;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcrittercism/android/jc;->b(ILcrittercism/android/km;Lcrittercism/android/iy;)Lcrittercism/android/jc;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 570
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 572
    invoke-virtual {p0}, Lcrittercism/android/jc;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    iget-object v0, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-virtual {v0}, Lcrittercism/android/iy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_0
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v0}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v0

    .line 580
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 582
    iget-object v2, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    if-eq v0, v2, :cond_1

    .line 583
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    instance-of v0, v0, Lcrittercism/android/kg;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    check-cast v0, Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 586
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    instance-of v0, v0, Lcrittercism/android/jl;

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v0}, Lcrittercism/android/km;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 589
    :cond_3
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lcrittercism/android/jc;ILcrittercism/android/km;Lcrittercism/android/iy;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/jc;->c(ILcrittercism/android/km;Lcrittercism/android/iy;)Z

    move-result v0

    return v0
.end method

.method private static b(ILcrittercism/android/km;Lcrittercism/android/iy;)Lcrittercism/android/jc;
    .locals 6

    .prologue
    .line 66
    sget-object v1, Lcrittercism/android/jc;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcrittercism/android/jc;->b:Lcrittercism/android/jc$a;

    iput p0, v0, Lcrittercism/android/jc$a;->a:I

    iput-object p1, v0, Lcrittercism/android/jc$a;->b:Lcrittercism/android/km;

    iput-object p2, v0, Lcrittercism/android/jc$a;->c:Lcrittercism/android/iy;

    .line 68
    sget-object v0, Lcrittercism/android/jc;->a:Ljava/util/HashMap;

    sget-object v2, Lcrittercism/android/jc;->b:Lcrittercism/android/jc$a;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/jc;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    monitor-exit v1

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_0
    sget-object v2, Lcrittercism/android/jc;->b:Lcrittercism/android/jc$a;

    new-instance v0, Lcrittercism/android/jc;

    iget v3, v2, Lcrittercism/android/jc$a;->a:I

    iget-object v4, v2, Lcrittercism/android/jc$a;->b:Lcrittercism/android/km;

    iget-object v2, v2, Lcrittercism/android/jc$a;->c:Lcrittercism/android/iy;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v2, v5}, Lcrittercism/android/jc;-><init>(ILcrittercism/android/km;Lcrittercism/android/iy;B)V

    .line 75
    sget-object v2, Lcrittercism/android/jc;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(ILcrittercism/android/km;Lcrittercism/android/iy;)Z
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcrittercism/android/jc;->c:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-eq v0, p3, :cond_0

    iget-object v0, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-virtual {v0, p3}, Lcrittercism/android/iy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(ILcrittercism/android/km;Lcrittercism/android/iy;)I
    .locals 2

    .prologue
    .line 279
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcrittercism/android/iy;->hashCode()I

    move-result v0

    .line 281
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    .line 282
    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcrittercism/android/jc;
    .locals 2

    .prologue
    .line 483
    iget v0, p0, Lcrittercism/android/jc;->c:I

    if-ne v0, p1, :cond_0

    .line 487
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    iget-object v1, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-static {p1, v0, v1}, Lcrittercism/android/jc;->b(ILcrittercism/android/km;Lcrittercism/android/iy;)Lcrittercism/android/jc;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/km;)Lcrittercism/android/jc;
    .locals 2

    .prologue
    .line 498
    iget v0, p0, Lcrittercism/android/jc;->c:I

    iget-object v1, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-static {v0, p1, v1}, Lcrittercism/android/jc;->b(ILcrittercism/android/km;Lcrittercism/android/iy;)Lcrittercism/android/jc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/jc;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1}, Lcrittercism/android/jc;->b(Lcrittercism/android/jc;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcrittercism/android/jc;->c:I

    iget v2, p1, Lcrittercism/android/jc;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcrittercism/android/jc;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcrittercism/android/jc;
    .locals 1

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 513
    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcrittercism/android/jc;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcrittercism/android/jc;->a(I)Lcrittercism/android/jc;

    move-result-object p0

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v0}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcrittercism/android/jc;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 208
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v1}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v1

    iget-object v2, p1, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v2}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcrittercism/android/kl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    iget-object v2, p1, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    iget-object v2, p1, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-virtual {v1, v2}, Lcrittercism/android/iy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v0}, Lcrittercism/android/km;->c()I

    move-result v0

    return v0
.end method

.method public final c(Lcrittercism/android/jc;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 242
    iget v2, p0, Lcrittercism/android/jc;->c:I

    iget v3, p1, Lcrittercism/android/jc;->c:I

    if-ge v2, v3, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    iget v2, p0, Lcrittercism/android/jc;->c:I

    iget v3, p1, Lcrittercism/android/jc;->c:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 245
    goto :goto_0

    .line 248
    :cond_2
    iget-object v2, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v2}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v2

    iget-object v3, p1, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v3}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcrittercism/android/kl;->a(Lcrittercism/android/kl;)I

    move-result v2

    .line 250
    if-eqz v2, :cond_3

    move v0, v2

    .line 251
    goto :goto_0

    .line 254
    :cond_3
    iget-object v2, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-nez v2, :cond_4

    .line 255
    iget-object v1, p1, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :cond_4
    iget-object v0, p1, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    if-nez v0, :cond_5

    move v0, v1

    .line 257
    goto :goto_0

    .line 260
    :cond_5
    iget-object v0, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    iget-object v1, p1, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-virtual {v0, v1}, Lcrittercism/android/iy;->a(Lcrittercism/android/iy;)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lcrittercism/android/jc;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/jc;->c(Lcrittercism/android/jc;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v0}, Lcrittercism/android/km;->d()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcrittercism/android/jc;->c:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 168
    instance-of v0, p1, Lcrittercism/android/jc;

    if-nez v0, :cond_1

    .line 169
    instance-of v0, p1, Lcrittercism/android/jc$a;

    if-eqz v0, :cond_0

    .line 170
    check-cast p1, Lcrittercism/android/jc$a;

    .line 171
    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p1, Lcrittercism/android/jc$a;->a:I

    iget-object v1, p1, Lcrittercism/android/jc$a;->b:Lcrittercism/android/km;

    iget-object v2, p1, Lcrittercism/android/jc$a;->c:Lcrittercism/android/iy;

    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/jc;->c(ILcrittercism/android/km;Lcrittercism/android/iy;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 173
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_1
    check-cast p1, Lcrittercism/android/jc;

    .line 177
    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p1, Lcrittercism/android/jc;->c:I

    iget-object v1, p1, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    iget-object v2, p1, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-direct {p0, v0, v1, v2}, Lcrittercism/android/jc;->c(ILcrittercism/android/km;Lcrittercism/android/iy;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Lcrittercism/android/km;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    return-object v0
.end method

.method public final g()Lcrittercism/android/iy;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    return-object v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 360
    iget v0, p0, Lcrittercism/android/jc;->c:I

    invoke-virtual {p0}, Lcrittercism/android/jc;->i()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 266
    iget v0, p0, Lcrittercism/android/jc;->c:I

    iget-object v1, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    iget-object v2, p0, Lcrittercism/android/jc;->e:Lcrittercism/android/iy;

    invoke-static {v0, v1, v2}, Lcrittercism/android/jc;->d(ILcrittercism/android/km;Lcrittercism/android/iy;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v0}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kl;->f()I

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcrittercism/android/jc;->d:Lcrittercism/android/km;

    invoke-interface {v0}, Lcrittercism/android/km;->b()Lcrittercism/android/kl;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/kl;->g()Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 405
    iget v0, p0, Lcrittercism/android/jc;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcrittercism/android/jc;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
