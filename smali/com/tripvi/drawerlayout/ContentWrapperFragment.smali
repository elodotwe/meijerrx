.class public Lcom/tripvi/drawerlayout/ContentWrapperFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContentWrapperFragment.java"


# instance fields
.field mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tripvi/drawerlayout/ContentWrapperFragment;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 26
    iget-object v0, p0, Lcom/tripvi/drawerlayout/ContentWrapperFragment;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tripvi/drawerlayout/ContentWrapperFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tripvi/drawerlayout/ContentWrapperFragment;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "cv"    # Landroid/view/View;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tripvi/drawerlayout/ContentWrapperFragment;->mContentView:Landroid/view/View;

    .line 33
    return-void
.end method
