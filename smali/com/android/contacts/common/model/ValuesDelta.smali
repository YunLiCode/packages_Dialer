.class public Lcom/android/contacts/common/model/ValuesDelta;
.super Ljava/lang/Object;
.source "ValuesDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected static sNextInsertId:I


# instance fields
.field protected mAfter:Landroid/content/ContentValues;

.field protected mBefore:Landroid/content/ContentValues;

.field private mFromTemplate:Z

.field protected mIdColumn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/model/ValuesDelta;->sNextInsertId:I

    .line 465
    new-instance v0, Lcom/android/contacts/common/model/ValuesDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/ValuesDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/ValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "_id"

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private ensureUpdate()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public beforeExists()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 365
    instance-of v2, p1, Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 367
    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 368
    .local v0, "other":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/ValuesDelta;->subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 370
    .end local v0    # "other":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return v1
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 147
    .end local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object p2

    .line 144
    .restart local p2    # "defaultValue":Ljava/lang/Integer;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0
.end method

.method public getAsLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBefore()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isInsert()Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->beforeExists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 239
    :goto_0
    return v4

    .line 228
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, "newValue":Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "oldValue":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 232
    if-eqz v2, :cond_2

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_4
    move v4, v5

    .line 239
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 305
    .local v2, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 307
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 317
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/contacts/common/model/ValuesDelta;->ensureUpdate()V

    .line 281
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 460
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 461
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public subsetEquals(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "ourValue":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "theirValue":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 410
    if-eqz v3, :cond_0

    .line 417
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ourValue":Ljava/lang/String;
    .end local v3    # "theirValue":Ljava/lang/String;
    :goto_0
    return v4

    .line 413
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "ourValue":Ljava/lang/String;
    .restart local v3    # "theirValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 417
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "ourValue":Ljava/lang/String;
    .end local v3    # "theirValue":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 385
    const-string v2, "{ "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v2, "IdColumn="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-object v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v2, ", FromTemplate="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-boolean v2, p0, Lcom/android/contacts/common/model/ValuesDelta;->mFromTemplate:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 390
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 397
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "}"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 454
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 455
    iget-object v0, p0, Lcom/android/contacts/common/model/ValuesDelta;->mIdColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    return-void
.end method
