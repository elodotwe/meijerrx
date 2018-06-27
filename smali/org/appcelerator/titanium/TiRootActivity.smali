.class public Lorg/appcelerator/titanium/TiRootActivity;
.super Lorg/appcelerator/titanium/TiLaunchActivity;
.source "TiRootActivity.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivitySupport;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiRootActivity"


# instance fields
.field private backgroundLayers:[Landroid/graphics/drawable/Drawable;

.field private finishing:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;-><init>()V

    .line 24
    iput-boolean v1, p0, Lorg/appcelerator/titanium/TiRootActivity;->finishing:Z

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiRootActivity;->finishing2373:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiRootActivity;->finishing:Z

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiRootActivity;->finishing:Z

    .line 160
    invoke-static {p0}, Lorg/appcelerator/titanium/TiApplication;->removeFromActivityStack(Landroid/app/Activity;)V

    .line 161
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->terminateActivityStack()V

    .line 162
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "app.js"

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    :try_start_0
    const-string v4, "drawable.background"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "backgroundId":I
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    .local v1, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "backgroundId":I
    .end local v1    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TiRootActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource not found \'drawable.background\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiRootActivity;->willFinishFalseRootActivity(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiRootActivity;->checkInvalidLaunch(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 85
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    :cond_2
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v0, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 92
    const-string v1, "TiRootActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkpoint, on root activity create, savedInstanceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->setRootActivity(Lorg/appcelerator/titanium/TiRootActivity;)V

    .line 96
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->verifyCustomModules(Lorg/appcelerator/titanium/TiRootActivity;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->onDestroy()V

    .line 141
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiRootActivity;->finishing2373:Z

    if-eqz v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "TiRootActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root activity onDestroy, activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "TiRootActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkpoint, on root activity resume. activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->checkpoint(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-super {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->onResume()V

    .line 115
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 31
    .local v1, "window":Landroid/view/Window;
    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 36
    .local v0, "colorDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 38
    iget-object v2, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 39
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    iget-object v3, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 48
    .local v0, "window":Landroid/view/Window;
    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 53
    if-nez p1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    .line 59
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v2, p0, Lorg/appcelerator/titanium/TiRootActivity;->backgroundLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected windowCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    .line 106
    .local v0, "appInfo":Lorg/appcelerator/titanium/ITiAppInfo;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fullscreen"

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isFullscreen()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->windowCreated(Landroid/os/Bundle;)V

    .line 108
    return-void
.end method
