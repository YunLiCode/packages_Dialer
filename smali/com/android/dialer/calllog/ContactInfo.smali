.class public final Lcom/android/dialer/calllog/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static EMPTY:Lcom/android/dialer/calllog/ContactInfo;


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public countryIso:Ljava/lang/String;

.field public date:J

.field public duration:J

.field public durationType:I

.field public formattedNumber:Ljava/lang/String;

.field public geocode:Ljava/lang/String;

.field public isRead:I

.field public label:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;

.field public subscription:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    sput-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 8
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 87
    if-nez p0, :cond_1

    .line 88
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "ContactInfo.fromCursor(c) - c is null"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 118
    :cond_0
    :goto_0
    return-object v4

    .line 91
    :cond_1
    new-instance v4, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v4}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    .line 92
    .local v4, "newContactInfo":Lcom/android/dialer/calllog/ContactInfo;
    if-eqz v4, :cond_0

    .line 94
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 95
    const/4 v6, 0x2

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/dialer/calllog/ContactInfo;->date:J

    .line 96
    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/dialer/calllog/ContactInfo;->duration:J

    .line 97
    const/16 v6, 0x9

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 98
    const/4 v6, 0x5

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/dialer/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    .line 99
    const/16 v6, 0x11

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/android/dialer/calllog/ContactInfo;->subscription:I

    .line 100
    const/16 v6, 0x8

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 101
    const/16 v6, 0xa

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 102
    const/16 v6, 0xe

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    .line 103
    const/16 v6, 0xf

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 104
    const/4 v6, 0x7

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/dialer/calllog/ContactInfo;->geocode:Ljava/lang/String;

    .line 105
    const/16 v6, 0xc

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 106
    .local v0, "contactId":J
    const/16 v6, 0xb

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "lookUp":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_2

    :goto_1
    iput-object v5, v4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 109
    const/16 v5, 0x12

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/dialer/calllog/ContactInfo;->durationType:I

    .line 110
    const/16 v5, 0x10

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/dialer/calllog/ContactInfo;->isRead:I

    .line 111
    const/16 v5, 0x13

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/dialer/calllog/ContactInfo;->accountType:Ljava/lang/String;

    .line 112
    const/16 v5, 0x14

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/dialer/calllog/ContactInfo;->accountName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 113
    .end local v0    # "contactId":J
    .end local v3    # "lookUp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto/16 :goto_0

    .line 107
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "contactId":J
    .restart local v3    # "lookUp":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    .line 74
    .local v0, "other":Lcom/android/dialer/calllog/ContactInfo;
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 75
    :cond_4
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 76
    :cond_5
    iget v3, p0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v4, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 77
    :cond_6
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 78
    :cond_7
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 79
    :cond_8
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 80
    :cond_9
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 81
    :cond_a
    iget-wide v3, p0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v5, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 82
    :cond_b
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 61
    const/16 v0, 0x1f

    .line 62
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 63
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 64
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 65
    return v1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
