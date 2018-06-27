.class public Lti/modules/titanium/android/notificationmanager/NotificationProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "NotificationProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiNotification"


# instance fields
.field private audioStreamType:I

.field private flags:I

.field private ledARGB:I

.field private ledOffMS:I

.field private ledOnMS:I

.field protected notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private sound:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    const/16 v0, 0x10

    iput v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->flags:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->audioStreamType:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 60
    invoke-direct {p0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public buildNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 339
    .local v0, "notification":Landroid/app/Notification;
    iget v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->flags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 340
    return-object v0
.end method

.method protected checkLatestEventInfoProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 312
    const-string v2, "contentTitle"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "contentText"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    :cond_0
    const-string v1, ""

    .line 315
    .local v1, "contentTitle":Ljava/lang/String;
    const-string v0, ""

    .line 316
    .local v0, "contentText":Ljava/lang/String;
    const-string v2, "contentTitle"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const-string v2, "contentTitle"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 320
    :cond_1
    const-string v2, "contentText"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    const-string v2, "contentText"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 326
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v1    # "contentTitle":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "Ti.Android.Notification"

    return-object v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 67
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setIcon(Ljava/lang/Object;)V

    .line 73
    :cond_1
    const-string v0, "largeIcon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string v0, "largeIcon"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLargeIcon(Ljava/lang/Object;)V

    .line 76
    :cond_2
    const-string v0, "tickerText"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "tickerText"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setTickerText(Ljava/lang/String;)V

    .line 79
    :cond_3
    const-string v0, "when"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    const-string v0, "when"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setWhen(Ljava/lang/Object;)V

    .line 82
    :cond_4
    const-string v0, "audioStreamType"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    const-string v0, "audioStreamType"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setAudioStreamType(I)V

    .line 85
    :cond_5
    const-string v0, "contentView"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    const-string v0, "contentView"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/RemoteViewsProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setContentView(Lti/modules/titanium/android/RemoteViewsProxy;)V

    .line 88
    :cond_6
    const-string v0, "contentIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    const-string v0, "contentIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/PendingIntentProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setContentIntent(Lti/modules/titanium/android/PendingIntentProxy;)V

    .line 91
    :cond_7
    const-string v0, "defaults"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    const-string v0, "defaults"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setDefaults(I)V

    .line 94
    :cond_8
    const-string v0, "deleteIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    const-string v0, "deleteIntent"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/android/PendingIntentProxy;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setDeleteIntent(Lti/modules/titanium/android/PendingIntentProxy;)V

    .line 97
    :cond_9
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    const-string v0, "flags"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setFlags(I)V

    .line 100
    :cond_a
    const-string v0, "ledARGB"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    const-string v0, "ledARGB"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedARGB(I)V

    .line 103
    :cond_b
    const-string v0, "ledOffMS"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 104
    const-string v0, "ledOffMS"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedOffMS(I)V

    .line 106
    :cond_c
    const-string v0, "ledOnMS"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 107
    const-string v0, "ledOnMS"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setLedOnMS(I)V

    .line 109
    :cond_d
    const-string v0, "number"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 110
    const-string v0, "number"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setNumber(I)V

    .line 112
    :cond_e
    const-string v0, "sound"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 113
    const-string v0, "sound"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setSound(Ljava/lang/String;)V

    .line 115
    :cond_f
    const-string v0, "vibratePattern"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 116
    const-string v0, "vibratePattern"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setVibratePattern([Ljava/lang/Object;)V

    .line 118
    :cond_10
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 119
    const-string v0, "visibility"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setVisibility(I)V

    .line 121
    :cond_11
    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 122
    const-string v0, "category"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setCategory(Ljava/lang/String;)V

    .line 124
    :cond_12
    const-string v0, "priority"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 125
    const-string v0, "priority"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setPriority(I)V

    .line 127
    :cond_13
    invoke-virtual {p0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->checkLatestEventInfoProperties(Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 211
    iput p1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->audioStreamType:I

    .line 212
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->sound:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->sound:Landroid/net/Uri;

    iget v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->audioStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 215
    :cond_0
    const-string v0, "audioStreamType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 135
    const-string v0, "category"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public setContentIntent(Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .param p1, "contentIntent"    # Lti/modules/titanium/android/PendingIntentProxy;

    .prologue
    .line 228
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 229
    const-string v0, "contentIntent"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public setContentView(Lti/modules/titanium/android/RemoteViewsProxy;)V
    .locals 2
    .param p1, "contentView"    # Lti/modules/titanium/android/RemoteViewsProxy;

    .prologue
    .line 221
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lti/modules/titanium/android/RemoteViewsProxy;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 222
    const-string v0, "contentView"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public setDefaults(I)V
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 236
    const-string v0, "defaults"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public setDeleteIntent(Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .param p1, "deleteIntent"    # Lti/modules/titanium/android/PendingIntentProxy;

    .prologue
    .line 242
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 243
    const-string v0, "deleteIntent"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 249
    iput p1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->flags:I

    .line 250
    const-string v0, "flags"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public setIcon(Ljava/lang/Object;)V
    .locals 4
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 141
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 142
    iget-object v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    :goto_0
    const-string v2, "icon"

    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :goto_1
    return-void

    .line 144
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "iconUrl":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 146
    const-string v2, "TiNotification"

    const-string v3, "Url is null"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "iconFullUrl":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public setLargeIcon(Ljava/lang/Object;)V
    .locals 5
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 158
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 159
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    .local v2, "largeIcon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 171
    :goto_0
    const-string v3, "largeIcon"

    invoke-virtual {p0, v3, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    .end local v2    # "largeIcon":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 162
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "iconUrl":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 164
    const-string v3, "TiNotification"

    const-string v4, "Url is null"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "iconFullUrl":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    .restart local v2    # "largeIcon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public setLatestEventInfo(Ljava/lang/String;Ljava/lang/String;Lti/modules/titanium/android/PendingIntentProxy;)V
    .locals 2
    .param p1, "contentTitle"    # Ljava/lang/String;
    .param p2, "contentText"    # Ljava/lang/String;
    .param p3, "contentIntent"    # Lti/modules/titanium/android/PendingIntentProxy;

    .prologue
    .line 331
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p3}, Lti/modules/titanium/android/PendingIntentProxy;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 334
    return-void
.end method

.method public setLedARGB(I)V
    .locals 4
    .param p1, "ledARGB"    # I

    .prologue
    .line 257
    iput p1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledARGB:I

    .line 258
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledARGB:I

    iget v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOnMS:I

    iget v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOffMS:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 259
    const-string v0, "ledARGB"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public setLedOffMS(I)V
    .locals 4
    .param p1, "ledOffMS"    # I

    .prologue
    .line 265
    iput p1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOffMS:I

    .line 266
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledARGB:I

    iget v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOnMS:I

    iget v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOffMS:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 267
    const-string v0, "ledOffMS"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public setLedOnMS(I)V
    .locals 4
    .param p1, "ledOnMS"    # I

    .prologue
    .line 273
    iput p1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOnMS:I

    .line 274
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledARGB:I

    iget v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOnMS:I

    iget v3, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->ledOffMS:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 275
    const-string v0, "ledOnMS"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public setNumber(I)V
    .locals 2
    .param p1, "number"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    const-string v0, "number"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 186
    const-string v0, "priority"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public setSound(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    const-string v0, "TiNotification"

    const-string v1, "Url is null"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->sound:Landroid/net/Uri;

    .line 293
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->sound:Landroid/net/Uri;

    iget v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->audioStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 294
    const-string v0, "sound"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setTickerText(Ljava/lang/String;)V
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 194
    const-string v0, "tickerText"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public setVibratePattern([Ljava/lang/Object;)V
    .locals 4
    .param p1, "pattern"    # [Ljava/lang/Object;

    .prologue
    .line 300
    if-eqz p1, :cond_1

    .line 301
    array-length v2, p1

    new-array v1, v2, [J

    .line 302
    .local v1, "vibrate":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 303
    aget-object v2, p1, v0

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 307
    .end local v0    # "i":I
    .end local v1    # "vibrate":[J
    :cond_1
    const-string v2, "vibratePattern"

    invoke-virtual {p0, v2, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 178
    const-string v0, "visibility"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public setWhen(Ljava/lang/Object;)V
    .locals 4
    .param p1, "when"    # Ljava/lang/Object;

    .prologue
    .line 200
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 205
    :goto_0
    const-string v0, "when"

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->notificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method
