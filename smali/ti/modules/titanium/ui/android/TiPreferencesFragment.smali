.class public Lti/modules/titanium/ui/android/TiPreferencesFragment;
.super Landroid/preference/PreferenceFragment;
.source "TiPreferencesFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiPreferencesFragment"


# instance fields
.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/android/TiPreferencesFragment;->title:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "prefsName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "prefsName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "titanium"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xml."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    .line 25
    .local v2, "resid":I
    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->addPreferencesFromResource(I)V

    .line 27
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/android/TiPreferencesFragment;->title:Ljava/lang/CharSequence;

    .line 38
    .end local v2    # "resid":I
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v2    # "resid":I
    :cond_1
    const-string v3, "TiPreferencesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xml."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preferences not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    .end local v2    # "resid":I
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    const-string v3, "TiPreferencesFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading preferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 43
    iget-object v0, p0, Lti/modules/titanium/ui/android/TiPreferencesFragment;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/android/TiPreferencesFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method
