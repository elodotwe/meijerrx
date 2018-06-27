.class public final Lcrittercism/android/cn;
.super Lcrittercism/android/cu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/cn$a;
    }
.end annotation


# instance fields
.field private a:Lcrittercism/android/ak;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONObject;

.field private f:Z


# direct methods
.method public constructor <init>(Lcrittercism/android/bk;Lcrittercism/android/bk;Ljava/lang/String;Landroid/content/Context;Lcrittercism/android/ak;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcrittercism/android/cu;-><init>(Lcrittercism/android/bk;Lcrittercism/android/bk;)V

    .line 60
    iput-object p3, p0, Lcrittercism/android/cn;->c:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcrittercism/android/cn;->b:Landroid/content/Context;

    .line 66
    iput-object p5, p0, Lcrittercism/android/cn;->a:Lcrittercism/android/ak;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(ZILorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcrittercism/android/cu;->a(ZILorg/json/JSONObject;)V

    .line 146
    if-eqz p3, :cond_4

    .line 147
    const-string v0, "internalExceptionReporting"

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    sget-object v0, Lcrittercism/android/dr$a;->b:Lcrittercism/android/dr$a;

    sput-object v0, Lcrittercism/android/dr;->a:Lcrittercism/android/dr$a;

    .line 149
    invoke-static {}, Lcrittercism/android/j;->b()V

    .line 154
    :goto_0
    iget-object v0, p0, Lcrittercism/android/cn;->a:Lcrittercism/android/ak;

    invoke-interface {v0}, Lcrittercism/android/ak;->m()Lcrittercism/android/dn;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "rateMyApp"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v3, v2}, Lcrittercism/android/dn;->a(Z)V

    .line 155
    :cond_0
    :goto_1
    const-string v0, "needPkg"

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lcrittercism/android/co;

    iget-object v3, p0, Lcrittercism/android/cn;->a:Lcrittercism/android/ak;

    invoke-direct {v0, v3}, Lcrittercism/android/co;-><init>(Lcrittercism/android/ak;)V

    const-string v3, "device_name"

    iget-object v4, p0, Lcrittercism/android/cn;->a:Lcrittercism/android/ak;

    invoke-interface {v4}, Lcrittercism/android/ak;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcrittercism/android/co;->a(Ljava/lang/String;Ljava/lang/String;)Lcrittercism/android/co;

    move-result-object v0

    const-string v3, "pkg"

    iget-object v4, p0, Lcrittercism/android/cn;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcrittercism/android/co;->a(Ljava/lang/String;Ljava/lang/String;)Lcrittercism/android/co;

    move-result-object v0

    new-instance v3, Lcrittercism/android/cw;

    new-instance v4, Lcrittercism/android/cv;

    iget-object v5, p0, Lcrittercism/android/cn;->c:Ljava/lang/String;

    const-string v6, "/android_v2/update_package_name"

    invoke-direct {v4, v5, v6}, Lcrittercism/android/cv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcrittercism/android/cv;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lcrittercism/android/cw;-><init>(Ljava/net/URL;)V

    new-instance v4, Lcrittercism/android/dd;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v3, v5}, Lcrittercism/android/dd;-><init>(Lcrittercism/android/cq;Lcrittercism/android/cw;Lcrittercism/android/cs;)V

    invoke-virtual {v4}, Lcrittercism/android/dd;->run()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    iput-boolean v1, p0, Lcrittercism/android/cn;->f:Z

    .line 156
    :cond_1
    const-string v0, "apm"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/cn;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Lcrittercism/android/cn;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    new-instance v0, Lcrittercism/android/i;

    iget-object v1, p0, Lcrittercism/android/cn;->d:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcrittercism/android/i;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcrittercism/android/cn;->b:Landroid/content/Context;

    iget-boolean v3, v0, Lcrittercism/android/i;->c:Z

    if-eqz v3, :cond_9

    invoke-static {v1}, Lcrittercism/android/i;->b(Landroid/content/Context;)V

    :cond_2
    :goto_3
    const-string v3, "com.crittercism.optmz.config"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-boolean v3, v0, Lcrittercism/android/i;->b:Z

    if-eqz v3, :cond_a

    const-string v3, "enabled"

    iget-boolean v4, v0, Lcrittercism/android/i;->a:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "kill"

    iget-boolean v4, v0, Lcrittercism/android/i;->c:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "persist"

    iget-boolean v4, v0, Lcrittercism/android/i;->b:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "interval"

    iget v4, v0, Lcrittercism/android/i;->d:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->a(Lcrittercism/android/i;)V

    .line 157
    :cond_3
    const-string v0, "txnConfig"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/cn;->e:Lorg/json/JSONObject;

    iget-object v0, p0, Lcrittercism/android/cn;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    new-instance v0, Lcrittercism/android/az;

    iget-object v1, p0, Lcrittercism/android/cn;->e:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcrittercism/android/az;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcrittercism/android/cn;->b:Landroid/content/Context;

    const-string v3, "com.crittercism.txn.config"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enabled"

    iget-boolean v3, v0, Lcrittercism/android/az;->a:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "interval"

    iget v3, v0, Lcrittercism/android/az;->b:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "defaultTimeout"

    iget v3, v0, Lcrittercism/android/az;->c:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "transactions"

    iget-object v3, v0, Lcrittercism/android/az;->d:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcrittercism/android/ar;->A()Lcrittercism/android/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/ar;->a(Lcrittercism/android/az;)V

    .line 159
    :cond_4
    return-void

    .line 151
    :cond_5
    sget-object v0, Lcrittercism/android/dr$a;->c:Lcrittercism/android/dr$a;

    sput-object v0, Lcrittercism/android/dr;->a:Lcrittercism/android/dr$a;

    goto/16 :goto_0

    .line 154
    :cond_6
    :try_start_1
    const-string v0, "rateAfterLoadNum"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_7

    move v0, v2

    :cond_7
    iget-object v5, v3, Lcrittercism/android/dn;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "rateAfterNumLoads"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "remindAfterLoadNum"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_8

    move v0, v1

    :cond_8
    iget-object v5, v3, Lcrittercism/android/dn;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "remindAfterNumLoads"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "message"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v3, Lcrittercism/android/dn;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "rateAppMessage"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "title"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lcrittercism/android/dn;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "rateAppTitle"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcrittercism/android/dn;->a(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v3, v2}, Lcrittercism/android/dn;->a(Z)V

    goto/16 :goto_1

    .line 155
    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException in handleResponse(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dr;->b()V

    invoke-static {}, Lcrittercism/android/dr;->c()V

    goto/16 :goto_2

    .line 156
    :cond_9
    invoke-static {v1}, Lcrittercism/android/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Unable to reenable OPTMZ instrumentation"

    invoke-static {v3}, Lcrittercism/android/dr;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4
.end method
