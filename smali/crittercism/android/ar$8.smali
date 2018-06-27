.class final Lcrittercism/android/ar$8;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ar;->a(Lcrittercism/android/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/d;

.field final synthetic b:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Lcrittercism/android/d;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcrittercism/android/ar$8;->b:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$8;->a:Lcrittercism/android/d;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcrittercism/android/ar$8;->b:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->m:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar$8;->a:Lcrittercism/android/d;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 836
    return-void
.end method
