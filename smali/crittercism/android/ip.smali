.class public final Lcrittercism/android/ip;
.super Lcrittercism/android/lc;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lcrittercism/android/ip;


# instance fields
.field private final b:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcrittercism/android/ip;

    invoke-direct {v0}, Lcrittercism/android/ip;-><init>()V

    .line 36
    sput-object v0, Lcrittercism/android/ip;->a:Lcrittercism/android/ip;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcrittercism/android/lc;->L:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcrittercism/android/lc;-><init>()V

    .line 87
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ip;->b:Ljava/util/TreeMap;

    .line 88
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/ip;)I
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcrittercism/android/ip;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 111
    iget-object v0, p1, Lcrittercism/android/ip;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 113
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/in;

    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/in;

    .line 117
    invoke-virtual {v0, v1}, Lcrittercism/android/in;->a(Lcrittercism/android/in;)I

    move-result v0

    .line 118
    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const/4 v0, -0x1

    goto :goto_0

    .line 129
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcrittercism/android/ip;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcrittercism/android/ip;->a(Lcrittercism/android/ip;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 99
    instance-of v0, p1, Lcrittercism/android/ip;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 105
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 103
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcrittercism/android/ip;

    .line 105
    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p0, Lcrittercism/android/ip;->b:Ljava/util/TreeMap;

    iget-object v1, p1, Lcrittercism/android/ip;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcrittercism/android/ip;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const/4 v0, 0x1

    .line 137
    const-string v1, "annotations{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcrittercism/android/ip;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/in;

    .line 140
    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    .line 145
    :goto_1
    invoke-virtual {v0}, Lcrittercism/android/in;->a_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 148
    :cond_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
