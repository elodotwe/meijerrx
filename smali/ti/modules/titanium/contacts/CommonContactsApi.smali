.class public abstract Lti/modules/titanium/contacts/CommonContactsApi;
.super Ljava/lang/Object;
.source "CommonContactsApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiCommonContactsApi"

.field private static final TRY_NEWER_API:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lti/modules/titanium/contacts/CommonContactsApi;->TRY_NEWER_API:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method

.method protected static getContactImage(J)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "contact_id"    # J

    .prologue
    .line 86
    invoke-static {}, Lti/modules/titanium/contacts/CommonContactsApi;->getInstance()Lti/modules/titanium/contacts/CommonContactsApi;

    move-result-object v0

    .line 87
    .local v0, "api":Lti/modules/titanium/contacts/CommonContactsApi;
    invoke-virtual {v0, p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi;->getInternalContactImage(J)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected static getContactImage(Lorg/appcelerator/titanium/TiContext;J)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "contact_id"    # J

    .prologue
    .line 92
    invoke-static {p1, p2}, Lti/modules/titanium/contacts/CommonContactsApi;->getContactImage(J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected static getDateTextType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 140
    const-string v0, "other"

    .line 141
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 142
    const-string v0, "anniversary"

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 144
    const-string v0, "birthday"

    goto :goto_0

    .line 145
    :cond_2
    if-nez p0, :cond_0

    .line 146
    const-string v0, "custom"

    goto :goto_0
.end method

.method protected static getEmailTextType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 129
    const-string v0, "other"

    .line 130
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 131
    const-string v0, "home"

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 133
    const-string v0, "work"

    goto :goto_0
.end method

.method protected static getImTextType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 153
    const-string v0, "other"

    .line 154
    .local v0, "key":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 155
    const-string v0, "aim"

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    .line 157
    const-string v0, "custom"

    goto :goto_0

    .line 158
    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    .line 159
    const-string v0, "msn"

    goto :goto_0

    .line 160
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    .line 161
    const-string v0, "yahoo"

    goto :goto_0

    .line 162
    :cond_4
    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    .line 163
    const-string v0, "skype"

    goto :goto_0

    .line 164
    :cond_5
    const/4 v1, 0x4

    if-ne p0, v1, :cond_6

    .line 165
    const-string v0, "qq"

    goto :goto_0

    .line 166
    :cond_6
    const/4 v1, 0x5

    if-ne p0, v1, :cond_7

    .line 167
    const-string v0, "googleTalk"

    goto :goto_0

    .line 168
    :cond_7
    const/4 v1, 0x6

    if-ne p0, v1, :cond_8

    .line 169
    const-string v0, "icq"

    goto :goto_0

    .line 170
    :cond_8
    const/4 v1, 0x7

    if-ne p0, v1, :cond_9

    .line 171
    const-string v0, "jabber"

    goto :goto_0

    .line 172
    :cond_9
    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    .line 173
    const-string v0, "netMeeting"

    goto :goto_0
.end method

.method protected static getInstance()Lti/modules/titanium/contacts/CommonContactsApi;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    .local v2, "useNew":Z
    sget-boolean v4, Lti/modules/titanium/contacts/CommonContactsApi;->TRY_NEWER_API:Z

    if-eqz v4, :cond_1

    .line 39
    :try_start_0
    const-string v4, "android.provider.ContactsContract"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v2, 0x1

    .line 50
    :goto_0
    if-eqz v2, :cond_2

    .line 51
    new-instance v0, Lti/modules/titanium/contacts/ContactsApiLevel5;

    invoke-direct {v0}, Lti/modules/titanium/contacts/ContactsApiLevel5;-><init>()V

    .line 52
    .local v0, "c":Lti/modules/titanium/contacts/ContactsApiLevel5;
    iget-boolean v4, v0, Lti/modules/titanium/contacts/ContactsApiLevel5;->loadedOk:Z

    if-nez v4, :cond_0

    .line 53
    const-string v4, "TiCommonContactsApi"

    const-string v5, "ContactsApiLevel5 did not load successfully."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 62
    .end local v0    # "c":Lti/modules/titanium/contacts/ContactsApiLevel5;
    :cond_0
    :goto_1
    return-object v0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "TiCommonContactsApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load contacts api: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    const/4 v2, 0x0

    .line 45
    goto :goto_0

    .line 47
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    const-string v4, "TiCommonContactsApi"

    const-string v5, "Contacts API 4 is not supported"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 62
    goto :goto_1
.end method

.method protected static getInstance(Lorg/appcelerator/titanium/TiContext;)Lti/modules/titanium/contacts/CommonContactsApi;
    .locals 1
    .param p0, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 81
    invoke-static {}, Lti/modules/titanium/contacts/CommonContactsApi;->getInstance()Lti/modules/titanium/contacts/CommonContactsApi;

    move-result-object v0

    return-object v0
.end method

.method protected static getPhoneTextType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 217
    const-string v0, "other"

    .line 218
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 219
    const-string v0, "homeFax"

    .line 221
    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 222
    const-string v0, "workFax"

    .line 224
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 225
    const-string v0, "home"

    .line 227
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    .line 228
    const-string v0, "mobile"

    .line 230
    :cond_3
    const/4 v1, 0x6

    if-ne p0, v1, :cond_4

    .line 231
    const-string v0, "pager"

    .line 233
    :cond_4
    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    .line 234
    const-string v0, "work"

    .line 236
    :cond_5
    return-object v0
.end method

.method protected static getPostalAddressTextType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 242
    const-string v0, "other"

    .line 243
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 244
    const-string v0, "home"

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 245
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 246
    const-string v0, "work"

    goto :goto_0
.end method

.method protected static getRelatedNamesType(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 180
    const-string v0, "other"

    .line 181
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 182
    const-string v0, "assistant"

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 184
    const-string v0, "brother"

    goto :goto_0

    .line 185
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 186
    const-string v0, "child"

    goto :goto_0

    .line 187
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 188
    const-string v0, "domesticPartner"

    goto :goto_0

    .line 189
    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    .line 190
    const-string v0, "father"

    goto :goto_0

    .line 191
    :cond_5
    const/4 v1, 0x6

    if-ne p0, v1, :cond_6

    .line 192
    const-string v0, "friend"

    goto :goto_0

    .line 193
    :cond_6
    const/4 v1, 0x7

    if-ne p0, v1, :cond_7

    .line 194
    const-string v0, "manager"

    goto :goto_0

    .line 195
    :cond_7
    const/16 v1, 0x8

    if-ne p0, v1, :cond_8

    .line 196
    const-string v0, "mother"

    goto :goto_0

    .line 197
    :cond_8
    const/16 v1, 0x9

    if-ne p0, v1, :cond_9

    .line 198
    const-string v0, "parent"

    goto :goto_0

    .line 199
    :cond_9
    const/16 v1, 0xa

    if-ne p0, v1, :cond_a

    .line 200
    const-string v0, "partner"

    goto :goto_0

    .line 201
    :cond_a
    const/16 v1, 0xb

    if-ne p0, v1, :cond_b

    .line 202
    const-string v0, "referredBy"

    goto :goto_0

    .line 203
    :cond_b
    const/16 v1, 0xc

    if-ne p0, v1, :cond_c

    .line 204
    const-string v0, "relative"

    goto :goto_0

    .line 205
    :cond_c
    const/16 v1, 0xd

    if-ne p0, v1, :cond_d

    .line 206
    const-string v0, "sister"

    goto :goto_0

    .line 207
    :cond_d
    const/16 v1, 0xe

    if-ne p0, v1, :cond_e

    .line 208
    const-string v0, "spose"

    goto :goto_0

    .line 209
    :cond_e
    if-nez p0, :cond_0

    .line 210
    const-string v0, "custom"

    goto :goto_0
.end method


# virtual methods
.method protected abstract addContact(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/contacts/PersonProxy;
.end method

.method protected getAllPeople()[Lti/modules/titanium/contacts/PersonProxy;
    .locals 1

    .prologue
    .line 107
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lti/modules/titanium/contacts/CommonContactsApi;->getAllPeople(I)[Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAllPeople(I)[Lti/modules/titanium/contacts/PersonProxy;
.end method

.method protected abstract getIntentForContactsPicker()Landroid/content/Intent;
.end method

.method protected abstract getInternalContactImage(J)Landroid/graphics/Bitmap;
.end method

.method protected abstract getPeopleWithName(Ljava/lang/String;)[Lti/modules/titanium/contacts/PersonProxy;
.end method

.method protected abstract getPersonById(J)Lti/modules/titanium/contacts/PersonProxy;
.end method

.method protected abstract getPersonByUri(Landroid/net/Uri;)Lti/modules/titanium/contacts/PersonProxy;
.end method

.method public hasContactsPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 71
    .local v0, "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :cond_2
    const-string v1, "TiCommonContactsApi"

    const-string v2, "Contact permissions are missing"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected proxifyPeople(Ljava/util/Map;)[Lti/modules/titanium/contacts/PersonProxy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;",
            ">;)[",
            "Lti/modules/titanium/contacts/PersonProxy;"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "persons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    new-array v3, v4, [Lti/modules/titanium/contacts/PersonProxy;

    .line 113
    .local v3, "proxies":[Lti/modules/titanium/contacts/PersonProxy;
    const/4 v1, 0x0

    .line 114
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;

    .line 115
    .local v2, "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    invoke-virtual {v2}, Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;->proxify()Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v4

    aput-object v4, v3, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    goto :goto_0

    .line 118
    .end local v2    # "person":Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;
    :cond_0
    return-object v3
.end method

.method protected proxifyPeople(Ljava/util/Map;Lorg/appcelerator/titanium/TiContext;)[Lti/modules/titanium/contacts/PersonProxy;
    .locals 1
    .param p2, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;",
            ">;",
            "Lorg/appcelerator/titanium/TiContext;",
            ")[",
            "Lti/modules/titanium/contacts/PersonProxy;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "persons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lti/modules/titanium/contacts/CommonContactsApi$LightPerson;>;"
    invoke-virtual {p0, p1}, Lti/modules/titanium/contacts/CommonContactsApi;->proxifyPeople(Ljava/util/Map;)[Lti/modules/titanium/contacts/PersonProxy;

    move-result-object v0

    return-object v0
.end method

.method protected abstract removePerson(Lti/modules/titanium/contacts/PersonProxy;)V
.end method

.method protected abstract save(Ljava/lang/Object;)V
.end method
