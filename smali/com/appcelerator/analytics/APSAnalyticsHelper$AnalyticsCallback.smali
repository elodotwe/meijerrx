.class Lcom/appcelerator/analytics/APSAnalyticsHelper$AnalyticsCallback;
.super Ljava/lang/Object;
.source "APSAnalyticsHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appcelerator/analytics/APSAnalyticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyticsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appcelerator/analytics/APSAnalyticsHelper;


# direct methods
.method private constructor <init>(Lcom/appcelerator/analytics/APSAnalyticsHelper;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/appcelerator/analytics/APSAnalyticsHelper$AnalyticsCallback;->this$0:Lcom/appcelerator/analytics/APSAnalyticsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appcelerator/analytics/APSAnalyticsHelper;Lcom/appcelerator/analytics/APSAnalyticsHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/appcelerator/analytics/APSAnalyticsHelper;
    .param p2, "x1"    # Lcom/appcelerator/analytics/APSAnalyticsHelper$1;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/appcelerator/analytics/APSAnalyticsHelper$AnalyticsCallback;-><init>(Lcom/appcelerator/analytics/APSAnalyticsHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 544
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 545
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->access$200()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 546
    const-string v0, "APSAnalyticsHelper"

    const-string v1, "Analytics service not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    const/4 v0, 0x1

    .line 550
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
