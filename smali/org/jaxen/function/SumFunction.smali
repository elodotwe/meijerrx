.class public Lorg/jaxen/function/SumFunction;
.super Ljava/lang/Object;
.source "SumFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "nav"    # Lorg/jaxen/Navigator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 117
    const-wide/16 v2, 0x0

    .line 119
    .local v2, "sum":D
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 121
    check-cast p0, Ljava/util/List;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    .local v0, "nodeIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jaxen/function/NumberFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 126
    .local v4, "term":D
    add-double/2addr v2, v4

    .line 127
    goto :goto_0

    .line 131
    .end local v0    # "nodeIter":Ljava/util/Iterator;
    .end local v4    # "term":D
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lorg/jaxen/FunctionCallException;

    const-string v6, "The argument to the sum function must be a node-set"

    invoke-direct {v1, v6}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    .end local p0    # "obj":Ljava/lang/Object;
    .restart local v0    # "nodeIter":Ljava/util/Iterator;
    :cond_1
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Lorg/jaxen/Context;
    .param p2, "args"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaxen/function/SumFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "sum() requires one argument."

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
