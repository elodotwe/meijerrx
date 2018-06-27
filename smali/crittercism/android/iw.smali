.class public abstract Lcrittercism/android/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/lf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/iw$a;,
        Lcrittercism/android/iw$b;
    }
.end annotation


# instance fields
.field public final b:Lcrittercism/android/jf;

.field public final c:Lcrittercism/android/ji;

.field public final d:Lcrittercism/android/jc;

.field public final e:Lcrittercism/android/jd;


# direct methods
.method public constructor <init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    if-nez p4, :cond_2

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p1, p0, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    .line 66
    iput-object p2, p0, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    .line 67
    iput-object p3, p0, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    .line 68
    iput-object p4, p0, Lcrittercism/android/iw;->e:Lcrittercism/android/jd;

    .line 69
    return-void
.end method


# virtual methods
.method public abstract a(Lcrittercism/android/iw$b;)V
.end method

.method public final a_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcrittercism/android/iw;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x50

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget-object v3, v0, Lcrittercism/android/jf;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcrittercism/android/jf;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    const-string v0, "("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    if-nez v0, :cond_3

    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, " <-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcrittercism/android/iw;->e:Lcrittercism/android/jd;

    iget-object v0, v0, Lcrittercism/android/kv;->K:[Ljava/lang/Object;

    array-length v1, v0

    if-nez v1, :cond_4

    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcrittercism/android/jf;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    invoke-virtual {v0}, Lcrittercism/android/jc;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcrittercism/android/iw;->e:Lcrittercism/android/jd;

    invoke-virtual {v3, v0}, Lcrittercism/android/jd;->b(I)Lcrittercism/android/jc;

    move-result-object v3

    invoke-virtual {v3}, Lcrittercism/android/jc;->a_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Lcrittercism/android/kn;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 79
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
    .line 91
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 97
    invoke-virtual {p0}, Lcrittercism/android/iw;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "Insn{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, " :: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, " <- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lcrittercism/android/iw;->e:Lcrittercism/android/jd;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
