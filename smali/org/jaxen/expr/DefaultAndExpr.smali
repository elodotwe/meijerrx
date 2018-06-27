.class Lorg/jaxen/expr/DefaultAndExpr;
.super Lorg/jaxen/expr/DefaultLogicalExpr;
.source "DefaultAndExpr.java"


# static fields
.field private static final serialVersionUID:J = -0x48b10eb48ee888feL


# direct methods
.method constructor <init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V
    .locals 0
    .param p1, "lhs"    # Lorg/jaxen/expr/Expr;
    .param p2, "rhs"    # Lorg/jaxen/expr/Expr;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/jaxen/expr/DefaultLogicalExpr;-><init>(Lorg/jaxen/expr/Expr;Lorg/jaxen/expr/Expr;)V

    .line 67
    return-void
.end method


# virtual methods
.method public evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;
    .locals 4
    .param p1, "context"    # Lorg/jaxen/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/JaxenException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v1

    .line 82
    .local v1, "nav":Lorg/jaxen/Navigator;
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultAndExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v0

    .line 84
    .local v0, "lhsValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 98
    :goto_0
    return-object v3

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultAndExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/jaxen/expr/Expr;->evaluate(Lorg/jaxen/Context;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/jaxen/function/BooleanFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/Boolean;

    move-result-object v2

    .line 93
    .local v2, "rhsValue":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 98
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "and"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[(DefaultAndExpr): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultAndExpr;->getLHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaxen/expr/DefaultAndExpr;->getRHS()Lorg/jaxen/expr/Expr;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
