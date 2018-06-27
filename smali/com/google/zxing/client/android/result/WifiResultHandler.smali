.class public final Lcom/google/zxing/client/android/result/WifiResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "WifiResultHandler.java"


# instance fields
.field private final parent:Lcom/google/zxing/client/android/CaptureActivity;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/zxing/client/android/CaptureActivity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    .line 40
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 50
    const-string v0, "button_wifi"

    invoke-static {v0}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 72
    .local v3, "wifiResult":Lcom/google/zxing/client/result/WifiParsedResult;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v0, "contents":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    const-string v5, "wifi_ssid_label"

    invoke-static {v5}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "wifiLabel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 75
    iget-object v4, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    const-string v5, "wifi_type_label"

    invoke-static {v5}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/client/android/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "typeLabel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 82
    const-string v0, "result_wifi"

    invoke-static {v0}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/client/result/WifiParsedResult;

    .line 57
    .local v4, "wifiResult":Lcom/google/zxing/client/result/WifiParsedResult;
    if-nez p1, :cond_0

    .line 58
    invoke-virtual {v4}, Lcom/google/zxing/client/result/WifiParsedResult;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "ssid":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/zxing/client/result/WifiParsedResult;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "password":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/zxing/client/result/WifiParsedResult;->getNetworkEncryption()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "networkType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 62
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/WifiResultHandler;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "wifi_changing_network"

    invoke-static {v6}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 63
    invoke-static {v3, v2, v1, v0}, Lcom/google/zxing/client/android/wifi/WifiConfigManager;->configure(Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v5, p0, Lcom/google/zxing/client/android/result/WifiResultHandler;->parent:Lcom/google/zxing/client/android/CaptureActivity;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/client/android/CaptureActivity;->restartPreviewAfterDelay(J)V

    .line 66
    .end local v0    # "networkType":Ljava/lang/String;
    .end local v1    # "password":Ljava/lang/String;
    .end local v2    # "ssid":Ljava/lang/String;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method
