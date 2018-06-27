.class public Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;
.super Ljava/lang/Object;
.source "TiBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/TiBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogWrapper"
.end annotation


# instance fields
.field dialog:Landroid/app/Dialog;

.field dialogActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field isPersistent:Z

.field final synthetic this$0:Lorg/appcelerator/titanium/TiBaseActivity;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/app/Dialog;ZLjava/lang/ref/WeakReference;)V
    .locals 0
    .param p2, "d"    # Landroid/app/Dialog;
    .param p3, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            "Z",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p4, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity;>;"
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->this$0:Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean p3, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->isPersistent:Z

    .line 127
    iput-object p2, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/Dialog;

    .line 128
    iput-object p4, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method


# virtual methods
.method public getActivity()Lorg/appcelerator/titanium/TiBaseActivity;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getPersistent()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->isPersistent:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/Dialog;

    .line 156
    iput-object v0, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    .line 157
    return-void
.end method

.method public setActivity(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/appcelerator/titanium/TiBaseActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "da":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/appcelerator/titanium/TiBaseActivity;>;"
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialogActivity:Ljava/lang/ref/WeakReference;

    .line 143
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "d"    # Landroid/app/Dialog;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->dialog:Landroid/app/Dialog;

    .line 151
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;->isPersistent:Z

    .line 167
    return-void
.end method
