.class final Lcrittercism/android/ar$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ar;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lcrittercism/android/ar$10;->b:Lcrittercism/android/ar;

    iput-object p2, p0, Lcrittercism/android/ar$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1394
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v0

    iget-object v1, p0, Lcrittercism/android/ar$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcrittercism/android/ar;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1398
    :goto_0
    return-void

    .line 1396
    :catch_0
    move-exception v0

    const-string v0, "YES button failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
