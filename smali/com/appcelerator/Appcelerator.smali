.class public abstract Lcom/appcelerator/Appcelerator;
.super Ljava/lang/Object;
.source "Appcelerator.java"


# static fields
.field private static SDK_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "0.8.6"

    sput-object v0, Lcom/appcelerator/Appcelerator;->SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/appcelerator/Appcelerator;->SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method
