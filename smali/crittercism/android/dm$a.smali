.class public final Lcrittercism/android/dm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcrittercism/android/an;)Lcrittercism/android/dm;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    sget-object v0, Lcrittercism/android/ck;->i:Lcrittercism/android/ck;

    invoke-virtual {v0}, Lcrittercism/android/ck;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcrittercism/android/ck;->i:Lcrittercism/android/ck;

    invoke-virtual {v3}, Lcrittercism/android/ck;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lcrittercism/android/an;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 36
    :goto_1
    if-eqz v1, :cond_1

    .line 37
    const-string v0, "optOutStatusSet"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    :goto_2
    if-eqz v0, :cond_0

    .line 41
    const-string v0, "optOutStatus"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 47
    :goto_3
    new-instance v1, Lcrittercism/android/dm;

    invoke-direct {v1, v0}, Lcrittercism/android/dm;-><init>(Z)V

    return-object v1

    .line 32
    :catch_0
    move-exception v0

    invoke-static {}, Lcrittercism/android/dr;->b()V

    goto :goto_1

    .line 43
    :cond_0
    sget-object v0, Lcrittercism/android/ck;->l:Lcrittercism/android/ck;

    invoke-virtual {v0}, Lcrittercism/android/ck;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcrittercism/android/ck;->l:Lcrittercism/android/ck;

    invoke-virtual {v1}, Lcrittercism/android/ck;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcrittercism/android/an;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
