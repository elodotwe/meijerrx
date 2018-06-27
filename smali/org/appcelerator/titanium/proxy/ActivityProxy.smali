.class public Lorg/appcelerator/titanium/proxy/ActivityProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ActivityProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field private static final MSG_INVALIDATE_OPTIONS_MENU:I = 0x138

.field private static final MSG_OPEN_OPTIONS_MENU:I = 0x139

.field private static final TAG:Ljava/lang/String; = "ActivityProxy"


# instance fields
.field protected actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

.field protected intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field private resultCallback:Lorg/appcelerator/kroll/KrollFunction;

.field protected savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

.field protected wrappedActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setActivity(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->setWrappedActivity(Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method private handleInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 293
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_0

    .line 294
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 296
    :cond_0
    return-void
.end method

.method private handleOpenOptionsMenu()V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 285
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 225
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 228
    :cond_0
    return-void
.end method

.method public getActionBar()Lorg/appcelerator/titanium/proxy/ActionBarProxy;
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 256
    .local v0, "activity":Landroid/support/v7/app/AppCompatActivity;
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    invoke-direct {v1, v0}, Lorg/appcelerator/titanium/proxy/ActionBarProxy;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    .line 259
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->actionBarProxy:Lorg/appcelerator/titanium/proxy/ActionBarProxy;

    return-object v1
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const-string v0, "Ti.Android.Activity"

    return-object v0
.end method

.method public getDecorView()Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    .locals 5

    .prologue
    .line 87
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    if-nez v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v2, :cond_0

    .line 90
    const-string v2, "ActivityProxy"

    const-string v3, "Unable to return decor view, activity is not TiBaseActivity"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v2, 0x0

    .line 100
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v2

    .line 95
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v1, Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    move-object v2, v0

    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->getLayout()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;-><init>(Landroid/view/View;)V

    .line 96
    .local v1, "decorViewProxy":Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/proxy/DecorViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 97
    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    .line 100
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "decorViewProxy":Lorg/appcelerator/titanium/proxy/DecorViewProxy;
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->savedDecorViewProxy:Lorg/appcelerator/titanium/proxy/DecorViewProxy;

    goto :goto_0
.end method

.method public getDir(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 234
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 237
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    return-object v0
.end method

.method public getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 183
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    .line 186
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 189
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWindow()Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-nez v2, :cond_0

    .line 245
    const/4 v2, 0x0

    .line 249
    :goto_0
    return-object v2

    :cond_0
    move-object v1, v0

    .line 248
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 249
    .local v1, "tiActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v2

    goto :goto_0
.end method

.method protected getWrappedActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 81
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 331
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 341
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 333
    :pswitch_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleInvalidateOptionsMenu()V

    goto :goto_0

    .line 337
    :pswitch_1
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleOpenOptionsMenu()V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x138
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleInvalidateOptionsMenu()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 315
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 316
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 318
    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v1, v2, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 320
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "intent":Lorg/appcelerator/titanium/proxy/IntentProxy;
    if-eqz p4, :cond_0

    .line 302
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    .end local v1    # "intent":Lorg/appcelerator/titanium/proxy/IntentProxy;
    invoke-direct {v1, p4}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    .line 305
    .restart local v1    # "intent":Lorg/appcelerator/titanium/proxy/IntentProxy;
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 306
    .local v0, "event":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "requestCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v2, "resultCode"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "source"

    invoke-virtual {v0, v2, p0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v3, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->krollObject:Lorg/appcelerator/kroll/KrollObject;

    invoke-interface {v2, v3, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 311
    return-void
.end method

.method public openOptionsMenu()V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->handleOpenOptionsMenu()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lorg/appcelerator/kroll/KrollProxy;->release()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 326
    return-void
.end method

.method public sendBroadcast(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    :cond_0
    return-void
.end method

.method public sendBroadcastWithPermission(Lorg/appcelerator/titanium/proxy/IntentProxy;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
    .param p2, "receiverPermission"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 205
    :cond_0
    return-void
.end method

.method public setResult(ILorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 212
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 213
    if-nez p2, :cond_1

    .line 214
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public setWrappedActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->wrappedActivity:Landroid/app/Activity;

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 72
    new-instance v1, Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/appcelerator/titanium/proxy/IntentProxy;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->intentProxy:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 74
    :cond_0
    return-void
.end method

.method public startActivity(Lorg/appcelerator/titanium/proxy/IntentProxy;)V
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    :cond_0
    return-void
.end method

.method public startActivityForResult(Lorg/appcelerator/titanium/proxy/IntentProxy;Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 4
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
    .param p2, "callback"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    instance-of v3, v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 120
    check-cast v2, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 125
    :goto_0
    iput-object p2, p0, Lorg/appcelerator/titanium/proxy/ActivityProxy;->resultCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 126
    invoke-interface {v2}, Lorg/appcelerator/titanium/util/TiActivitySupport;->getUniqueResultCode()I

    move-result v1

    .line 127
    .local v1, "requestCode":I
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3, v1, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    .line 129
    .end local v1    # "requestCode":I
    .end local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_0
    return-void

    .line 122
    .restart local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    :cond_1
    new-instance v2, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;

    .end local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-direct {v2, v0}, Lorg/appcelerator/titanium/util/TiActivitySupportHelper;-><init>(Landroid/app/Activity;)V

    .restart local v2    # "support":Lorg/appcelerator/titanium/util/TiActivitySupport;
    goto :goto_0
.end method

.method public startActivityFromChild(Lorg/appcelerator/titanium/proxy/ActivityProxy;Lorg/appcelerator/titanium/proxy/IntentProxy;I)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;
    .param p2, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
    .param p3, "requestCode"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 138
    :cond_0
    return-void
.end method

.method public startActivityIfNeeded(Lorg/appcelerator/titanium/proxy/IntentProxy;I)Z
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;
    .param p2, "requestCode"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v1

    .line 147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startNextMatchingActivity(Lorg/appcelerator/titanium/proxy/IntentProxy;)Z
    .locals 2
    .param p1, "intent"    # Lorg/appcelerator/titanium/proxy/IntentProxy;

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/appcelerator/titanium/proxy/ActivityProxy;->getWrappedActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 157
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
