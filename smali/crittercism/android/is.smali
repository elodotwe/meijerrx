.class public final Lcrittercism/android/is;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/kz;


# instance fields
.field public final a:I

.field public final b:Lcrittercism/android/ix;

.field public final c:Lcrittercism/android/ky;

.field public final d:I


# direct methods
.method public constructor <init>(ILcrittercism/android/ix;Lcrittercism/android/ky;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-gez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcrittercism/android/ix;->g()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object v0, p2, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v0

    .line 74
    if-nez v1, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "insns.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    add-int/lit8 v0, v1, -0x2

    :goto_0
    if-ltz v0, :cond_3

    .line 79
    invoke-virtual {p2, v0}, Lcrittercism/android/ix;->a(I)Lcrittercism/android/iw;

    move-result-object v2

    iget-object v2, v2, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    .line 80
    iget v2, v2, Lcrittercism/android/jf;->c:I

    if-eq v2, v3, :cond_2

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insns["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is a branch or can throw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    :cond_3
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p2, v0}, Lcrittercism/android/ix;->a(I)Lcrittercism/android/iw;

    move-result-object v0

    .line 87
    iget-object v0, v0, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget v0, v0, Lcrittercism/android/jf;->c:I

    if-ne v0, v3, :cond_4

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "insns does not end with a branch or throwing instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4
    :try_start_1
    invoke-virtual {p3}, Lcrittercism/android/ky;->g()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    const/4 v0, -0x1

    if-ge p4, v0, :cond_5

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "primarySuccessor < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "successors == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_5
    if-ltz p4, :cond_6

    invoke-virtual {p3, p4}, Lcrittercism/android/ky;->d(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "primarySuccessor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in successors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_6
    iput p1, p0, Lcrittercism/android/is;->a:I

    .line 110
    iput-object p2, p0, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    .line 111
    iput-object p3, p0, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    .line 112
    iput p4, p0, Lcrittercism/android/is;->d:I

    .line 113
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcrittercism/android/is;->a:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 123
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 134
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcrittercism/android/is;->a:I

    invoke-static {v1}, Lcrittercism/android/kw;->b(I)Ljava/lang/String;

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
