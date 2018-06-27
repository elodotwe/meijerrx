.class public final Lcrittercism/android/gp;
.super Lcrittercism/android/hv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/gp$1;,
        Lcrittercism/android/gp$a;
    }
.end annotation


# static fields
.field private static final a:Lcrittercism/android/gp$a;


# instance fields
.field private final c:Lcrittercism/android/in;

.field private d:Lcrittercism/android/id;

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcrittercism/android/gp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrittercism/android/gp$a;-><init>(B)V

    sput-object v0, Lcrittercism/android/gp;->a:Lcrittercism/android/gp$a;

    return-void
.end method

.method static synthetic a(Lcrittercism/android/gp;)Lcrittercism/android/id;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcrittercism/android/gp;->d:Lcrittercism/android/id;

    return-object v0
.end method

.method public static a([Lcrittercism/android/gp;)V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcrittercism/android/gp;->a:Lcrittercism/android/gp$a;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected final a(Lcrittercism/android/hv;)I
    .locals 2

    .prologue
    .line 131
    check-cast p1, Lcrittercism/android/gp;

    .line 133
    iget-object v0, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    iget-object v1, p1, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    invoke-virtual {v0, v1}, Lcrittercism/android/in;->a(Lcrittercism/android/in;)I

    move-result v0

    return v0
.end method

.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcrittercism/android/hn;->p:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    iget-object v1, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    iget-object v1, v1, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/ie;->a(Lcrittercism/android/kh;)Lcrittercism/android/id;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/gp;->d:Lcrittercism/android/id;

    .line 145
    iget-object v0, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    invoke-static {p1, v0}, Lcrittercism/android/ii;->a(Lcrittercism/android/ha;Lcrittercism/android/in;)V

    .line 146
    return-void
.end method

.method protected final a(Lcrittercism/android/hz;I)V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lcrittercism/android/kr;

    invoke-direct {v0}, Lcrittercism/android/kr;-><init>()V

    .line 154
    new-instance v1, Lcrittercism/android/ii;

    iget-object v2, p1, Lcrittercism/android/hz;->a:Lcrittercism/android/ha;

    invoke-direct {v1, v2, v0}, Lcrittercism/android/ii;-><init>(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 156
    iget-object v2, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/ii;->a(Lcrittercism/android/in;Z)V

    .line 157
    invoke-virtual {v0}, Lcrittercism/android/kr;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/gp;->e:[B

    .line 160
    iget-object v0, p0, Lcrittercism/android/gp;->e:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcrittercism/android/gp;->a(I)V

    .line 161
    return-void
.end method

.method public final a(Lcrittercism/android/ko;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    iget-object v1, v1, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    invoke-virtual {v1}, Lcrittercism/android/io;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    iget-object v1, v1, Lcrittercism/android/in;->a:Lcrittercism/android/kh;

    invoke-virtual {v1}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    invoke-virtual {v0}, Lcrittercism/android/in;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/iq;

    .line 177
    iget-object v2, v0, Lcrittercism/android/iq;->a:Lcrittercism/android/kg;

    .line 178
    iget-object v0, v0, Lcrittercism/android/iq;->b:Lcrittercism/android/jl;

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcrittercism/android/ii;->a(Lcrittercism/android/jl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method protected final a_(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 188
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v0

    .line 189
    iget-object v1, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    iget-object v1, v1, Lcrittercism/android/in;->b:Lcrittercism/android/io;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/gp;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  visibility: VISBILITY_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 196
    :cond_0
    sget-object v2, Lcrittercism/android/gp$1;->a:[I

    invoke-virtual {v1}, Lcrittercism/android/io;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :pswitch_0
    invoke-interface {p2, v5}, Lcrittercism/android/ko;->b(I)V

    .line 206
    :goto_0
    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lcrittercism/android/ii;

    invoke-direct {v0, p1, p2}, Lcrittercism/android/ii;-><init>(Lcrittercism/android/ha;Lcrittercism/android/ko;)V

    .line 213
    iget-object v1, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    invoke-virtual {v0, v1, v4}, Lcrittercism/android/ii;->a(Lcrittercism/android/in;Z)V

    .line 217
    :goto_1
    return-void

    .line 198
    :pswitch_1
    invoke-interface {p2, v4}, Lcrittercism/android/ko;->b(I)V

    goto :goto_0

    .line 199
    :pswitch_2
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lcrittercism/android/ko;->b(I)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gp;->e:[B

    invoke-interface {p2, v0}, Lcrittercism/android/ko;->a([B)V

    goto :goto_1

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcrittercism/android/gp;->c:Lcrittercism/android/in;

    invoke-virtual {v0}, Lcrittercism/android/in;->hashCode()I

    move-result v0

    return v0
.end method
