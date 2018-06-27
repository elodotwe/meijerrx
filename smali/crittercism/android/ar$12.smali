.class final Lcrittercism/android/ar$12;
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
.field final synthetic a:Lcrittercism/android/ar;


# direct methods
.method constructor <init>(Lcrittercism/android/ar;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcrittercism/android/ar$12;->a:Lcrittercism/android/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1414
    :try_start_0
    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1418
    :goto_0
    return-void

    .line 1416
    :catch_0
    move-exception v0

    const-string v0, "MAYBE LATER button failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcrittercism/android/dr;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
