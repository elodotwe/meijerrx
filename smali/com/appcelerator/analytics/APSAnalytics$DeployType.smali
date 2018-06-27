.class public final enum Lcom/appcelerator/analytics/APSAnalytics$DeployType;
.super Ljava/lang/Enum;
.source "APSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appcelerator/analytics/APSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeployType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appcelerator/analytics/APSAnalytics$DeployType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appcelerator/analytics/APSAnalytics$DeployType;

.field public static final enum DEVELOPMENT:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

.field public static final enum OTHER:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

.field public static final enum PRODUCTION:Lcom/appcelerator/analytics/APSAnalytics$DeployType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    const-string v1, "PRODUCTION"

    const-string v2, "production"

    invoke-direct {v0, v1, v3, v2}, Lcom/appcelerator/analytics/APSAnalytics$DeployType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->PRODUCTION:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    .line 45
    new-instance v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    const-string v1, "DEVELOPMENT"

    const-string v2, "development"

    invoke-direct {v0, v1, v4, v2}, Lcom/appcelerator/analytics/APSAnalytics$DeployType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->DEVELOPMENT:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    .line 46
    new-instance v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    const-string v1, "OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v5, v2}, Lcom/appcelerator/analytics/APSAnalytics$DeployType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->OTHER:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    sget-object v1, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->PRODUCTION:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->DEVELOPMENT:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->OTHER:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->$VALUES:[Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appcelerator/analytics/APSAnalytics$DeployType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    return-object v0
.end method

.method public static values()[Lcom/appcelerator/analytics/APSAnalytics$DeployType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->$VALUES:[Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    invoke-virtual {v0}, [Lcom/appcelerator/analytics/APSAnalytics$DeployType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->OTHER:Lcom/appcelerator/analytics/APSAnalytics$DeployType;

    if-eq p0, v0, :cond_0

    .line 57
    const-string v0, "APSAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal to change name of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/appcelerator/analytics/APSAnalytics$DeployType;->name:Ljava/lang/String;

    goto :goto_0
.end method
