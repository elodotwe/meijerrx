.class Lorg/appcelerator/titanium/TiApplication$1;
.super Ljava/lang/Object;
.source "TiApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/titanium/TiApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/TiApplication;

.field final synthetic val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lorg/appcelerator/titanium/TiApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lorg/appcelerator/titanium/TiApplication$1;->this$0:Lorg/appcelerator/titanium/TiApplication;

    iput-object p2, p0, Lorg/appcelerator/titanium/TiApplication$1;->val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 364
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication$1;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isAnalyticsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication$1;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-static {v2}, Lorg/appcelerator/titanium/TiApplication;->access$000(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication$1;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-static {v2}, Lorg/appcelerator/titanium/TiApplication;->access$100(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/appcelerator/titanium/TiApplication$1;->this$0:Lorg/appcelerator/titanium/TiApplication;

    invoke-static {v2}, Lorg/appcelerator/titanium/TiApplication;->access$200(Lorg/appcelerator/titanium/TiApplication;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "tiVer":Ljava/lang/String;
    const-string v1, "TiApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending event: exception on thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Titanium "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v1

    invoke-static {p1, p2, v0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createErrorEvent(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)Lcom/appcelerator/analytics/APSAnalyticsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->postAnalyticsEvent(Lcom/appcelerator/analytics/APSAnalyticsEvent;)V

    .line 369
    .end local v0    # "tiVer":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiApplication$1;->val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 370
    return-void
.end method
