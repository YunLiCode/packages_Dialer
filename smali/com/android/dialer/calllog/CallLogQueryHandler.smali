.class Lcom/android/dialer/calllog/CallLogQueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;,
        Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final NEW_SECTION_TIME_WINDOW:J


# instance fields
.field private mCallsRequestId:I

.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewCallsCursor:Landroid/database/Cursor;

.field private mOldCallsCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->NEW_SECTION_TIME_WINDOW:J

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 143
    return-void
.end method

.method private cancelFetch()V
    .locals 1

    .prologue
    .line 235
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelOperation(I)V

    .line 236
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelOperation(I)V

    .line 237
    return-void
.end method

.method private createHeaderCursorFor(I)Landroid/database/Cursor;
    .locals 8
    .param p1, "section"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 147
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/dialer/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 151
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    aput-object v4, v1, v2

    const/16 v2, 0x15

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 155
    return-object v0
.end method

.method private createMergedCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 339
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 340
    .local v0, "hasNewCalls":Z
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    .local v1, "hasOldCalls":Z
    :goto_1
    if-nez v0, :cond_2

    .line 344
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 345
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 361
    :goto_2
    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    .line 355
    return-object v2

    .end local v0    # "hasNewCalls":Z
    .end local v1    # "hasOldCalls":Z
    :cond_0
    move v0, v2

    .line 339
    goto :goto_0

    .restart local v0    # "hasNewCalls":Z
    :cond_1
    move v1, v2

    .line 340
    goto :goto_1

    .line 348
    .restart local v1    # "hasOldCalls":Z
    :cond_2
    if-nez v1, :cond_3

    .line 350
    :try_start_1
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 351
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->createNewCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    goto :goto_2

    .line 355
    :cond_3
    :try_start_2
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->createNewCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->createOldCallsHeaderCursor()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    goto :goto_2

    .end local v0    # "hasNewCalls":Z
    .end local v1    # "hasOldCalls":Z
    :catchall_0
    move-exception v2

    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 361
    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    .line 360
    throw v2
.end method

.method private createNewCallsHeaderCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->createHeaderCursorFor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private createOldCallsHeaderCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->createHeaderCursorFor(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private fetchCalls(IIZII)V
    .locals 12
    .param p1, "token"    # I
    .param p2, "requestId"    # I
    .param p3, "isNew"    # Z
    .param p4, "callType"    # I
    .param p5, "sub"    # I

    .prologue
    .line 199
    const-string v1, "%s IS NOT NULL AND %s = 0 AND %s > ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "is_read"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "is_read"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "date"

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v10, Lcom/android/dialer/calllog/CallLogQueryHandler;->NEW_SECTION_TIME_WINDOW:J

    sub-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    .line 203
    .local v9, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 205
    const-string v1, "NOT (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 207
    :cond_0
    if-lez p4, :cond_1

    .line 209
    const-string v1, "(%s) AND (%s = ? OR %s = ?)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string v5, "type"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "type"

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_3

    .line 212
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    :goto_0
    const/4 v1, -0x1

    move/from16 v0, p5

    if-le v0, v1, :cond_2

    .line 221
    const-string v1, "(%s) AND (%s = ?)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string v5, "subscription"

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_2
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 228
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const-string v8, "date DESC"

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 213
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    .line 214
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_4
    const/4 v1, 0x3

    move/from16 v0, p4

    if-ne v0, v1, :cond_1

    .line 216
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized newCallsRequest()I
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 292
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    .line 295
    iget v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallsRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallsRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAdapterData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "combinedCursor"    # Landroid/database/Cursor;

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 370
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 371
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)V

    .line 373
    :cond_0
    return-void
.end method

.method private updateVoicemailStatus(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    .line 377
    .local v0, "listener":Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onVoicemailStatusFetched(Landroid/database/Cursor;)V

    .line 380
    :cond_0
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 137
    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/dialer/calllog/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public fetchCalls(I)V
    .locals 1
    .param p1, "callType"    # I

    .prologue
    .line 174
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(II)V

    .line 175
    return-void
.end method

.method public fetchCalls(II)V
    .locals 6
    .param p1, "callType"    # I
    .param p2, "sub"    # I

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelFetch()V

    .line 184
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->newCallsRequest()I

    move-result v2

    .line 185
    .local v2, "requestId":I
    const/16 v1, 0x35

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IIZII)V

    .line 186
    const/16 v1, 0x36

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IIZII)V

    .line 187
    return-void
.end method

.method public fetchVoicemailStatus()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 190
    const/16 v1, 0x3a

    sget-object v3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "is_read"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 278
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "is_read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/16 v1, 0x39

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 247
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/16 v1, 0x37

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public markNewVoicemailsAsOld()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v7, "where":Ljava/lang/StringBuilder;
    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v0, " = 1 AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, " = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 263
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/16 v1, 0x38

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method protected onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 300
    const/16 v1, 0x35

    if-ne p1, v1, :cond_2

    .line 301
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    .local v0, "requestId":I
    iget v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallsRequestId:I

    if-eq v0, v1, :cond_1

    .line 333
    .end local v0    # "requestId":I
    :cond_0
    :goto_0
    return-void

    .line 308
    .restart local v0    # "requestId":I
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 309
    new-instance v1, Lcom/android/dialer/calllog/ExtendedCursor;

    const-string v2, "section"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p3, v2, v3}, Lcom/android/dialer/calllog/ExtendedCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mNewCallsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->createMergedCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 311
    .end local v0    # "requestId":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    const/16 v1, 0x36

    if-ne p1, v1, :cond_3

    .line 312
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 313
    .restart local v0    # "requestId":I
    iget v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mCallsRequestId:I

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 320
    new-instance v1, Lcom/android/dialer/calllog/ExtendedCursor;

    const-string v2, "section"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p3, v2, v3}, Lcom/android/dialer/calllog/ExtendedCursor;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mOldCallsCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 322
    .end local v0    # "requestId":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_4

    .line 323
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateVoicemailStatus(Landroid/database/Cursor;)V

    goto :goto_0

    .line 326
    :cond_4
    const-string v1, "CallLogQueryHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown query completed: ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
