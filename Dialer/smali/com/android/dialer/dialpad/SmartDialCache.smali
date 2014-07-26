.class public Lcom/android/dialer/dialpad/SmartDialCache;
.super Ljava/lang/Object;
.source "SmartDialCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/SmartDialCache$ContactAffinityComparator;,
        Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;,
        Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;
    }
.end annotation


# static fields
.field private static final PREF_USER_SIM_COUNTRY_CODE_DEFAULT:Ljava/lang/String;

.field private static instance:Lcom/android/dialer/dialpad/SmartDialCache;

.field private static mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mLock:Ljava/lang/Object;

.field public static sNanpCountries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUserInNanpRegion:Z

.field private static sUserSimCountryCode:Ljava/lang/String;


# instance fields
.field private mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

.field private final mContext:Landroid/content/Context;

.field private final mNameDisplayOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    sput-object v1, Lcom/android/dialer/dialpad/SmartDialCache;->sNanpCountries:Ljava/util/Set;

    .line 205
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->mLock:Ljava/lang/Object;

    .line 210
    sput-object v1, Lcom/android/dialer/dialpad/SmartDialCache;->PREF_USER_SIM_COUNTRY_CODE_DEFAULT:Ljava/lang/String;

    .line 212
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->PREF_USER_SIM_COUNTRY_CODE_DEFAULT:Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->sUserSimCountryCode:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/dialer/dialpad/SmartDialCache;->sUserInNanpRegion:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameDisplayOrder"    # I

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p2, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mNameDisplayOrder:I

    .line 223
    const-string v2, "Context must not be null"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContext:Landroid/content/Context;

    .line 225
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v2, Lcom/android/dialer/dialpad/SmartDialCache;->mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 227
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 229
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/dialer/dialpad/SmartDialCache;->sUserSimCountryCode:Ljava/lang/String;

    .line 233
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 235
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialCache;->sUserSimCountryCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 237
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "DialtactsActivity_user_sim_country_code"

    sget-object v4, Lcom/android/dialer/dialpad/SmartDialCache;->sUserSimCountryCode:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    :goto_0
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialCache;->sUserSimCountryCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/dialpad/SmartDialCache;->isCountryNanp(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/dialer/dialpad/SmartDialCache;->sUserInNanpRegion:Z

    .line 247
    return-void

    .line 241
    :cond_1
    const-string v2, "DialtactsActivity_user_sim_country_code"

    sget-object v3, Lcom/android/dialer/dialpad/SmartDialCache;->PREF_USER_SIM_COUNTRY_CODE_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/dialer/dialpad/SmartDialCache;->sUserSimCountryCode:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/dialer/dialpad/SmartDialCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/SmartDialCache;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/dialpad/SmartDialCache;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/SmartDialCache;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCache;->cacheContacts(Landroid/content/Context;)V

    return-void
.end method

.method private cacheContacts(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialCache;->mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 273
    sget-object v18, Lcom/android/dialer/dialpad/SmartDialCache;->mLock:Ljava/lang/Object;

    monitor-enter v18

    .line 275
    :try_start_0
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v19, "Starting caching thread"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "SmartDial Cache"

    invoke-static {v3}, Lcom/android/contacts/common/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v17

    .line 278
    .local v17, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    .line 279
    .local v16, "millis":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;->URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/dialpad/SmartDialCache;->mNameDisplayOrder:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    sget-object v5, Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    :goto_0
    const/4 v6, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v7, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v16, v7, v19

    const/16 v19, 0x1

    aput-object v16, v7, v19

    const-string v8, "starred DESC, is_super_primary DESC, (CASE WHEN (? - last_time_used) < 259200000 THEN 0  WHEN (? - last_time_used) < 2592000000 THEN 1  ELSE 2 END), times_used DESC, in_visible_group DESC, display_name, contact_id, is_primary DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 285
    .local v14, "c":Landroid/database/Cursor;
    const-string v3, "SmartDial query complete"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 287
    if-nez v14, :cond_1

    .line 288
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v19, "SmartDial query received null for cursor"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v3, "SmartDial query received null for cursor"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 292
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialCache;->mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 293
    monitor-exit v18

    .line 324
    :goto_1
    return-void

    .line 279
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_0
    sget-object v5, Lcom/android/dialer/dialpad/SmartDialCache$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    goto :goto_0

    .line 295
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_1
    new-instance v15, Lcom/android/dialer/dialpad/SmartDialTrie;

    sget-object v3, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    sget-boolean v19, Lcom/android/dialer/dialpad/SmartDialCache;->sUserInNanpRegion:Z

    move/from16 v0, v19

    invoke-direct {v15, v3, v0}, Lcom/android/dialer/dialpad/SmartDialTrie;-><init>([CZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    .local v15, "cache":Lcom/android/dialer/dialpad/SmartDialTrie;
    const/4 v3, -0x1

    :try_start_1
    invoke-interface {v14, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 299
    const/4 v13, 0x0

    .line 300
    .local v13, "affinityCount":I
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 301
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 302
    .local v4, "id":J
    const/4 v3, 0x5

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "lookupKey":Ljava/lang/String;
    const/4 v3, 0x6

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "displayName":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 306
    .local v11, "phoneType":I
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, "phoneLabel":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 308
    .local v7, "photoId":J
    new-instance v3, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;

    invoke-direct/range {v3 .. v13}, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v15, v3}, Lcom/android/dialer/dialpad/SmartDialTrie;->put(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    add-int/lit8 v13, v13, 0x1

    .line 311
    goto :goto_2

    .line 313
    .end local v4    # "id":J
    .end local v6    # "lookupKey":Ljava/lang/String;
    .end local v7    # "photoId":J
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v10    # "phoneNumber":Ljava/lang/String;
    .end local v11    # "phoneType":I
    .end local v12    # "phoneLabel":Ljava/lang/String;
    .end local v13    # "affinityCount":I
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 314
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    .line 316
    const-string v19, "SmartDial caching completed"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 313
    throw v3

    .line 319
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v15    # "cache":Lcom/android/dialer/dialpad/SmartDialTrie;
    .end local v16    # "millis":Ljava/lang/String;
    .end local v17    # "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    :catchall_1
    move-exception v3

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 313
    .restart local v13    # "affinityCount":I
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v15    # "cache":Lcom/android/dialer/dialpad/SmartDialTrie;
    .restart local v16    # "millis":Ljava/lang/String;
    .restart local v17    # "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    :cond_2
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 314
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    .line 316
    const-string v3, "SmartDial caching completed"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 319
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 321
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v18, "Caching thread completed"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialCache;->mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/dialer/dialpad/SmartDialCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nameDisplayOrder"    # I

    .prologue
    .line 261
    const-class v1, Lcom/android/dialer/dialpad/SmartDialCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->instance:Lcom/android/dialer/dialpad/SmartDialCache;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/android/dialer/dialpad/SmartDialCache;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/dialpad/SmartDialCache;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->instance:Lcom/android/dialer/dialpad/SmartDialCache;

    .line 264
    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->instance:Lcom/android/dialer/dialpad/SmartDialCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initNanpCountries()Ljava/util/Set;
    .locals 2
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
    .line 434
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 435
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 436
    const-string v1, "CA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v1, "AS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    const-string v1, "AI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v1, "AG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    const-string v1, "BS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    const-string v1, "BB"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 442
    const-string v1, "BM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v1, "VG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    const-string v1, "KY"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 445
    const-string v1, "DM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    const-string v1, "DO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 447
    const-string v1, "GD"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v1, "GU"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v1, "JM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v1, "PR"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v1, "MS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v1, "MP"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    const-string v1, "KN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v1, "LC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v1, "VC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v1, "TT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v1, "TC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 458
    const-string v1, "VI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    return-object v0
.end method

.method static isCountryNanp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->sNanpCountries:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 428
    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialCache;->initNanpCountries()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->sNanpCountries:Ljava/util/Set;

    .line 430
    :cond_1
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->sNanpCountries:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private startCachingThread()V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/dialer/dialpad/SmartDialCache$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/dialpad/SmartDialCache$1;-><init>(Lcom/android/dialer/dialpad/SmartDialCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 399
    return-void
.end method


# virtual methods
.method public cacheIfNeeded(Z)V
    .locals 4
    .param p1, "forceRecache"    # Z

    .prologue
    const/4 v3, 0x2

    .line 378
    const-string v0, "SmartDial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheIfNeeded called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 387
    :cond_2
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialCache;->mCacheStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 388
    invoke-direct {p0}, Lcom/android/dialer/dialpad/SmartDialCache;->startCachingThread()V

    goto :goto_0
.end method

.method public getContacts()Lcom/android/dialer/dialpad/SmartDialTrie;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    .line 363
    :goto_0
    return-object v0

    .line 352
    :cond_0
    sget-object v1, Lcom/android/dialer/dialpad/SmartDialCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    if-nez v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCache;->cacheContacts(Landroid/content/Context;)V

    .line 358
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/dialer/dialpad/SmartDialTrie;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/SmartDialTrie;-><init>()V

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 358
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    goto :goto_1

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialTrie;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isUserInNanpRegion()Z
    .locals 1

    .prologue
    .line 413
    sget-boolean v0, Lcom/android/dialer/dialpad/SmartDialCache;->sUserInNanpRegion:Z

    return v0
.end method
