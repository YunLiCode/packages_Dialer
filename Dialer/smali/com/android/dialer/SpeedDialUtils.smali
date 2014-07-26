.class public Lcom/android/dialer/SpeedDialUtils;
.super Ljava/lang/Object;
.source "SpeedDialUtils.java"


# static fields
.field private static final numKeys:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "num2_key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "num3_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "num4_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "num5_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num6_key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "num7_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "num8_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "num9_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/SpeedDialUtils;->numKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/dialer/SpeedDialUtils;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/android/dialer/SpeedDialUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SPEED_DIAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/SpeedDialUtils;->mPref:Landroid/content/SharedPreferences;

    .line 70
    return-void
.end method


# virtual methods
.method public getContactDataId(I)J
    .locals 4
    .param p1, "numId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/dialer/SpeedDialUtils;->mPref:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/dialer/SpeedDialUtils;->numKeys:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpeedDialInfo(JI)Ljava/lang/String;
    .locals 9
    .param p1, "contactDataId"    # J
    .param p3, "infoType"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 103
    .local v8, "speedDialInfo":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    .line 136
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, "lookupUri":Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/SpeedDialUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    if-nez p3, :cond_3

    .line 113
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 132
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 133
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 136
    goto :goto_0

    .line 117
    :cond_3
    :try_start_1
    const-string v0, "raw_contact_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 118
    .local v7, "rawContactId":I
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v7

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 119
    const-string v3, "deleted=0"

    .line 120
    .local v3, "querySelection":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/SpeedDialUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 132
    .end local v3    # "querySelection":Ljava/lang/String;
    .end local v7    # "rawContactId":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_5
    throw v0

    .line 129
    :catch_0
    move-exception v0

    .line 132
    if-eqz v6, :cond_2

    goto :goto_2
.end method

.method public getSpeedDialNumList(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "self"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "numList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/dialer/SpeedDialUtils;->numKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 85
    invoke-virtual {p0, v2}, Lcom/android/dialer/SpeedDialUtils;->getContactDataId(I)J

    move-result-wide v0

    .line 86
    .local v0, "dataId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    add-int/lit8 v5, p1, -0x1

    if-eq v2, v5, :cond_0

    .line 87
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/dialer/SpeedDialUtils;->getSpeedDialInfo(JI)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "number":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v4    # "number":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "dataId":J
    :cond_1
    return-object v3
.end method

.method public storeContactDataId(IJ)V
    .locals 2
    .param p1, "numId"    # I
    .param p2, "keyValue"    # J

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/dialer/SpeedDialUtils;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/dialer/SpeedDialUtils;->numKeys:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method
