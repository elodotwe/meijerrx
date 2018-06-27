.class public Lti/modules/titanium/ui/widget/picker/TiDatePickerDialog;
.super Landroid/app/DatePickerDialog;
.source "TiDatePickerDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 14
    invoke-direct/range {p0 .. p5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 21
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 22
    invoke-super {p0, p1, p2}, Landroid/app/DatePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 24
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
