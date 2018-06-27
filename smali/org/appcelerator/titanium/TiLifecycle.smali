.class public Lorg/appcelerator/titanium/TiLifecycle;
.super Ljava/lang/Object;
.source "TiLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/TiLifecycle$interceptOnBackPressedEvent;,
        Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;,
        Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;,
        Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;,
        Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;,
        Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;,
        Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    }
.end annotation


# static fields
.field public static final LIFECYCLE_ON_CREATE:I = 0x5

.field public static final LIFECYCLE_ON_DESTROY:I = 0x4

.field public static final LIFECYCLE_ON_PAUSE:I = 0x2

.field public static final LIFECYCLE_ON_RESUME:I = 0x1

.field public static final LIFECYCLE_ON_START:I = 0x0

.field public static final LIFECYCLE_ON_STOP:I = 0x3

.field public static final ON_RESTORE_INSTANCE_STATE:I = 0x7

.field public static final ON_SAVE_INSTANCE_STATE:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static fireInstanceStateEvent(Landroid/os/Bundle;Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;I)V
    .locals 0
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;
    .param p2, "which"    # I

    .prologue
    .line 171
    packed-switch p2, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 172
    :pswitch_0
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnInstanceStateEvent;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .param p2, "which"    # I

    .prologue
    .line 148
    packed-switch p2, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 149
    :pswitch_0
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onStart(Landroid/app/Activity;)V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onResume(Landroid/app/Activity;)V

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onPause(Landroid/app/Activity;)V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onStop(Landroid/app/Activity;)V

    goto :goto_0

    .line 153
    :pswitch_4
    invoke-interface {p1, p0}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static fireLifecycleEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;Landroid/os/Bundle;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "which"    # I

    .prologue
    .line 159
    packed-switch p3, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-interface {p1, p0, p2}, Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static fireOnActivityResultEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;IILandroid/content/Intent;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 166
    invoke-interface {p1, p0, p2, p3, p4}, Lorg/appcelerator/titanium/TiLifecycle$OnActivityResultEvent;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public static fireOnCreateOptionsMenuEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;Landroid/view/Menu;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 138
    invoke-interface {p1, p0, p2}, Lorg/appcelerator/titanium/TiLifecycle$OnCreateOptionsMenuEvent;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 139
    return-void
.end method

.method public static fireOnPrepareOptionsMenuEvent(Landroid/app/Activity;Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;Landroid/view/Menu;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 143
    invoke-interface {p1, p0, p2}, Lorg/appcelerator/titanium/TiLifecycle$OnPrepareOptionsMenuEvent;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 144
    return-void
.end method
