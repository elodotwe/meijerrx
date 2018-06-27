.class public final Lcom/google/zxing/client/android/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final KEY_BULK_MODE:Ljava/lang/String; = "preferences_bulk_mode"

.field public static final KEY_COPY_TO_CLIPBOARD:Ljava/lang/String; = "preferences_copy_to_clipboard"

.field public static final KEY_CUSTOM_PRODUCT_SEARCH:Ljava/lang/String; = "preferences_custom_product_search"

.field public static final KEY_DECODE_1D:Ljava/lang/String; = "preferences_decode_1D"

.field public static final KEY_DECODE_DATA_MATRIX:Ljava/lang/String; = "preferences_decode_Data_Matrix"

.field public static final KEY_DECODE_QR:Ljava/lang/String; = "preferences_decode_QR"

.field public static final KEY_FRONT_CAMERA:Ljava/lang/String; = "preferences_front_camera"

.field public static final KEY_FRONT_LIGHT:Ljava/lang/String; = "preferences_front_light"

.field public static final KEY_HELP_VERSION_SHOWN:Ljava/lang/String; = "preferences_help_version_shown"

.field public static final KEY_PLAY_BEEP:Ljava/lang/String; = "preferences_play_beep"

.field public static final KEY_REMEMBER_DUPLICATES:Ljava/lang/String; = "preferences_remember_duplicates"

.field public static final KEY_REVERSE_IMAGE:Ljava/lang/String; = "preferences_reverse_image"

.field public static final KEY_SEARCH_COUNTRY:Ljava/lang/String; = "preferences_search_country"

.field public static final KEY_SUPPLEMENTAL:Ljava/lang/String; = "preferences_supplemental"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "preferences_vibrate"


# instance fields
.field private decode1D:Landroid/preference/CheckBoxPreference;

.field private decodeDataMatrix:Landroid/preference/CheckBoxPreference;

.field private decodeQR:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private disableLastCheckedPref()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v2, "checked":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/preference/CheckBoxPreference;>;"
    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 82
    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 85
    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 88
    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    if-ge v9, v10, :cond_4

    move v3, v7

    .line 91
    .local v3, "disable":Z
    :goto_0
    new-array v1, v11, [Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    aput-object v9, v1, v8

    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    aput-object v9, v1, v7

    iget-object v9, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    aput-object v9, v1, v10

    .line 92
    .local v1, "checkBoxPreferences":[Landroid/preference/CheckBoxPreference;
    move-object v0, v1

    .local v0, "arr$":[Landroid/preference/CheckBoxPreference;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    .line 93
    .local v6, "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_3

    invoke-interface {v2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    move v9, v7

    :goto_2
    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Landroid/preference/CheckBoxPreference;
    .end local v1    # "checkBoxPreferences":[Landroid/preference/CheckBoxPreference;
    .end local v3    # "disable":Z
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_4
    move v3, v8

    .line 90
    goto :goto_0

    .restart local v0    # "arr$":[Landroid/preference/CheckBoxPreference;
    .restart local v1    # "checkBoxPreferences":[Landroid/preference/CheckBoxPreference;
    .restart local v3    # "disable":Z
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_5
    move v9, v8

    .line 93
    goto :goto_2

    .line 95
    .end local v6    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_6
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v1, "preferences"

    invoke-static {v1}, Lti/barcode/RHelper;->getXML(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/client/android/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 67
    .local v0, "preferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 68
    const-string v1, "preferences_decode_1D"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decode1D:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v1, "preferences_decode_QR"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeQR:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v1, "preferences_decode_Data_Matrix"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/google/zxing/client/android/PreferencesActivity;->decodeDataMatrix:Landroid/preference/CheckBoxPreference;

    .line 71
    invoke-direct {p0}, Lcom/google/zxing/client/android/PreferencesActivity;->disableLastCheckedPref()V

    .line 72
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/zxing/client/android/PreferencesActivity;->disableLastCheckedPref()V

    .line 77
    return-void
.end method
