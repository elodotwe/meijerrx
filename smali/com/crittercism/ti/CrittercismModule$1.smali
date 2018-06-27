.class Lcom/crittercism/ti/CrittercismModule$1;
.super Lorg/appcelerator/titanium/TiExceptionHandler;
.source "CrittercismModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/ti/CrittercismModule;->init(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crittercism/ti/CrittercismModule;


# direct methods
.method constructor <init>(Lcom/crittercism/ti/CrittercismModule;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/crittercism/ti/CrittercismModule$1;->this$0:Lcom/crittercism/ti/CrittercismModule;

    invoke-direct {p0}, Lorg/appcelerator/titanium/TiExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)V
    .locals 1
    .param p1, "error"    # Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/crittercism/ti/CrittercismModule$1;->this$0:Lcom/crittercism/ti/CrittercismModule;

    invoke-static {v0, p1}, Lcom/crittercism/ti/CrittercismModule;->access$000(Lcom/crittercism/ti/CrittercismModule;Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method
