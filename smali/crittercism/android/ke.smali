.class public final Lcrittercism/android/ke;
.super Lcrittercism/android/jl;


# static fields
.field public static final a:Lcrittercism/android/ke;


# instance fields
.field private final b:Lcrittercism/android/kg;

.field private final c:Lcrittercism/android/kg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcrittercism/android/ke;

    new-instance v1, Lcrittercism/android/kg;

    const-string v2, "TYPE"

    invoke-direct {v1, v2}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcrittercism/android/kg;

    const-string v3, "Ljava/lang/Class;"

    invoke-direct {v2, v3}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcrittercism/android/ke;-><init>(Lcrittercism/android/kg;Lcrittercism/android/kg;)V

    sput-object v0, Lcrittercism/android/ke;->a:Lcrittercism/android/ke;

    return-void
.end method

.method public constructor <init>(Lcrittercism/android/kg;Lcrittercism/android/kg;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcrittercism/android/jl;-><init>()V

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    if-nez p2, :cond_1

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    iput-object p1, p0, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    .line 56
    iput-object p2, p0, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    .line 57
    return-void
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 80
    check-cast p1, Lcrittercism/android/ke;

    .line 81
    iget-object v0, p0, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    invoke-virtual {v0, v1}, Lcrittercism/android/kg;->a(Lcrittercism/android/jl;)I

    move-result v0

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final c()Lcrittercism/android/kg;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    return-object v0
.end method

.method public final d()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/kl;->a(Ljava/lang/String;)Lcrittercism/android/kl;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "nat"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lcrittercism/android/ke;

    if-nez v1, :cond_1

    .line 67
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 66
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcrittercism/android/ke;

    .line 67
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    iget-object v2, p1, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    invoke-virtual {v1, v2}, Lcrittercism/android/kg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    iget-object v2, p1, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    invoke-virtual {v1, v2}, Lcrittercism/android/kg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcrittercism/android/ke;->b:Lcrittercism/android/kg;

    invoke-virtual {v0}, Lcrittercism/android/kg;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/ke;->c:Lcrittercism/android/kg;

    invoke-virtual {v1}, Lcrittercism/android/kg;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcrittercism/android/ke;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
