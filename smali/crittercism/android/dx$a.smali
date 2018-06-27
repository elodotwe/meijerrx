.class final Lcrittercism/android/dx$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/dy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/dx;


# direct methods
.method private constructor <init>(Lcrittercism/android/dx;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcrittercism/android/dx$a;->a:Lcrittercism/android/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcrittercism/android/dx;B)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcrittercism/android/dx$a;-><init>(Lcrittercism/android/dx;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method
