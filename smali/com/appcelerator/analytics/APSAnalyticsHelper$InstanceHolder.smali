.class Lcom/appcelerator/analytics/APSAnalyticsHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "APSAnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appcelerator/analytics/APSAnalyticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/appcelerator/analytics/APSAnalyticsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/appcelerator/analytics/APSAnalyticsHelper;

    invoke-direct {v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;-><init>()V

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper$InstanceHolder;->INSTANCE:Lcom/appcelerator/analytics/APSAnalyticsHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/appcelerator/analytics/APSAnalyticsHelper;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsHelper$InstanceHolder;->INSTANCE:Lcom/appcelerator/analytics/APSAnalyticsHelper;

    return-object v0
.end method
