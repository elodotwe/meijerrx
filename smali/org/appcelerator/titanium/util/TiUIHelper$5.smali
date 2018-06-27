.class final Lorg/appcelerator/titanium/util/TiUIHelper$5;
.super Ljava/lang/Object;
.source "TiUIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/util/TiUIHelper;->doOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    move-object v1, p1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, "ownerActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "ownerActivity":Landroid/app/Activity;
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->removeDialog(Landroid/app/Dialog;)V

    .line 208
    :cond_0
    return-void
.end method
