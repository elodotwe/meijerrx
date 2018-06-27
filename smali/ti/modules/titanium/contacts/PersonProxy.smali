.class public Lti/modules/titanium/contacts/PersonProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "PersonProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Person"


# instance fields
.field private fullName:Ljava/lang/String;

.field protected hasImage:Z

.field private image:Lorg/appcelerator/titanium/TiBlob;

.field private imageFetched:Z

.field private modified:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->image:Lorg/appcelerator/titanium/TiBlob;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/contacts/PersonProxy;->hasImage:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->fullName:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->modified:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 66
    invoke-direct {p0}, Lti/modules/titanium/contacts/PersonProxy;-><init>()V

    .line 67
    return-void
.end method

.method private contactMethodMapToDict(Ljava/util/Map;)Lorg/appcelerator/kroll/KrollDict;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/appcelerator/kroll/KrollDict;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 132
    .local v2, "result":Lorg/appcelerator/kroll/KrollDict;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 134
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method private isPhotoFetchable()Z
    .locals 4

    .prologue
    .line 71
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 72
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lti/modules/titanium/contacts/PersonProxy;->hasImage:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finishModification()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->modified:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    return-void
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "Ti.Contacts.Person"

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 95
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImage()Lorg/appcelerator/titanium/TiBlob;
    .locals 4

    .prologue
    .line 107
    iget-object v3, p0, Lti/modules/titanium/contacts/PersonProxy;->image:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_0

    .line 108
    iget-object v3, p0, Lti/modules/titanium/contacts/PersonProxy;->image:Lorg/appcelerator/titanium/TiBlob;

    .line 117
    :goto_0
    return-object v3

    .line 109
    :cond_0
    iget-boolean v3, p0, Lti/modules/titanium/contacts/PersonProxy;->imageFetched:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lti/modules/titanium/contacts/PersonProxy;->isPhotoFetchable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    const-string v3, "id"

    invoke-virtual {p0, v3}, Lti/modules/titanium/contacts/PersonProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 111
    .local v0, "id":J
    invoke-static {v0, v1}, Lti/modules/titanium/contacts/CommonContactsApi;->getContactImage(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 112
    .local v2, "photo":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 113
    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromImage(Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/contacts/PersonProxy;->image:Lorg/appcelerator/titanium/TiBlob;

    .line 115
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lti/modules/titanium/contacts/PersonProxy;->imageFetched:Z

    .line 117
    .end local v0    # "id":J
    .end local v2    # "photo":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/contacts/PersonProxy;->image:Lorg/appcelerator/titanium/TiBlob;

    goto :goto_0
.end method

.method public isFieldModified(Ljava/lang/String;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->modified:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->modified:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 190
    if-nez p1, :cond_0

    .line 191
    const-string v0, "Person"

    const-string v1, "Property is null. Unable to process change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return-void

    .line 195
    :cond_0
    const-string v0, "firstName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "middleName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lastName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->modified:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->onPropertyChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    :cond_3
    const-string v0, "birthday"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "organization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "note"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "instantMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "relatedNames"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "kind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "suffix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "firstPhonetic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "middlePhonetic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lastPhonetic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "jobTitle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "department"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    :cond_4
    iget-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->modified:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method protected setAddressFromMap(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 175
    .local v0, "address":Lorg/appcelerator/kroll/KrollDict;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 176
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 177
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Lorg/appcelerator/kroll/KrollDict;

    .line 178
    .local v1, "dictValues":[Lorg/appcelerator/kroll/KrollDict;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 179
    new-instance v6, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v6}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    aput-object v6, v1, v2

    .line 180
    aget-object v6, v1, v2

    const-string v7, "Street"

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    :cond_0
    invoke-virtual {v0, v4, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    .end local v1    # "dictValues":[Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v6, "address"

    invoke-virtual {p0, v6, v0}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method protected setDateFromMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "date"

    invoke-direct {p0, p1}, Lti/modules/titanium/contacts/PersonProxy;->contactMethodMapToDict(Ljava/util/Map;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method protected setEmailFromMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "email"

    invoke-direct {p0, p1}, Lti/modules/titanium/contacts/PersonProxy;->contactMethodMapToDict(Ljava/util/Map;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lti/modules/titanium/contacts/PersonProxy;->fullName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method protected setIMFromMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "instantMessage"

    invoke-direct {p0, p1}, Lti/modules/titanium/contacts/PersonProxy;->contactMethodMapToDict(Ljava/util/Map;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public setImage(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 3
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    const/4 v2, 0x1

    .line 123
    iput-object p1, p0, Lti/modules/titanium/contacts/PersonProxy;->image:Lorg/appcelerator/titanium/TiBlob;

    .line 124
    iput-boolean v2, p0, Lti/modules/titanium/contacts/PersonProxy;->hasImage:Z

    .line 125
    iput-boolean v2, p0, Lti/modules/titanium/contacts/PersonProxy;->imageFetched:Z

    .line 126
    iget-object v0, p0, Lti/modules/titanium/contacts/PersonProxy;->modified:Ljava/util/HashMap;

    const-string v1, "image"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method protected setPhoneFromMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "phone"

    invoke-direct {p0, p1}, Lti/modules/titanium/contacts/PersonProxy;->contactMethodMapToDict(Ljava/util/Map;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method protected setRelatedNameFromMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "relatedNames"

    invoke-direct {p0, p1}, Lti/modules/titanium/contacts/PersonProxy;->contactMethodMapToDict(Ljava/util/Map;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method protected setWebSiteFromMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v0, "url"

    invoke-direct {p0, p1}, Lti/modules/titanium/contacts/PersonProxy;->contactMethodMapToDict(Ljava/util/Map;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/contacts/PersonProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    return-void
.end method
