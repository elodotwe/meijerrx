.class public Lti/modules/titanium/media/SoundProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "SoundProxy.java"

# interfaces
.implements Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;
.implements Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;


# static fields
.field public static final STATE_BUFFERING:I = 0x0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_STARTING:I = 0x4

.field public static final STATE_STOPPED:I = 0x5

.field public static final STATE_STOPPING:I = 0x6

.field public static final STATE_WAITING_FOR_DATA:I = 0x7

.field public static final STATE_WAITING_FOR_QUEUE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SoundProxy"


# instance fields
.field private resumeInOnWindowFocusChanged:Z

.field protected snd:Lti/modules/titanium/media/TiSound;

.field private windowFocused:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "volume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 58
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;-><init>()V

    .line 59
    return-void
.end method

.method private allowBackground()Z
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "allow":Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/SoundProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 249
    :cond_0
    return v0
.end method

.method private parseURL(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "path":Ljava/lang/String;
    instance-of v2, p1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v2, :cond_1

    .line 72
    check-cast p1, Lti/modules/titanium/filesystem/FileProxy;

    .end local p1    # "url":Ljava/lang/Object;
    invoke-virtual {p1}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 73
    .restart local p1    # "url":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 74
    const/4 v2, 0x0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "url":Ljava/lang/Object;
    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/media/SoundProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 75
    .restart local p1    # "url":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 76
    check-cast v0, Lorg/appcelerator/titanium/TiBlob;

    .line 77
    .local v0, "blob":Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 78
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiBlob;->getFile()Lorg/appcelerator/titanium/TiFileProxy;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiFileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 81
    .end local v0    # "blob":Lorg/appcelerator/titanium/TiBlob;
    :cond_3
    const-string v2, "SoundProxy"

    const-string v3, "Invalid type for url."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->release()V

    .line 193
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string v0, "Ti.Media.Sound"

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 206
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getDuration()I

    move-result v1

    .line 210
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 239
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getTime()D
    .locals 4

    .prologue
    .line 215
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 216
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getTime()I

    move-result v1

    .line 218
    .local v1, "time":I
    const-string v2, "time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    .end local v1    # "time":I
    :cond_0
    const-string v2, "time"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 90
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, "url":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lti/modules/titanium/media/SoundProxy;->parseURL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 94
    const-string v2, "url"

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/Object;
    :cond_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const-string v2, "allowBackground"

    const-string v3, "allowBackground"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_1
    const-string v2, "SoundProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating sound proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v4}, Lti/modules/titanium/media/SoundProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    move-object v0, p1

    .line 64
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 65
    check-cast p1, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnWindowFocusChangedEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;)V

    .line 66
    return-void
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 137
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isLooping()Z

    move-result v1

    .line 140
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 128
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 131
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 119
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 282
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 285
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 286
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 269
    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 274
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 258
    iget-boolean v0, p0, Lti/modules/titanium/media/SoundProxy;->windowFocused:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/SoundProxy;->resumeInOnWindowFocusChanged:Z

    goto :goto_0
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 254
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 278
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lti/modules/titanium/media/SoundProxy;->windowFocused:Z

    .line 291
    iget-boolean v0, p0, Lti/modules/titanium/media/SoundProxy;->resumeInOnWindowFocusChanged:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lti/modules/titanium/media/SoundProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/SoundProxy;->resumeInOnWindowFocusChanged:Z

    .line 297
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 168
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 171
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 160
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 163
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 184
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/SoundProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 188
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 176
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->reset()V

    .line 179
    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 145
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 146
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lti/modules/titanium/media/TiSound;->setLooping(Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public setTime(Ljava/lang/Object;)V
    .locals 4
    .param p1, "pos"    # Ljava/lang/Object;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 227
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_1

    .line 228
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    .line 233
    .end local v0    # "s":Lti/modules/titanium/media/TiSound;
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v0    # "s":Lti/modules/titanium/media/TiSound;
    :cond_1
    const-string v1, "time"

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/Object;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/Object;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lti/modules/titanium/media/SoundProxy;->parseURL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    const-string v1, "url"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/media/SoundProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->play()V

    .line 155
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lti/modules/titanium/media/SoundProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 198
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 201
    :cond_0
    return-void
.end method
