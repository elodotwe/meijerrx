.class final Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/wifi/WifiConfigManager;->configure(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$networkTypeString:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$ssid:Ljava/lang/String;

.field final synthetic val$wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$networkTypeString:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$ssid:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 47
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 48
    invoke-static {}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enabling wi-fi..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-static {}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Wi-fi enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "count":I
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 58
    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    .line 59
    invoke-static {}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Took too long to enable wi-fi, quitting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "count":I
    :cond_0
    :goto_1
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Wi-fi could not be enabled!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    .restart local v0    # "count":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Still waiting for wi-fi to enable..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "count":I
    :cond_3
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$networkTypeString:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/zxing/client/android/wifi/NetworkType;->forIntentValue(Ljava/lang/String;)Lcom/google/zxing/client/android/wifi/NetworkType;

    move-result-object v1

    .line 72
    .local v1, "networkType":Lcom/google/zxing/client/android/wifi/NetworkType;
    sget-object v2, Lcom/google/zxing/client/android/wifi/NetworkType;->NO_PASSWORD:Lcom/google/zxing/client/android/wifi/NetworkType;

    if-ne v1, v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$ssid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$100(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$password:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 76
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 78
    :cond_6
    sget-object v2, Lcom/google/zxing/client/android/wifi/NetworkType;->WEP:Lcom/google/zxing/client/android/wifi/NetworkType;

    if-ne v1, v2, :cond_7

    .line 79
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$ssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$password:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$200(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_7
    sget-object v2, Lcom/google/zxing/client/android/wifi/NetworkType;->WPA:Lcom/google/zxing/client/android/wifi/NetworkType;

    if-ne v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$ssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/zxing/client/android/wifi/WifiConfigManager$1;->val$password:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->access$300(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    .end local v1    # "networkType":Lcom/google/zxing/client/android/wifi/NetworkType;
    .restart local v0    # "count":I
    :catch_0
    move-exception v2

    goto :goto_2
.end method
