.class final Lcrittercism/android/ar$9;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ar;->a(Lcrittercism/android/ca;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ca;

.field final synthetic b:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Lcrittercism/android/ca;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcrittercism/android/ar$9;->b:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$9;->a:Lcrittercism/android/ca;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcrittercism/android/ar$9;->b:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->n:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar$9;->a:Lcrittercism/android/ca;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 853
    return-void
.end method
