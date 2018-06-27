.class Lcom/appcelerator/analytics/APSAnalytics$InstanceHolder;
.super Ljava/lang/Object;
.source "APSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appcelerator/analytics/APSAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/appcelerator/analytics/APSAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/appcelerator/analytics/APSAnalytics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appcelerator/analytics/APSAnalytics;-><init>(Lcom/appcelerator/analytics/APSAnalytics$1;)V

    sput-object v0, Lcom/appcelerator/analytics/APSAnalytics$InstanceHolder;->INSTANCE:Lcom/appcelerator/analytics/APSAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/appcelerator/analytics/APSAnalytics;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/appcelerator/analytics/APSAnalytics$InstanceHolder;->INSTANCE:Lcom/appcelerator/analytics/APSAnalytics;

    return-object v0
.end method
