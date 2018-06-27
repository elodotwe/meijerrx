.class public Lti/push/TiGcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "TiGcmListenerService.java"


# static fields
.field private static final PROPERTY_BIG_CONTENT_TITLE:Ljava/lang/String; = "bigContentTitle"

.field private static final PROPERTY_BIG_LARGE_ICON:Ljava/lang/String; = "bigLargeIcon"

.field private static final PROPERTY_BIG_MESSAGE:Ljava/lang/String; = "bigMessage"

.field private static final PROPERTY_BIG_PICTURE:Ljava/lang/String; = "bigPicture"

.field private static final PROPERTY_BIG_TEXT:Ljava/lang/String; = "bigText"

.field private static final PROPERTY_BIG_TITLE:Ljava/lang/String; = "bigTitle"

.field private static final PROPERTY_LARGE_ICON:Ljava/lang/String; = "largeIcon"

.field private static final PROPERTY_LINES:Ljava/lang/String; = "lines"

.field private static final PROPERTY_SMALL_ICON:Ljava/lang/String; = "smallIcon"

.field private static final PROPERTY_SUMMARY_TEXT:Ljava/lang/String; = "summaryText"

.field private static final TAG:Ljava/lang/String; = "TiGcmListenerService"

.field private static final counter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lti/push/TiGcmListenerService;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method private getId()I
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lti/push/TiGcmListenerService;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private getResource(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "icon":I
    if-eqz p2, :cond_1

    .line 316
    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 317
    .local v2, "index":I
    if-lez v2, :cond_0

    .line 318
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 321
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 328
    .end local v2    # "index":I
    :cond_1
    :goto_0
    return v1

    .line 322
    .restart local v2    # "index":I
    :catch_0
    move-exception v0

    .line 323
    .local v0, "ex":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v3, "TiGcmListenerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found; make sure it\'s in platform/android/res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendNotification(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct/range {p0 .. p1}, Lti/push/TiGcmListenerService;->toHashMap(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v21

    .line 60
    .local v21, "payload":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v19, Landroid/content/Intent;

    const-class v25, Lti/push/NotificationHandlerActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v19, "notificationIntent":Landroid/content/Intent;
    const/high16 v25, 0x24010000

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    const-string v25, "payload"

    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v19

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 71
    .local v9, "contentIntent":Landroid/app/PendingIntent;
    new-instance v25, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v25

    const-string v26, "when"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v18

    .line 79
    .local v18, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v11, ""

    .line 80
    .local v11, "contentTitle":Ljava/lang/String;
    const-string v25, "contentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 81
    const-string v25, "contentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "contentTitle":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 87
    .restart local v11    # "contentTitle":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 89
    const-string v10, ""

    .line 90
    .local v10, "contentText":Ljava/lang/String;
    const-string v25, "contentText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 91
    const-string v25, "contentText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "contentText":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 95
    .restart local v10    # "contentText":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 97
    const-string v25, "tickerText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 98
    const-string v25, "tickerText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    :cond_1
    const-string v25, "number"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 103
    const-string v25, "number"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 107
    :cond_2
    const/4 v4, 0x0

    .line 108
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 111
    .local v20, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 117
    :goto_2
    const/4 v14, 0x0

    .line 118
    .local v14, "icon":I
    const-string v25, "icon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 119
    const-string v26, "drawable"

    const-string v25, "icon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lti/push/TiGcmListenerService;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 125
    :cond_3
    :goto_3
    const/16 v22, 0x0

    .line 126
    .local v22, "smallIcon":I
    const-string v25, "smallIcon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 127
    const-string v26, "drawable"

    const-string v25, "smallIcon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lti/push/TiGcmListenerService;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 132
    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 134
    const/16 v16, 0x0

    .line 135
    .local v16, "largeIcon":I
    const-string v25, "largeIcon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 136
    const-string v26, "drawable"

    const-string v25, "largeIcon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lti/push/TiGcmListenerService;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 141
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lti/push/TiGcmListenerService;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 142
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_4

    .line 143
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 146
    :cond_4
    const-string v25, "defaults"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 147
    const-string v25, "defaults"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 153
    :goto_6
    const-string v25, "sound"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 154
    const-string v25, "sound"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 155
    .local v23, "sound":Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 156
    const-string v25, "default"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 157
    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 167
    .end local v23    # "sound":Ljava/lang/String;
    :cond_5
    :goto_7
    const-string v25, "ledARGB"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string v25, "ledOnMS"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string v25, "ledOffMS"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 170
    const-string v25, "ledARGB"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v26

    const-string v25, "ledOnMS"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const-string v25, "ledOffMS"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 176
    :cond_6
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_b

    .line 177
    const-string v25, "style"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 178
    const-string v25, "style"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 179
    .local v24, "style":Ljava/lang/String;
    const-string v25, "BigTextStyle"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 180
    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 182
    .local v7, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    move-object v5, v11

    .line 183
    .local v5, "bigContentTitle":Ljava/lang/String;
    const-string v25, "bigContentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 184
    const-string v25, "bigContentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bigContentTitle":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 190
    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    :cond_7
    :goto_8
    invoke-virtual {v7, v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 192
    const-string v25, "summaryText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 193
    const-string v25, "summaryText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 197
    :cond_8
    const-string v25, "bigText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 198
    const-string v25, "bigText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 205
    :cond_9
    :goto_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 275
    .end local v5    # "bigContentTitle":Ljava/lang/String;
    .end local v7    # "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .end local v24    # "style":Ljava/lang/String;
    :cond_a
    :goto_a
    const-string v25, "priority"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 276
    const-string v25, "priority"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 281
    :cond_b
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e

    .line 282
    const-string v25, "visibility"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 283
    const-string v25, "visibility"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 286
    :cond_c
    const-string v25, "category"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 287
    const-string v25, "category"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 290
    :cond_d
    const-string v25, "color"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 291
    const-string v25, "color"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 296
    :cond_e
    const-string v25, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lti/push/TiGcmListenerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/NotificationManager;

    invoke-direct/range {p0 .. p0}, Lti/push/TiGcmListenerService;->getId()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 298
    return-void

    .line 82
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "contentText":Ljava/lang/String;
    .end local v14    # "icon":I
    .end local v16    # "largeIcon":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v22    # "smallIcon":I
    :cond_f
    const-string v25, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 83
    const-string v25, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "contentTitle":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .restart local v11    # "contentTitle":Ljava/lang/String;
    goto/16 :goto_0

    .line 85
    :cond_10
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 92
    .restart local v10    # "contentText":Ljava/lang/String;
    :cond_11
    const-string v25, "message"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 93
    const-string v25, "message"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "contentText":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "contentText":Ljava/lang/String;
    goto/16 :goto_1

    .line 113
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v20    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 114
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v25, "TiGcmListenerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "not able to find app info for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 121
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v14    # "icon":I
    :cond_12
    if-eqz v4, :cond_3

    .line 122
    iget v14, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    goto/16 :goto_3

    .line 130
    .restart local v22    # "smallIcon":I
    :cond_13
    move/from16 v22, v14

    goto/16 :goto_4

    .line 139
    .restart local v16    # "largeIcon":I
    :cond_14
    move/from16 v16, v14

    goto/16 :goto_5

    .line 150
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    :cond_15
    const/16 v25, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_6

    .line 160
    .restart local v23    # "sound":Ljava/lang/String;
    :cond_16
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "android.resource://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "raw"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lti/push/TiGcmListenerService;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_7

    .line 186
    .end local v23    # "sound":Ljava/lang/String;
    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    .restart local v7    # "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .restart local v24    # "style":Ljava/lang/String;
    :cond_17
    const-string v25, "bigTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 187
    const-string v25, "bigTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bigContentTitle":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    goto/16 :goto_8

    .line 200
    :cond_18
    const-string v25, "bigMessage"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 201
    const-string v25, "bigMessage"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    goto/16 :goto_9

    .line 206
    .end local v5    # "bigContentTitle":Ljava/lang/String;
    .end local v7    # "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    :cond_19
    const-string v25, "InboxStyle"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 207
    new-instance v15, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v15}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 209
    .local v15, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object v5, v11

    .line 210
    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    const-string v25, "bigContentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 211
    const-string v25, "bigContentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bigContentTitle":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 217
    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    :cond_1a
    :goto_b
    invoke-virtual {v15, v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 219
    const-string v25, "summaryText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 220
    const-string v25, "summaryText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 224
    :cond_1b
    const-string v25, "lines"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 225
    const-string v25, "lines"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/String;

    move-object/from16 v17, v25

    check-cast v17, [Ljava/lang/String;

    .line 226
    .local v17, "lines":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_1d

    .line 227
    aget-object v25, v17, v13

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 226
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 213
    .end local v13    # "i":I
    .end local v17    # "lines":[Ljava/lang/String;
    :cond_1c
    const-string v25, "bigTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 214
    const-string v25, "bigTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bigContentTitle":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    goto :goto_b

    .line 231
    :cond_1d
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_a

    .line 232
    .end local v5    # "bigContentTitle":Ljava/lang/String;
    .end local v15    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    :cond_1e
    const-string v25, "BigPictureStyle"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 233
    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v6}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 235
    .local v6, "bigPictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    move-object v5, v11

    .line 236
    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    const-string v25, "bigContentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23

    .line 237
    const-string v25, "bigContentTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bigContentTitle":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 243
    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    :cond_1f
    :goto_d
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 245
    const-string v25, "summaryText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 246
    const-string v25, "summaryText"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 250
    :cond_20
    const-string v25, "bigLargeIcon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21

    .line 251
    invoke-virtual/range {p0 .. p0}, Lti/push/TiGcmListenerService;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const-string v27, "drawable"

    const-string v25, "bigLargeIcon"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lti/push/TiGcmListenerService;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 261
    :cond_21
    const-string v25, "bigPicture"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_22

    .line 262
    invoke-virtual/range {p0 .. p0}, Lti/push/TiGcmListenerService;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const-string v27, "drawable"

    const-string v25, "bigPicture"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lti/push/TiGcmListenerService;->getResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 272
    :cond_22
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_a

    .line 239
    :cond_23
    const-string v25, "bigTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 240
    const-string v25, "bigTitle"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bigContentTitle":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "bigContentTitle":Ljava/lang/String;
    goto/16 :goto_d
.end method

.method private toHashMap(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    .local v0, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 307
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 308
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 310
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const-string v0, "TiGcmListenerService"

    const-string v1, "message received"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0, p2}, Lti/push/TiGcmListenerService;->sendNotification(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
