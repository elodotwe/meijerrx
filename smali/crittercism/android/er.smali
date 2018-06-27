.class public final Lcrittercism/android/er;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/er$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Lcrittercism/android/fe;

.field public c:Lcrittercism/android/em;

.field public d:Lcrittercism/android/eo;

.field public e:Lcrittercism/android/ff;

.field public f:Lcrittercism/android/fa;

.field private g:Lcrittercism/android/et;


# direct methods
.method public constructor <init>(ILcrittercism/android/fe;Lcrittercism/android/em;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p2, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedInsns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    if-nez p3, :cond_1

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unprocessedCatches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iput p1, p0, Lcrittercism/android/er;->a:I

    .line 92
    iput-object p2, p0, Lcrittercism/android/er;->b:Lcrittercism/android/fe;

    .line 93
    iput-object p3, p0, Lcrittercism/android/er;->c:Lcrittercism/android/em;

    .line 94
    iput-object v0, p0, Lcrittercism/android/er;->d:Lcrittercism/android/eo;

    .line 95
    iput-object v0, p0, Lcrittercism/android/er;->e:Lcrittercism/android/ff;

    .line 96
    iput-object v0, p0, Lcrittercism/android/er;->f:Lcrittercism/android/fa;

    .line 97
    iput-object v0, p0, Lcrittercism/android/er;->g:Lcrittercism/android/et;

    .line 98
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcrittercism/android/er;->g:Lcrittercism/android/et;

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcrittercism/android/er;->b:Lcrittercism/android/fe;

    iget v1, v0, Lcrittercism/android/fe;->e:I

    if-ltz v1, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcrittercism/android/fe;->a()[Lcrittercism/android/eu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/fe;->a([Lcrittercism/android/eu;)V

    invoke-virtual {v0, v1}, Lcrittercism/android/fe;->b([Lcrittercism/android/eu;)V

    invoke-virtual {v0}, Lcrittercism/android/fe;->b()V

    iget-object v1, v0, Lcrittercism/android/fe;->b:Ljava/util/ArrayList;

    iget v2, v0, Lcrittercism/android/fe;->e:I

    iget v0, v0, Lcrittercism/android/fe;->a:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcrittercism/android/et;->a(Ljava/util/ArrayList;I)Lcrittercism/android/et;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/er;->g:Lcrittercism/android/et;

    .line 109
    iget-object v0, p0, Lcrittercism/android/er;->g:Lcrittercism/android/et;

    iget v1, p0, Lcrittercism/android/er;->a:I

    invoke-static {v0, v1}, Lcrittercism/android/ff;->a(Lcrittercism/android/et;I)Lcrittercism/android/ff;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/er;->e:Lcrittercism/android/ff;

    .line 110
    iget-object v0, p0, Lcrittercism/android/er;->g:Lcrittercism/android/et;

    invoke-static {v0}, Lcrittercism/android/fa;->a(Lcrittercism/android/et;)Lcrittercism/android/fa;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/er;->f:Lcrittercism/android/fa;

    .line 111
    iget-object v0, p0, Lcrittercism/android/er;->c:Lcrittercism/android/em;

    invoke-interface {v0}, Lcrittercism/android/em;->a()Lcrittercism/android/eo;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/er;->d:Lcrittercism/android/eo;

    .line 114
    iput-object v3, p0, Lcrittercism/android/er;->b:Lcrittercism/android/fe;

    .line 115
    iput-object v3, p0, Lcrittercism/android/er;->c:Lcrittercism/android/em;

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/et;
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcrittercism/android/er;->a()V

    .line 186
    iget-object v0, p0, Lcrittercism/android/er;->g:Lcrittercism/android/et;

    return-object v0
.end method
