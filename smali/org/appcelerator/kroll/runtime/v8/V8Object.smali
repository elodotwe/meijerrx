.class public Lorg/appcelerator/kroll/runtime/v8/V8Object;
.super Lorg/appcelerator/kroll/KrollObject;
.source "V8Object.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "V8Object"


# instance fields
.field private volatile ptr:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollObject;-><init>()V

    .line 21
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 22
    return-void
.end method

.method private static native nativeCallProperty(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private native nativeFireEvent(JLjava/lang/Object;JLjava/lang/String;Ljava/lang/Object;ZZILjava/lang/String;)Z
.end method

.method protected static native nativeInitObject(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method private static native nativeRelease(J)Z
.end method

.method private native nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)V
.end method

.method private native nativeSetWindow(JLjava/lang/Object;)V
.end method


# virtual methods
.method public callProperty(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "V8Object"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runtime disposed, cannot call property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-static {v0, v1, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeCallProperty(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public doRelease()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 79
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeRelease(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iput-wide v2, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 85
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->suggestGC()V

    goto :goto_0
.end method

.method public doSetWindow(Ljava/lang/Object;)V
    .locals 2
    .param p1, "windowProxyObject"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeSetWindow(JLjava/lang/Object;)V

    .line 93
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 100
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->release()V

    .line 103
    :cond_0
    return-void
.end method

.method public fireEvent(Lorg/appcelerator/kroll/KrollObject;Ljava/lang/String;Ljava/lang/Object;ZZILjava/lang/String;)Z
    .locals 12
    .param p1, "source"    # Lorg/appcelerator/kroll/KrollObject;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "bubbles"    # Z
    .param p5, "reportSuccess"    # Z
    .param p6, "code"    # I
    .param p7, "message"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "V8Object"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runtime disposed, cannot fire event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 58
    :cond_0
    const-wide/16 v4, 0x0

    .line 59
    .local v4, "sourceptr":J
    instance-of v0, p1, Lorg/appcelerator/kroll/runtime/v8/V8Object;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 60
    check-cast v0, Lorg/appcelerator/kroll/runtime/v8/V8Object;

    invoke-virtual {v0}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->getPointer()J

    move-result-wide v4

    .line 62
    :cond_1
    iget-wide v1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeFireEvent(JLjava/lang/Object;JLjava/lang/String;Ljava/lang/Object;ZZILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNativeObject()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public getPointer()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    return-wide v0
.end method

.method public setPointer(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    .line 32
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "V8Object"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runtime disposed, cannot set property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-wide v0, p0, Lorg/appcelerator/kroll/runtime/v8/V8Object;->ptr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/appcelerator/kroll/runtime/v8/V8Object;->nativeSetProperty(JLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
