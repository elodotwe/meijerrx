.class public Lti/modules/titanium/contacts/ContactsModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "ContactsModule.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiActivityResultHandler;


# annotations
.annotation runtime Lorg/appcelerator/titanium/ContextSpecific;
.end annotation


# static fields
.field public static final AUTHORIZATION_AUTHORIZED:I = 0x3

.field public static final AUTHORIZATION_DENIED:I = 0x2

.field public static final AUTHORIZATION_RESTRICTED:I = 0x1

.field public static final AUTHORIZATION_UNKNOWN:I = 0x0

.field public static final CONTACTS_KIND_ORGANIZATION:I = 0x0

.field public static final CONTACTS_KIND_PERSON:I = 0x1

.field public static final CONTACTS_SORT_FIRST_NAME:I = 0x0

.field public static final CONTACTS_SORT_LAST_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TiContacts"


# instance fields
.field private final contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

.field private final requestCodeGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private requests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/appcelerator/kroll/KrollFunction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->requestCodeGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    invoke-static {}, Lti/modules/titanium/contacts/CommonContactsApi;->getInstance()Lti/modules/titanium/contacts/CommonContactsApi;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 63
    invoke-direct {p0}, Lti/modules/titanium/contacts/ContactsModule;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public createPerson(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/contacts/PersonProxy;
    .locals 1
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 119
    iget-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v0, p1}, Lti/modules/titanium/contacts/CommonContactsApi;->addContact(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method

.method public getAllPeople(Lorg/appcelerator/kroll/KrollDict;)[Ljava/lang/Object;
    .locals 12
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 99
    .local v6, "start":Ljava/util/Calendar;
    const v3, 0x7fffffff

    .line 100
    .local v3, "length":I
    if-eqz p1, :cond_0

    .line 101
    const-string v7, "max"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    const-string v7, "max"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 104
    .local v4, "maxObj":Ljava/lang/Double;
    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v3

    .line 108
    .end local v4    # "maxObj":Ljava/lang/Double;
    :cond_0
    iget-object v7, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v7, v3}, Lti/modules/titanium/contacts/CommonContactsApi;->getAllPeople(I)[Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v5

    .line 110
    .local v5, "persons":[Ljava/lang/Object;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 111
    .local v2, "end":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 112
    .local v0, "elapsed":J
    const-string v7, "TiContacts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAllPersons elapsed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " milliseconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v5
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "Ti.Contacts"

    return-object v0
.end method

.method public getContactsAuthorization()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    return v0
.end method

.method public getPeopleWithName(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v0, p1}, Lti/modules/titanium/contacts/CommonContactsApi;->getPeopleWithName(Ljava/lang/String;)[Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method

.method public getPersonByID(J)Lti/modules/titanium/contacts/PersonProxy;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 137
    iget-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/contacts/CommonContactsApi;->getPersonById(J)Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method

.method public hasContactsPermissions()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v0}, Lti/modules/titanium/contacts/CommonContactsApi;->hasContactsPermissions()Z

    move-result v0

    return v0
.end method

.method public onError(Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 208
    const-string v0, "TiContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error from contact picker activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    return-void
.end method

.method public onResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 215
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 216
    .local v2, "rcode":Ljava/lang/Integer;
    iget-object v5, p0, Lti/modules/titanium/contacts/ContactsModule;->requests:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 217
    iget-object v5, p0, Lti/modules/titanium/contacts/ContactsModule;->requests:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 218
    .local v3, "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;>;"
    const-string v5, "TiContacts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received result from contact picker.  Result code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez p3, :cond_2

    .line 220
    const-string v5, "cancel"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    const-string v5, "cancel"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollFunction;

    .line 222
    .local v0, "callback":Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v0, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 241
    .end local v0    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 242
    iget-object v5, p0, Lti/modules/titanium/contacts/ContactsModule;->requests:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v3    # "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;>;"
    :cond_1
    return-void

    .line 226
    .restart local v3    # "request":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;>;"
    :cond_2
    const/4 v5, -0x1

    if-ne p3, v5, :cond_3

    .line 227
    const-string v5, "selectedPerson"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    const-string v5, "selectedPerson"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollFunction;

    .line 229
    .restart local v0    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    if-eqz v0, :cond_0

    .line 230
    iget-object v5, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lti/modules/titanium/contacts/CommonContactsApi;->getPersonByUri(Landroid/net/Uri;)Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v1

    .line 231
    .local v1, "person":Lti/modules/titanium/contacts/PersonProxy;
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v4}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 232
    .local v4, "result":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "person"

    invoke-virtual {v4, v5, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v8

    invoke-interface {v0, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    .end local v0    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    .end local v1    # "person":Lti/modules/titanium/contacts/PersonProxy;
    .end local v4    # "result":Lorg/appcelerator/kroll/KrollDict;
    :cond_3
    const-string v5, "TiContacts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Result code from contact picker activity not understood: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removePerson(Lti/modules/titanium/contacts/PersonProxy;)V
    .locals 1
    .param p1, "person"    # Lti/modules/titanium/contacts/PersonProxy;

    .prologue
    .line 143
    iget-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v0, p1}, Lti/modules/titanium/contacts/CommonContactsApi;->removePerson(Lti/modules/titanium/contacts/PersonProxy;)V

    .line 144
    return-void
.end method

.method public requestAuthorization(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 3
    .param p1, "function"    # Lorg/appcelerator/kroll/KrollFunction;

    .prologue
    .line 149
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 150
    .local v0, "dict":Lorg/appcelerator/kroll/KrollDict;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;Ljava/util/HashMap;)V

    .line 152
    return-void
.end method

.method public requestContactsPermissions(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 4
    .param p1, "permissionCallback"    # Lorg/appcelerator/kroll/KrollFunction;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsModule;->hasContactsPermissions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->contactsCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    if-nez v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lti/modules/titanium/contacts/ContactsModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    sput-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->contactsCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    .line 85
    :cond_1
    sput-object p1, Lorg/appcelerator/titanium/TiBaseActivity;->contactsPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 87
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "currentActivity":Landroid/app/Activity;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .param p1, "people"    # Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v0, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v0, p1}, Lti/modules/titanium/contacts/CommonContactsApi;->save(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public showContacts(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 14
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v11

    if-nez v11, :cond_0

    .line 158
    const-string v11, "TiContacts"

    const-string v12, "Could not showContacts, application is null"

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v11

    invoke-virtual {v11}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    .line 163
    .local v7, "launchingActivity":Landroid/app/Activity;
    if-nez v7, :cond_1

    .line 164
    const-string v11, "TiContacts"

    const-string v12, "Could not showContacts, current activity is null., Log.DEBUG_MODE"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_1
    iget-object v11, p0, Lti/modules/titanium/contacts/ContactsModule;->contactsApi:Lti/modules/titanium/contacts/CommonContactsApi;

    invoke-virtual {v11}, Lti/modules/titanium/contacts/CommonContactsApi;->getIntentForContactsPicker()Landroid/content/Intent;

    move-result-object v6

    .line 174
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "TiContacts"

    const-string v12, "Launching content picker activity"

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v11, p0, Lti/modules/titanium/contacts/ContactsModule;->requestCodeGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    .line 178
    .local v9, "requestCode":I
    iget-object v11, p0, Lti/modules/titanium/contacts/ContactsModule;->requests:Ljava/util/Map;

    if-nez v11, :cond_2

    .line 179
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lti/modules/titanium/contacts/ContactsModule;->requests:Ljava/util/Map;

    .line 181
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v3, "callbacks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/appcelerator/kroll/KrollFunction;>;"
    iget-object v11, p0, Lti/modules/titanium/contacts/ContactsModule;->requests:Ljava/util/Map;

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v11, 0x2

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "selectedPerson"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "cancel"

    aput-object v12, v4, v11

    .line 185
    .local v4, "callbacksToConsider":[Ljava/lang/String;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v2, v1, v5

    .line 186
    .local v2, "callbackToConsider":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 187
    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 188
    .local v10, "test":Ljava/lang/Object;
    instance-of v11, v10, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v11, :cond_3

    .line 189
    check-cast v10, Lorg/appcelerator/kroll/KrollFunction;

    .end local v10    # "test":Ljava/lang/Object;
    invoke-interface {v3, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_3
    const-string v11, "proxy"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 193
    const-string v11, "proxy"

    invoke-virtual {p1, v11}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 194
    .restart local v10    # "test":Ljava/lang/Object;
    if-eqz v10, :cond_4

    instance-of v11, v10, Lorg/appcelerator/kroll/KrollProxy;

    if-eqz v11, :cond_4

    .line 195
    check-cast v10, Lorg/appcelerator/kroll/KrollProxy;

    .end local v10    # "test":Ljava/lang/Object;
    invoke-virtual {v10}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 185
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v2    # "callbackToConsider":Ljava/lang/String;
    :cond_5
    move-object v0, v7

    .line 200
    check-cast v0, Lorg/appcelerator/titanium/util/TiActivitySupport;

    .line 202
    .local v0, "activitySupport":Lorg/appcelerator/titanium/util/TiActivitySupport;
    invoke-interface {v0, v6, v9, p0}, Lorg/appcelerator/titanium/util/TiActivitySupport;->launchActivityForResult(Landroid/content/Intent;ILorg/appcelerator/titanium/util/TiActivityResultHandler;)V

    goto/16 :goto_0
.end method
