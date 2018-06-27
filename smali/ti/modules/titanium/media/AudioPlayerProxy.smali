.class public Lti/modules/titanium/media/AudioPlayerProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AudioPlayerProxy.java"

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

.field private static final TAG:Ljava/lang/String; = "AudioPlayerProxy"


# instance fields
.field private resumeInOnWindowFocusChanged:Z

.field protected snd:Lti/modules/titanium/media/TiSound;

.field private windowFocused:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 53
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "volume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "time"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 59
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;-><init>()V

    .line 60
    return-void
.end method

.method private allowBackground()Z
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "allow":Z
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v1, "allowBackground"

    invoke-virtual {p0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 209
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->release()V

    .line 163
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "Ti.Media.AudioPlayer"

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 104
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getDuration()I

    move-result v1

    .line 107
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSound()Lti/modules/titanium/media/TiSound;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lti/modules/titanium/media/TiSound;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiSound;-><init>(Lorg/appcelerator/kroll/KrollProxy;)V

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 199
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    return-object v0
.end method

.method public getTime()D
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 176
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->getTime()I

    move-result v1

    .line 178
    .local v1, "time":I
    const-string v2, "time"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    .end local v1    # "time":I
    :cond_0
    const-string v2, "time"

    invoke-virtual {p0, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    return-wide v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 72
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "url"

    const/4 v3, 0x0

    const-string v4, "url"

    invoke-static {p1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lti/modules/titanium/media/AudioPlayerProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    :cond_0
    :goto_0
    const-string v2, "allowBackground"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    const-string v2, "allowBackground"

    const-string v3, "allowBackground"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :cond_1
    const-string v2, "AudioPlayerProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating audio player proxy for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {p0, v4}, Lti/modules/titanium/media/AudioPlayerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 74
    :cond_2
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "sound"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/filesystem/FileProxy;

    .line 76
    .local v0, "fp":Lti/modules/titanium/filesystem/FileProxy;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lti/modules/titanium/filesystem/FileProxy;->getNativePath()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "url":Ljava/lang/String;
    const-string v2, "url"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected initActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->initActivity(Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnLifecycleEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnLifecycleEvent;)V

    .line 66
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiBaseActivity;->addOnWindowFocusChangedEventListener(Lorg/appcelerator/titanium/TiLifecycle$OnWindowFocusChangedEvent;)V

    .line 67
    return-void
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 122
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPaused()Z

    move-result v1

    .line 125
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 113
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->isPlaying()Z

    move-result v1

    .line 116
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
    .line 238
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onDestroy()V

    .line 241
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 242
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onPause()V

    .line 232
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 217
    iget-boolean v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->windowFocused:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->resumeInOnWindowFocusChanged:Z

    goto :goto_0
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 213
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 235
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lti/modules/titanium/media/AudioPlayerProxy;->windowFocused:Z

    .line 247
    iget-boolean v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->resumeInOnWindowFocusChanged:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->allowBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->onResume()V

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/media/AudioPlayerProxy;->resumeInOnWindowFocusChanged:Z

    .line 253
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 146
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->pause()V

    .line 149
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 138
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->play()V

    .line 141
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 154
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->release()V

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lti/modules/titanium/media/AudioPlayerProxy;->snd:Lti/modules/titanium/media/TiSound;

    .line 158
    :cond_0
    return-void
.end method

.method public setTime(Ljava/lang/Object;)V
    .locals 4
    .param p1, "pos"    # Ljava/lang/Object;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 187
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_1

    .line 188
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/media/TiSound;->setTime(I)V

    .line 193
    .end local v0    # "s":Lti/modules/titanium/media/TiSound;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v0    # "s":Lti/modules/titanium/media/TiSound;
    :cond_1
    const-string v1, "time"

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "url"

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lti/modules/titanium/media/AudioPlayerProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/media/AudioPlayerProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->play()V

    .line 133
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lti/modules/titanium/media/AudioPlayerProxy;->getSound()Lti/modules/titanium/media/TiSound;

    move-result-object v0

    .line 168
    .local v0, "s":Lti/modules/titanium/media/TiSound;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lti/modules/titanium/media/TiSound;->stop()V

    .line 171
    :cond_0
    return-void
.end method
