.class public Lcrittercism/android/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/cu$a;
    }
.end annotation


# instance fields
.field private a:Lcrittercism/android/bk;

.field private b:Lcrittercism/android/bk;


# direct methods
.method public constructor <init>(Lcrittercism/android/bk;Lcrittercism/android/bk;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcrittercism/android/cu;->a:Lcrittercism/android/bk;

    .line 30
    iput-object p2, p0, Lcrittercism/android/cu;->b:Lcrittercism/android/bk;

    .line 31
    return-void
.end method


# virtual methods
.method public a(ZILorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 41
    if-nez p1, :cond_0

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcrittercism/android/cu;->a:Lcrittercism/android/bk;

    invoke-virtual {v0}, Lcrittercism/android/bk;->a()V

    .line 46
    :goto_1
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lcrittercism/android/cu;->a:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/cu;->b:Lcrittercism/android/bk;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bk;)V

    goto :goto_1
.end method
