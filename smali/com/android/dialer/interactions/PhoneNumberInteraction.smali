.class public Lcom/android/dialer/interactions/PhoneNumberInteraction;
.super Ljava/lang/Object;
.source "PhoneNumberInteraction.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/interactions/PhoneNumberInteraction$1;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;,
        Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallOrigin:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mInteractionType:I

.field private mLoader:Landroid/content/CursorLoader;

.field private mUseDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const-class v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    .line 249
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactionType"    # I
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactionType"    # I
    .param p3, "dismissListener"    # Landroid/content/DialogInterface$OnDismissListener;
    .param p4, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    .line 290
    iput p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    .line 291
    iput-object p3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 292
    iput-object p4, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    .line 293
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0, p1, p2, p3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private isSafeToCommitTransactions()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/contacts/common/activity/TransactionSafeActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/contacts/common/activity/TransactionSafeActivity;

    invoke-virtual {v0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->isSafeToCommitTransactions()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDismiss()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 425
    :cond_0
    return-void
.end method

.method private static performAction(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "interactionType"    # I
    .param p3, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 303
    packed-switch p2, :pswitch_data_0

    .line 309
    invoke-static {p1, p3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    return-void

    .line 305
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private performAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-object v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    return-void
.end method

.method public static startInteractionForPhoneCall(Lcom/android/contacts/common/activity/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Lcom/android/contacts/common/activity/TransactionSafeActivity;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callOrigin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 474
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnDismissListener;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;Z)V

    .line 476
    return-void
.end method


# virtual methods
.method getLoader()Landroid/content/CursorLoader;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->isSafeToCommitTransactions()Z

    move-result v3

    if-nez v3, :cond_1

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 414
    :goto_0
    return-void

    .line 371
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    const/4 v2, 0x0

    .line 374
    .local v2, "primaryPhone":Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    iget-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    if-eqz v3, :cond_2

    const-string v3, "is_super_primary"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    const-string v3, "data1"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    :cond_2
    new-instance v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    invoke-direct {v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;-><init>()V

    .line 381
    .local v0, "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->id:J

    .line 382
    const-string v3, "data1"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 383
    const-string v3, "account_type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->accountType:Ljava/lang/String;

    .line 385
    const-string v3, "data_set"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->dataSet:Ljava/lang/String;

    .line 386
    const-string v3, "data2"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    .line 387
    const-string v3, "data3"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    .line 388
    const-string v3, "mimetype"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->mimeType:Ljava/lang/String;

    .line 390
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 393
    .end local v0    # "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    :catchall_0
    move-exception v3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 396
    iget-boolean v3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 397
    invoke-direct {p0, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    goto/16 :goto_0

    .line 402
    :cond_4
    invoke-static {v1}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    .line 404
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 405
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    goto/16 :goto_0

    .line 406
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 407
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    .line 408
    .restart local v0    # "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    invoke-direct {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onDismiss()V

    .line 409
    iget-object v3, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->performAction(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    .end local v0    # "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->showDisambiguationDialog(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method showDisambiguationDialog(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "phoneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mInteractionType:I

    iget-object v2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mCallOrigin:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneDisambiguationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 504
    return-void
.end method

.method startInteraction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;Z)V

    .line 324
    return-void
.end method

.method startInteraction(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "useDefault"    # Z

    .prologue
    const/4 v5, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 339
    :cond_0
    iput-boolean p2, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mUseDefault:Z

    .line 341
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "inputUriAsString":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const-string v0, "data"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 355
    .local v2, "queryUri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/dialer/interactions/PhoneNumberInteraction;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    const-string v4, "mimetype IN (\'vnd.android.cursor.item/phone_v2\', \'vnd.android.cursor.item/sip_address\') AND data1 NOT NULL"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    .line 361
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 363
    return-void

    .line 346
    .end local v2    # "queryUri":Landroid/net/Uri;
    :cond_1
    move-object v2, p1

    .restart local v2    # "queryUri":Landroid/net/Uri;
    goto :goto_0

    .line 348
    .end local v2    # "queryUri":Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    move-object v2, p1

    .restart local v2    # "queryUri":Landroid/net/Uri;
    goto :goto_0

    .line 351
    .end local v2    # "queryUri":Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Uri must be contact Uri or data Uri (input: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
