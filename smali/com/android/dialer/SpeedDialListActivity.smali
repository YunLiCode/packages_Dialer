.class public Lcom/android/dialer/SpeedDialListActivity;
.super Landroid/app/Activity;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/SpeedDialListActivity$QueryHandler;
    }
.end annotation


# instance fields
.field private longClickPos:I

.field private longClicked:Z

.field private mCurPosition:I

.field private mLookupUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

.field private mSpeedDataIds:[Ljava/lang/Long;

.field private mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

.field private mSpeedNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedPhotoIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTitles:[Ljava/lang/String;

.field private mViewIds:[I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x9

    const-wide/16 v3, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-boolean v6, p0, Lcom/android/dialer/SpeedDialListActivity;->longClicked:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    .line 39
    new-array v0, v5, [Ljava/lang/Long;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedNames:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mLookupUris:Ljava/util/HashMap;

    .line 50
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mViewIds:[I

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v6

    const-string v1, "2"

    aput-object v1, v0, v7

    const-string v1, "3"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mTitles:[Ljava/lang/String;

    .line 56
    iput v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mCurPosition:I

    .line 249
    return-void

    .line 50
    :array_0
    .array-data 4
        0x7f0a00a5
        0x7f0a00a6
        0x7f0a00a7
        0x7f0a00a8
        0x7f0a00a9
        0x7f0a00aa
        0x7f0a00ab
        0x7f0a00ac
        0x7f0a00ad
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/dialer/SpeedDialListActivity;ILandroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/SpeedDialListActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/SpeedDialListActivity;->updateViews(ILandroid/database/Cursor;)V

    return-void
.end method

.method private checkDuplicatedNumber(ILjava/lang/String;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "newNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 293
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    invoke-virtual {v1, p1}, Lcom/android/dialer/SpeedDialUtils;->getSpeedDialNumList(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    const v1, 0x7f08017e

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    const/4 v0, 0x1

    .line 297
    :cond_0
    return v0
.end method

.method private initDataIds()V
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lcom/android/dialer/SpeedDialUtils;->getContactDataId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/dialer/SpeedDialListActivity;->updateSettingButton(I)V

    .line 247
    return-void
.end method

.method private initTitles()V
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/dialer/SpeedDialListActivity;->mViewIds:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/dialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/SettingButton;

    .line 235
    .local v1, "view":Lcom/android/dialer/SettingButton;
    iget-object v2, p0, Lcom/android/dialer/SpeedDialListActivity;->mTitles:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/dialer/SettingButton;->setTitle(Ljava/lang/String;)V

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/SettingButton;->setTag(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v1, p0}, Lcom/android/dialer/SettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {v1, p0}, Lcom/android/dialer/SettingButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "view":Lcom/android/dialer/SettingButton;
    :cond_0
    return-void
.end method

.method private setLongClickStatus(ZI)V
    .locals 0
    .param p1, "clicked"    # Z
    .param p2, "pos"    # I

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/android/dialer/SpeedDialListActivity;->longClicked:Z

    .line 217
    iput p2, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    .line 218
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->invalidateOptionsMenu()V

    .line 219
    return-void
.end method

.method private startQuery(ILandroid/net/Uri;)V
    .locals 20
    .param p1, "token"    # I
    .param p2, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/SpeedDialListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;-><init>(Lcom/android/dialer/SpeedDialListActivity;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/dialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

    .line 87
    :cond_0
    if-nez p1, :cond_5

    .line 88
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 89
    .local v4, "uri":Landroid/net/Uri;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v15, v1, :cond_2

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 92
    .local v16, "id":J
    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    if-lez v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 96
    .end local v16    # "id":J
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 97
    .local v18, "ids":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v18    # "ids":Ljava/lang/String;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dialer/SpeedDialListActivity;->mCurPosition:I

    .line 114
    return-void

    .line 103
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v15    # "i":I
    .restart local v18    # "ids":Ljava/lang/String;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const-string v1, "SpeedDialListActivity"

    const-string v2, "all number unset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v15    # "i":I
    .end local v18    # "ids":Ljava/lang/String;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_3

    .line 106
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    const-string v1, "raw_contact_id IN "

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "(SELECT _id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, " FROM raw_contacts"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, " WHERE deleted = 0)"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/dialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dialer/SpeedDialListActivity;->mCurPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v8, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v7 .. v14}, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateSettingButton(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 267
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mViewIds:[I

    aget v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/dialer/SpeedDialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/SettingButton;

    .line 268
    .local v5, "view":Lcom/android/dialer/SettingButton;
    if-nez p1, :cond_0

    .line 269
    const v6, 0x7f080162

    invoke-virtual {p0, v6}, Lcom/android/dialer/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02004b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/dialer/SettingButton;->setContactInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 290
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 273
    .local v0, "dataId":J
    cmp-long v6, v0, v8

    if-lez v6, :cond_3

    .line 274
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedNames:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 276
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, p1

    .line 277
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/dialer/SpeedDialUtils;->storeContactDataId(IJ)V

    .line 278
    invoke-virtual {v5}, Lcom/android/dialer/SettingButton;->clearContactInfo()V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 281
    .local v3, "photoId":J
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 282
    const-wide/16 v3, 0x0

    .line 284
    :cond_2
    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mLookupUris:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v5, v2, v3, v4, v6}, Lcom/android/dialer/SettingButton;->setContactInfo(Ljava/lang/String;JLandroid/net/Uri;)V

    goto :goto_0

    .line 287
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "photoId":J
    :cond_3
    invoke-virtual {v5}, Lcom/android/dialer/SettingButton;->clearContactInfo()V

    goto :goto_0
.end method

.method private updateViews(ILandroid/database/Cursor;)V
    .locals 18
    .param p1, "position"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 303
    if-nez p2, :cond_1

    .line 304
    :try_start_0
    const-string v14, "SpeedDialListActivity"

    const-string v15, "Error in query"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    if-eqz p2, :cond_0

    .line 364
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 366
    :cond_0
    return-void

    .line 306
    :cond_1
    :try_start_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-gtz v14, :cond_2

    .line 307
    const-string v14, "SpeedDialListActivity"

    const-string v15, "No valid contact found."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    const/16 v14, 0x9

    if-ge v4, v14, :cond_a

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    add-int/lit8 v15, v4, -0x1

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/android/dialer/SpeedDialUtils;->storeContactDataId(IJ)V

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/dialer/SpeedDialListActivity;->updateSettingButton(I)V

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 316
    .end local v4    # "i":I
    :cond_2
    if-nez p1, :cond_6

    .line 317
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 318
    const-string v14, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 319
    .local v5, "id":J
    const-string v14, "display_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "name":Ljava/lang/String;
    const-string v14, "photo_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 321
    .local v12, "photoId":J
    const-string v14, "contact_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 322
    .local v2, "contactId":J
    const-string v14, "lookup"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "lookupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedNames:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_4

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mLookupUris:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 363
    .end local v2    # "contactId":J
    .end local v5    # "id":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v12    # "photoId":J
    :catchall_0
    move-exception v14

    if-eqz p2, :cond_3

    .line 364
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_3
    throw v14

    .line 327
    .restart local v2    # "contactId":J
    .restart local v5    # "id":J
    .restart local v7    # "lookupKey":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v12    # "photoId":J
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 331
    .end local v2    # "contactId":J
    .end local v5    # "id":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v12    # "photoId":J
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_4
    const/16 v14, 0x9

    if-ge v4, v14, :cond_8

    .line 332
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/dialer/SpeedDialListActivity;->updateSettingButton(I)V

    .line 331
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 335
    .end local v4    # "i":I
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 336
    const-string v14, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 337
    .restart local v5    # "id":J
    const-string v14, "display_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 338
    .restart local v8    # "name":Ljava/lang/String;
    const-string v14, "photo_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 339
    .restart local v12    # "photoId":J
    const-string v14, "data1"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 340
    .local v9, "number":Ljava/lang/String;
    const-string v14, "contact_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 341
    .restart local v2    # "contactId":J
    const-string v14, "lookup"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 342
    .restart local v7    # "lookupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    aget-object v14, v14, p1

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 343
    .local v10, "origId":J
    cmp-long v14, v10, v5

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/dialer/SpeedDialListActivity;->checkDuplicatedNumber(ILjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, p1

    .line 345
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_7

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedNames:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mLookupUris:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedNames:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-lez v14, :cond_9

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mLookupUris:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v2, v3, v7}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    add-int/lit8 v15, p1, -0x1

    invoke-virtual {v14, v15, v5, v6}, Lcom/android/dialer/SpeedDialUtils;->storeContactDataId(IJ)V

    .line 358
    invoke-direct/range {p0 .. p1}, Lcom/android/dialer/SpeedDialListActivity;->updateSettingButton(I)V

    .line 363
    .end local v2    # "contactId":J
    .end local v5    # "id":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "origId":J
    .end local v12    # "photoId":J
    :cond_8
    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 354
    .restart local v2    # "contactId":J
    .restart local v5    # "id":J
    .restart local v7    # "lookupKey":Ljava/lang/String;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    .restart local v10    # "origId":J
    .restart local v12    # "photoId":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedPhotoIds:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 363
    .end local v2    # "contactId":J
    .end local v5    # "id":J
    .end local v7    # "lookupKey":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "origId":J
    .end local v12    # "photoId":J
    .restart local v4    # "i":I
    :cond_a
    if-eqz p2, :cond_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 118
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 119
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "SpeedDialListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/SpeedDialListActivity;->startQuery(ILandroid/net/Uri;)V

    .line 127
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    return-void

    .line 124
    :cond_1
    const-string v1, "SpeedDialListActivity"

    const-string v2, "No data returned"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/SpeedDialListActivity;->setLongClickStatus(ZI)V

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/SpeedDialListActivity;->mCurPosition:I

    .line 193
    iget v2, p0, Lcom/android/dialer/SpeedDialListActivity;->mCurPosition:I

    if-lez v2, :cond_0

    .line 194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v2, "withoutSim"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/dialer/SpeedDialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    :goto_0
    return-void

    .line 199
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.SelectSubscription"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v2, "PACKAGE"

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "TARGET_CLASS"

    const-string v3, "com.android.phone.MSimCallFeaturesSubSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SpeedDialListActivity"

    const-string v3, "can not find activity deal with voice mail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcom/android/dialer/SpeedDialListActivity;->setContentView(I)V

    .line 62
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/dialer/SpeedDialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 224
    .local v0, "pos":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 228
    :goto_0
    return v1

    .line 227
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/dialer/SpeedDialListActivity;->setLongClickStatus(ZI)V

    move v1, v2

    .line 228
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v9, -0x1

    const/4 v4, 0x0

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 154
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    move v3, v4

    .line 186
    :goto_0
    return v3

    .line 156
    :pswitch_0
    iget-object v5, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    iget v6, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 157
    iget-object v5, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    iget v6, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6, v11, v12}, Lcom/android/dialer/SpeedDialUtils;->storeContactDataId(IJ)V

    .line 158
    iget v5, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    invoke-direct {p0, v5}, Lcom/android/dialer/SpeedDialListActivity;->updateSettingButton(I)V

    .line 159
    invoke-direct {p0, v4, v9}, Lcom/android/dialer/SpeedDialListActivity;->setLongClickStatus(ZI)V

    goto :goto_0

    .line 163
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 165
    .local v2, "uri":Landroid/net/Uri;
    iget v5, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    if-nez v5, :cond_0

    .line 166
    const-string v5, "voicemail"

    const-string v6, ""

    invoke-static {v5, v6, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 171
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/dialer/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-direct {p0, v4, v9}, Lcom/android/dialer/SpeedDialListActivity;->setLongClickStatus(ZI)V

    goto :goto_0

    .line 168
    :cond_0
    const-string v5, "tel"

    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    iget-object v7, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    iget v8, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/dialer/SpeedDialUtils;->getSpeedDialInfo(JI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 178
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "sms"

    iget-object v6, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    iget-object v7, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    iget v8, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v4}, Lcom/android/dialer/SpeedDialUtils;->getSpeedDialInfo(JI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/dialer/SpeedDialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    invoke-direct {p0, v4, v9}, Lcom/android/dialer/SpeedDialListActivity;->setLongClickStatus(ZI)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x7f0a00c8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mQueryHandler:Lcom/android/dialer/SpeedDialListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;->cancelOperation(I)V

    .line 69
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/SpeedDialListActivity;->setLongClickStatus(ZI)V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 71
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-boolean v1, p0, Lcom/android/dialer/SpeedDialListActivity;->longClicked:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 139
    iget v1, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    if-nez v1, :cond_2

    .line 140
    const v1, 0x7f0a00c8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    const v1, 0x7f0a00ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    :cond_0
    const/4 v0, 0x1

    .line 147
    :cond_1
    :goto_0
    return v0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDataIds:[Ljava/lang/Long;

    iget v2, p0, Lcom/android/dialer/SpeedDialListActivity;->longClickPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/android/dialer/SpeedDialListActivity;->initTitles()V

    .line 78
    new-instance v0, Lcom/android/dialer/SpeedDialUtils;

    invoke-direct {v0, p0}, Lcom/android/dialer/SpeedDialUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity;->mSpeedDialUtils:Lcom/android/dialer/SpeedDialUtils;

    .line 79
    invoke-direct {p0}, Lcom/android/dialer/SpeedDialListActivity;->initDataIds()V

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/SpeedDialListActivity;->startQuery(ILandroid/net/Uri;)V

    .line 81
    return-void
.end method
