.class final Lcrittercism/android/ar$7;
.super Lcrittercism/android/dc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ar;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/bx;

.field final synthetic b:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Lcrittercism/android/bx;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcrittercism/android/ar$7;->b:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$7;->a:Lcrittercism/android/bx;

    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcrittercism/android/ar$7;->b:Lcrittercism/android/ar;

    iget-object v0, v0, Lcrittercism/android/ar;->l:Lcrittercism/android/bk;

    iget-object v1, p0, Lcrittercism/android/ar$7;->a:Lcrittercism/android/bx;

    invoke-virtual {v0, v1}, Lcrittercism/android/bk;->a(Lcrittercism/android/bz;)Z

    .line 823
    return-void
.end method
