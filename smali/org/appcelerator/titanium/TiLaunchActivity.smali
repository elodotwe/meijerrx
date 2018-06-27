.class public abstract Lorg/appcelerator/titanium/TiLaunchActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiLaunchActivity.java"


# static fields
.field private static final FINISH_DELAY:I = 0x1f4

.field private static final KINDLE_FIRE_RESTART_FLAGS:I = 0x10600000

.field private static final KINDLE_MODEL:Ljava/lang/String; = "kindle"

.field private static final MSG_FINISH:I = 0x64

.field private static final RESTART_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "TiLaunchActivity"

.field private static final VALID_LAUNCH_FLAGS:I = 0x300000

.field private static final creationCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected finishing2373:Z

.field private invalidLaunchAlert:Landroid/app/AlertDialog;

.field private invalidLaunchDetected:Z

.field private restartAlarmManager:Landroid/app/AlarmManager;

.field private restartDelay:I

.field private restartPendingIntent:Landroid/app/PendingIntent;

.field protected url:Lorg/appcelerator/titanium/util/TiUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/TiLaunchActivity;->creationCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 55
    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 57
    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 58
    iput-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 59
    iput v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    .line 66
    iput-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/TiLaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/appcelerator/titanium/TiLaunchActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    return-void
.end method

.method private doFinishForRestart()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    .line 283
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 287
    :cond_1
    return-void
.end method


# virtual methods
.method protected alertMissingLauncher()V
    .locals 11

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x0

    .line 210
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v7

    invoke-virtual {v7}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v5

    .line 211
    .local v5, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v7, "ti.android.bug2373.message"

    const-string v8, "An application restart is required"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "message":Ljava/lang/String;
    const-string v7, "ti.android.bug2373.restartDelay"

    invoke-virtual {v5, v7, v10}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 213
    .local v3, "restartDelay":I
    const-string v7, "ti.android.bug2373.finishDelay"

    invoke-virtual {v5, v7, v10}, Lorg/appcelerator/titanium/TiProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "finishDelay":I
    const-string v7, "ti.android.bug2373.skipAlert"

    invoke-virtual {v5, v7, v9}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 217
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 219
    :cond_0
    invoke-virtual {p0, v3, v1}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V

    .line 237
    :goto_0
    return-void

    .line 221
    :cond_1
    new-instance v4, Lorg/appcelerator/titanium/TiLaunchActivity$1;

    invoke-direct {v4, p0, v3, v1}, Lorg/appcelerator/titanium/TiLaunchActivity$1;-><init>(Lorg/appcelerator/titanium/TiLaunchActivity;II)V

    .line 228
    .local v4, "restartListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v7, "ti.android.bug2373.title"

    const-string v8, "Restart Required"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, "title":Ljava/lang/String;
    const-string v7, "ti.android.bug2373.buttonText"

    const-string v8, "Continue"

    invoke-virtual {v5, v7, v8}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "buttonText":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    .line 235
    iget-object v7, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected checkInvalidLaunch(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    iput-boolean v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 176
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-nez v3, :cond_0

    .line 184
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v3, v6, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v6, 0x300000

    and-int/2addr v3, v6

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    .line 189
    :cond_0
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v3, :cond_3

    .line 190
    const-string v3, "TiLaunchActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android issue 2373 detected (missing intent CATEGORY_LAUNCHER or FLAG_ACTIVITY_RESET_TASK_IF_NEEDED), restarting app. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v3, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    iget-object v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->window:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-direct {v3, p0, v5}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    iput-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Landroid/view/View;

    .line 192
    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Landroid/view/View;

    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/TiLaunchActivity;->setContentView(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    .line 194
    .local v2, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v3, "ti.android.bug2373.backgroundColor"

    const-string v5, "black"

    invoke-virtual {v2, v3, v5}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, "backgroundColor":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 196
    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->layout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnCreate(Landroid/os/Bundle;)V

    .line 204
    .end local v1    # "backgroundColor":I
    .end local v2    # "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    :goto_2
    return v4

    :cond_1
    move v3, v5

    .line 174
    goto :goto_0

    :cond_2
    move v3, v5

    .line 185
    goto :goto_1

    :cond_3
    move v4, v5

    .line 204
    goto :goto_2
.end method

.method protected checkInvalidLaunch(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 157
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    .line 159
    .local v2, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v4, "ti.android.bug2373.disableDetection"

    invoke-virtual {v2, v4, v3}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ti.android.bug2373.finishfalseroot"

    invoke-virtual {v2, v4, v0}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 161
    .local v0, "detectionDisabled":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->checkInvalidLaunch(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    .line 165
    .end local v0    # "detectionDisabled":Z
    .end local v2    # "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    :cond_1
    return v3

    .restart local v2    # "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    :cond_2
    move v0, v3

    .line 159
    goto :goto_0
.end method

.method protected contextCreated()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public isJSActivity()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method protected loadActivityScript()V
    .locals 5

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "fullUrl":Ljava/lang/String;
    const-string v1, "TiLaunchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval JS Activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, "app://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "app:/"

    const-string v2, "Resources"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    :goto_0
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v1

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->activityProxy:Lorg/appcelerator/titanium/proxy/ActivityProxy;

    invoke-virtual {v1, v2, v0, v3}, Lorg/appcelerator/kroll/KrollRuntime;->runModule(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProxySupport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    const-string v1, "TiLaunchActivity"

    const-string v2, "Signal JS loaded"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 98
    :cond_1
    :try_start_1
    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 105
    .end local v0    # "fullUrl":Ljava/lang/String;
    :catchall_0
    move-exception v1

    const-string v2, "TiLaunchActivity"

    const-string v3, "Signal JS loaded"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->willFinishFalseRootActivity(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    .line 118
    .local v1, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v2

    if-nez v2, :cond_3

    .line 120
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->isUnsupportedReLaunch(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->checkInvalidLaunch(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->url:Lorg/appcelerator/titanium/util/TiUrl;

    .line 136
    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    .local v0, "tempCurrentActivity":Landroid/app/Activity;
    invoke-virtual {v1, p0, p0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 140
    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/TiApplication;->setCurrentActivity(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 142
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->contextCreated()V

    .line 143
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 395
    iget-boolean v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnDestroy()V

    .line 417
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 402
    .local v0, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v1, :cond_3

    .line 403
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnDestroy()V

    .line 404
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_2

    .line 405
    invoke-virtual {p0, v9}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(I)V

    .line 407
    :cond_2
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->beforeForcedRestart()V

    .line 408
    iget-object v1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iget-object v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 409
    iput-object v8, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 410
    iput-object v8, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 411
    iput-object v8, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchAlert:Landroid/app/AlertDialog;

    .line 412
    iput-boolean v9, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    goto :goto_0

    .line 416
    :cond_3
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroy()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnPause()V

    .line 338
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    goto :goto_0

    .line 331
    :cond_1
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v0, :cond_2

    .line 332
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    .line 333
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnPause()V

    goto :goto_0

    .line 337
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 297
    iget-boolean v3, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnRestart()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onRestart()V

    .line 303
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    .line 305
    .local v2, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v1

    .line 311
    .local v1, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    const-string v3, "ti.android.root.reappears.restart"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    .line 312
    .local v0, "restart":Z
    if-eqz v0, :cond_0

    .line 313
    const-string v3, "TiLaunchActivity"

    const-string v4, "Tasks may have been destroyed by Android OS for inactivity. Restarting."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiApplication;->scheduleRestart(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnResume()V

    .line 390
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :cond_1
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    goto :goto_0

    .line 383
    :cond_2
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-eqz v0, :cond_3

    .line 384
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->alertMissingLauncher()V

    .line 385
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnResume()V

    goto :goto_0

    .line 389
    :cond_3
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_2

    .line 365
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnStart()V

    goto :goto_0

    .line 368
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->isRestartPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    .line 354
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->invalidLaunchDetected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v0, :cond_2

    .line 349
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnStop()V

    goto :goto_0

    .line 353
    :cond_2
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    goto :goto_0
.end method

.method protected restartActivity(I)V
    .locals 1
    .param p1, "delay"    # I

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/titanium/TiLaunchActivity;->restartActivity(II)V

    .line 242
    return-void
.end method

.method protected restartActivity(II)V
    .locals 6
    .param p1, "delay"    # I
    .param p2, "finishDelay"    # I

    .prologue
    .line 246
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v1, "relaunch":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/TiLaunchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    .line 251
    iget-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartAlarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartPendingIntent:Landroid/app/PendingIntent;

    .line 253
    iput p1, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->restartDelay:I

    .line 256
    :cond_0
    if-lez p2, :cond_1

    .line 257
    new-instance v0, Lorg/appcelerator/titanium/TiLaunchActivity$2;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/TiLaunchActivity$2;-><init>(Lorg/appcelerator/titanium/TiLaunchActivity;)V

    .line 270
    .local v0, "handler":Landroid/os/Handler;
    const/16 v2, 0x64

    int-to-long v4, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->doFinishForRestart()V

    goto :goto_0
.end method

.method protected scriptLoaded()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected willFinishFalseRootActivity(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 447
    iput-boolean v5, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    .line 449
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    .line 451
    .local v3, "tiApp":Lorg/appcelerator/titanium/TiApplication;
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getForceFinishRootActivity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    iput-boolean v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    .line 453
    invoke-virtual {v3, v5}, Lorg/appcelerator/titanium/TiApplication;->setForceFinishRootActivity(Z)V

    .line 454
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnCreate(Landroid/os/Bundle;)V

    .line 455
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 456
    const-string v4, "TiLaunchActivity"

    const-string v5, "willFinishFalseRootActivity: TiApplication.forceFinishRoot = true"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    .line 507
    :goto_0
    return v4

    .line 460
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isTaskRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 468
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 470
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 481
    :cond_3
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_0

    .line 484
    :cond_4
    const/4 v2, 0x0

    .line 486
    .local v2, "systemProperties":Lorg/appcelerator/titanium/TiProperties;
    if-eqz v3, :cond_5

    .line 487
    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v2

    .line 490
    :cond_5
    if-eqz v2, :cond_8

    const-string v4, "ti.android.bug2373.finishfalseroot"

    invoke-virtual {v2, v4, v6}, Lorg/appcelerator/titanium/TiProperties;->getBool(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 492
    iput-boolean v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    .line 499
    :cond_6
    :goto_1
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    if-eqz v4, :cond_7

    .line 503
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/TiLaunchActivity;->activityOnCreate(Landroid/os/Bundle;)V

    .line 504
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->finish()V

    .line 507
    :cond_7
    iget-boolean v4, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_0

    .line 493
    :cond_8
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kindle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lorg/appcelerator/titanium/TiLaunchActivity;->creationCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10600000

    if-ne v4, v5, :cond_6

    .line 496
    iput-boolean v6, p0, Lorg/appcelerator/titanium/TiLaunchActivity;->finishing2373:Z

    goto :goto_1
.end method

.method protected windowCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiBaseActivity;->windowCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->loadActivityScript()V

    .line 151
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiLaunchActivity;->scriptLoaded()V

    .line 152
    return-void
.end method
