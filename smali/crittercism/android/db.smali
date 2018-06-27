.class final Lcrittercism/android/db;
.super Lcrittercism/android/dc;


# instance fields
.field private a:Lcrittercism/android/bk;

.field private b:Lcrittercism/android/bk;

.field private c:Lcrittercism/android/ak;

.field private d:Ljava/net/URL;

.field private e:Lcrittercism/android/cs;

.field private f:Lcrittercism/android/cr;


# direct methods
.method constructor <init>(Lcrittercism/android/bk;Lcrittercism/android/bk;Lcrittercism/android/ak;Ljava/net/URL;Lcrittercism/android/cs;Lcrittercism/android/cr;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    .line 26
    iput-object p1, p0, Lcrittercism/android/db;->b:Lcrittercism/android/bk;

    .line 34
    iput-object p2, p0, Lcrittercism/android/db;->a:Lcrittercism/android/bk;

    .line 35
    iput-object p3, p0, Lcrittercism/android/db;->c:Lcrittercism/android/ak;

    .line 36
    iput-object p4, p0, Lcrittercism/android/db;->d:Ljava/net/URL;

    .line 37
    iput-object p5, p0, Lcrittercism/android/db;->e:Lcrittercism/android/cs;

    .line 38
    iput-object p6, p0, Lcrittercism/android/db;->f:Lcrittercism/android/cr;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcrittercism/android/db;->a:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/db;->b:Lcrittercism/android/bk;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bk;)V

    .line 44
    iget-object v0, p0, Lcrittercism/android/db;->f:Lcrittercism/android/cr;

    iget-object v1, p0, Lcrittercism/android/db;->c:Lcrittercism/android/ak;

    invoke-interface {v0, v1}, Lcrittercism/android/cr;->a(Lcrittercism/android/ak;)Lcrittercism/android/cq;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/db;->b:Lcrittercism/android/bk;

    invoke-interface {v0, v1}, Lcrittercism/android/cq;->a(Lcrittercism/android/bk;)Lcrittercism/android/cq;

    move-result-object v0

    .line 45
    new-instance v1, Lcrittercism/android/cw;

    iget-object v2, p0, Lcrittercism/android/db;->d:Ljava/net/URL;

    invoke-direct {v1, v2}, Lcrittercism/android/cw;-><init>(Ljava/net/URL;)V

    .line 46
    new-instance v2, Lcrittercism/android/dd;

    const/4 v3, 0x1

    iget-object v4, p0, Lcrittercism/android/db;->e:Lcrittercism/android/cs;

    invoke-direct {v2, v0, v1, v3, v4}, Lcrittercism/android/dd;-><init>(Lcrittercism/android/cq;Lcrittercism/android/cw;ZLcrittercism/android/cs;)V

    .line 47
    invoke-virtual {v2}, Lcrittercism/android/dd;->run()V

    .line 48
    return-void
.end method
