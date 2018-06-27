.class Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;
.super Ljava/lang/Object;
.source "V8Runtime.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->initRuntime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    iget-object v4, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-static {v4}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->access$000(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    .line 107
    .local v1, "willGC":Z
    if-nez v1, :cond_0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-static {v6}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->access$100(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v1, v2

    .line 114
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 115
    iget-object v4, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-static {v4}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->access$200(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 116
    .local v0, "gcWantsMore":Z
    :goto_1
    iget-object v3, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->access$102(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;J)J

    .line 117
    if-eqz v0, :cond_1

    .line 118
    iget-object v3, p0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime$1;->this$0:Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-static {v3}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->access$000(Lorg/appcelerator/kroll/runtime/v8/V8Runtime;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    .end local v0    # "gcWantsMore":Z
    :cond_1
    return v2

    :cond_2
    move v1, v3

    .line 112
    goto :goto_0

    :cond_3
    move v0, v3

    .line 115
    goto :goto_1
.end method
