.class public final Lcrittercism/android/de;
.super Lcrittercism/android/dc;


# instance fields
.field private a:Lcrittercism/android/an;

.field private final b:Z

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcrittercism/android/an;Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcrittercism/android/dc;-><init>()V

    .line 22
    iput-object p2, p0, Lcrittercism/android/de;->a:Lcrittercism/android/an;

    .line 25
    iput-boolean p3, p0, Lcrittercism/android/de;->b:Z

    .line 26
    iput-object p1, p0, Lcrittercism/android/de;->c:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting opt out status to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcrittercism/android/de;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  This will take effect in the next user session."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V

    .line 32
    iget-boolean v0, p0, Lcrittercism/android/de;->b:Z

    iget-object v1, p0, Lcrittercism/android/de;->a:Lcrittercism/android/an;

    sget-object v2, Lcrittercism/android/ck;->i:Lcrittercism/android/ck;

    invoke-virtual {v2}, Lcrittercism/android/ck;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ck;->i:Lcrittercism/android/ck;

    invoke-virtual {v3}, Lcrittercism/android/ck;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "optOutStatus"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "optOutStatusSet"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcrittercism/android/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-boolean v0, p0, Lcrittercism/android/de;->b:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcrittercism/android/de;->c:Landroid/content/Context;

    const-string v1, "com.crittercism.optmz.config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    iget-object v0, p0, Lcrittercism/android/de;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/i;->b(Landroid/content/Context;)V

    .line 43
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
