.class public final Lcrittercism/android/bd;
.super Lcrittercism/android/ca;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/bd$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcrittercism/android/bd$a;


# direct methods
.method public constructor <init>(Lcrittercism/android/bd$a;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcrittercism/android/ca;-><init>()V

    .line 48
    sget-object v0, Lcrittercism/android/by;->a:Lcrittercism/android/by;

    invoke-virtual {v0}, Lcrittercism/android/by;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->a:Ljava/lang/String;

    .line 51
    sget-object v0, Lcrittercism/android/dx;->a:Lcrittercism/android/dx;

    invoke-virtual {v0}, Lcrittercism/android/dx;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcrittercism/android/bd;->c:Lcrittercism/android/bd$a;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    const-string v1, "event"

    iget-object v2, p0, Lcrittercism/android/bd;->c:Lcrittercism/android/bd$a;

    invoke-virtual {v2}, Lcrittercism/android/bd$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcrittercism/android/bd;->a:Ljava/lang/String;

    return-object v0
.end method
