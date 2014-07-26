.class Lcom/android/dialer/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;,
        Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# instance fields
.field private final mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache",
            "<",
            "Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/android/dialer/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContactInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/dialer/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

.field private mLoading:Z

.field protected final mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p3, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 171
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    .line 190
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 193
    new-instance v2, Lcom/android/dialer/calllog/CallLogAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogAdapter$1;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v2, Lcom/android/dialer/calllog/CallLogAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogAdapter$2;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 227
    new-instance v2, Lcom/android/dialer/calllog/CallLogAdapter$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogAdapter$3;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 245
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    .line 247
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 249
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    .line 250
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 252
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 253
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 255
    .local v0, "callTypeHelper":Lcom/android/dialer/calllog/CallTypeHelper;
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 256
    new-instance v2, Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    .line 257
    new-instance v2, Lcom/android/dialer/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v2, v1, v0, v3}, Lcom/android/dialer/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    .line 259
    new-instance v2, Lcom/android/dialer/calllog/CallLogListItemHelper;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/dialer/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    .line 262
    new-instance v2, Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogGroupBuilder;-><init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    .line 264
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 265
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    .line 269
    :goto_0
    invoke-static {p1}, Lcom/android/dialer/calllog/HotlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/HotlineHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

    .line 270
    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->startRequestProcessing()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureCallSecondaryAction(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 2
    .param p1, "view"    # Lcom/android/dialer/calllog/CallListItemView;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 833
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 834
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallActionDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 836
    return-void
.end method

.method private configurePlaySecondaryAction(Lcom/android/dialer/calllog/CallListItemView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/android/dialer/calllog/CallListItemView;
    .param p2, "isHighlighted"    # Z

    .prologue
    .line 857
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x7f020086

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 860
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080156

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 862
    return-void

    .line 858
    :cond_0
    const v0, 0x7f020088

    goto :goto_0
.end method

.method private getCallActionDescription(Lcom/android/dialer/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 841
    iget-object v1, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    iget-object v0, p1, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 852
    .local v0, "recipient":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f08015d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 844
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0

    .line 848
    .end local v0    # "recipient":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v2, p1, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "recipient":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 616
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 617
    .local v2, "position":I
    new-array v0, p2, [I

    .line 618
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 619
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 620
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 623
    return-object v0
.end method

.method private isLastOfSection(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/16 v4, 0x15

    const/4 v2, 0x1

    .line 524
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v2

    .line 525
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 526
    .local v1, "section":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 528
    .local v0, "nextSection":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 529
    if-ne v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    const/4 v3, 0x0

    .line 377
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v4, p1, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    .line 379
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-nez v1, :cond_0

    .line 396
    :goto_0
    return v3

    .line 386
    :cond_0
    new-instance v2, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .local v2, "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v4, v2}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    .line 388
    .local v0, "existingInfo":Lcom/android/dialer/calllog/ContactInfo;
    sget-object v4, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v0, v4, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/dialer/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    .line 392
    .local v3, "updated":Z
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v4, v2, v1}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V

    goto :goto_0
.end method

.method private setPhoto(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/HotlineHelper$Hotline;)V
    .locals 6
    .param p1, "view"    # Lcom/android/dialer/calllog/CallListItemView;
    .param p2, "info"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p3, "hotline"    # Lcom/android/dialer/calllog/HotlineHelper$Hotline;

    .prologue
    const/4 v5, 0x1

    .line 628
    iget-object v2, p2, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 629
    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 630
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v2

    iget-object v3, p2, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 637
    :goto_0
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v0

    .line 638
    .local v0, "photoView":Landroid/widget/ImageView;
    const v2, 0x7f0a0013

    invoke-virtual {v0, v2, v1}, Landroid/widget/QuickContactBadge;->setTag(ILjava/lang/Object;)V

    .line 639
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-wide v3, p2, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 641
    return-void

    .line 632
    .end local v0    # "photoView":Landroid/widget/ImageView;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p2, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->getUriForNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 633
    .restart local v1    # "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v3

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v4, p2, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    .line 306
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->setPriority(I)V

    .line 307
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 333
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "updatedInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 544
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 545
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 547
    .local v0, "needsUpdate":Z
    if-eqz p4, :cond_8

    .line 548
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x1

    .line 553
    :cond_0
    iget v2, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v3, p4, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_1

    .line 554
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const/4 v0, 0x1

    .line 558
    :cond_1
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 559
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x1

    .line 562
    :cond_2
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 563
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x1

    .line 566
    :cond_3
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 567
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x1

    .line 570
    :cond_4
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 571
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x1

    .line 574
    :cond_5
    iget-wide v2, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v4, p4, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 575
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    const/4 v0, 0x1

    .line 578
    :cond_6
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 579
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x1

    .line 595
    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 606
    :goto_1
    return-void

    .line 584
    :cond_8
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 591
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x1

    goto :goto_0

    .line 597
    :cond_9
    if-nez p2, :cond_a

    .line 598
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 602
    :cond_a
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 662
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 663
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 458
    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 460
    return-void
.end method

.method protected bindCallButtonView(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/PhoneCallDetails;Z)V
    .locals 5
    .param p1, "view"    # Lcom/android/dialer/calllog/CallListItemView;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .param p3, "isHighlighted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 806
    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 807
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/String;

    iget v4, p2, Lcom/android/dialer/PhoneCallDetails;->subscription:I

    invoke-static {v2, v4}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;I)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 815
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v3, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 816
    .local v0, "canCall":Z
    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    aget v2, v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 818
    .local v1, "canPlay":Z
    :cond_0
    if-eqz v1, :cond_2

    .line 820
    invoke-direct {p0, p1, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->configurePlaySecondaryAction(Lcom/android/dialer/calllog/CallListItemView;Z)V

    .line 828
    :goto_1
    return-void

    .line 812
    .end local v0    # "canCall":Z
    .end local v1    # "canPlay":Z
    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 821
    .restart local v0    # "canCall":Z
    .restart local v1    # "canPlay":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 823
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->configureCallSecondaryAction(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/PhoneCallDetails;)V

    goto :goto_1

    .line 826
    :cond_3
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 500
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 501
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "groupSize"    # I
    .param p5, "expanded"    # Z

    .prologue
    .line 519
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 520
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 491
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 33
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 709
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindView(), cursor = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " count = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/dialer/calllog/CallListItemView;

    if-nez v4, :cond_1

    .line 712
    const-string v4, "CallLogAdapter"

    const-string v5, "Error!!! - bindView(): view is not CallListItemView!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v31, p1

    .line 715
    check-cast v31, Lcom/android/dialer/calllog/CallListItemView;

    .line 716
    .local v31, "itemView":Lcom/android/dialer/calllog/CallListItemView;
    const/16 v4, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 719
    .local v32, "section":I
    if-eqz v32, :cond_2

    const/4 v4, 0x2

    move/from16 v0, v32

    if-ne v0, v4, :cond_4

    .line 721
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    if-nez v32, :cond_3

    const v4, 0x7f08011b

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/android/dialer/calllog/CallListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 725
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/dialer/calllog/CallListItemView;->setDividerVisible(Z)V

    .line 726
    invoke-virtual/range {v31 .. v31}, Lcom/android/dialer/calllog/CallListItemView;->hideCallItem()V

    .line 727
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/dialer/calllog/CallListItemView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 721
    :cond_3
    const v4, 0x7f08011c

    goto :goto_1

    .line 730
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 731
    .local v6, "id":J
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v27

    .line 732
    .local v27, "extra":Landroid/os/Bundle;
    if-eqz v27, :cond_5

    .line 733
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 734
    .local v26, "dateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Lcom/android/contacts/common/util/CommonDateUtils;->getDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Lcom/android/dialer/calllog/CallListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 737
    .end local v26    # "dateStr":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getContactInfo(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v25

    .line 738
    .local v25, "contactInfo":Lcom/android/dialer/calllog/ContactInfo;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/dialer/calllog/ContactInfo;->subscription:I

    move-object/from16 v4, p0

    move/from16 v8, p3

    invoke-static/range {v4 .. v9}, Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/dialer/calllog/CallLogAdapter;IJII)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/dialer/calllog/CallListItemView;->setTag(Ljava/lang/Object;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/dialer/calllog/HotlineHelper;->getHotlineByNumber(Ljava/lang/String;)Lcom/android/dialer/calllog/HotlineHelper$Hotline;

    move-result-object v28

    .line 743
    .local v28, "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v28, :cond_6

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->nameResId:I

    if-lez v4, :cond_6

    .line 744
    const-string v4, "CallLogAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Use hotline name resource: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->nameResId:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->nameResId:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 749
    :cond_6
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 750
    new-instance v8, Lcom/android/dialer/PhoneCallDetails;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/android/dialer/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/dialer/calllog/ContactInfo;->geocode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v13

    move-object/from16 v0, v25

    iget-wide v14, v0, Lcom/android/dialer/calllog/ContactInfo;->date:J

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/dialer/calllog/ContactInfo;->duration:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->subscription:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->durationType:I

    move/from16 v19, v0

    invoke-direct/range {v8 .. v19}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJII)V

    .line 767
    .local v8, "details":Lcom/android/dialer/PhoneCallDetails;
    :goto_2
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/dialer/calllog/ContactInfo;->isRead:I

    if-nez v4, :cond_9

    const/16 v29, 0x1

    .line 768
    .local v29, "isHighlighted":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v5, v8, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v30

    .line 769
    .local v30, "isVoiceMailNumber":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v4, v0, v8, v1, v5}, Lcom/android/dialer/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/PhoneCallDetails;ZLandroid/content/Context;)V

    .line 770
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v29

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->bindCallButtonView(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/PhoneCallDetails;Z)V

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->isLastOfSection(Landroid/database/Cursor;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/dialer/calllog/CallListItemView;->setDividerVisible(Z)V

    .line 772
    if-eqz v30, :cond_7

    .line 773
    const-wide/16 v4, 0x0

    move-object/from16 v0, v25

    iput-wide v4, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    .line 774
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 777
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->setPhoto(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/HotlineHelper$Hotline;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_0

    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0

    .line 758
    .end local v8    # "details":Lcom/android/dialer/PhoneCallDetails;
    .end local v29    # "isHighlighted":Z
    .end local v30    # "isVoiceMailNumber":Z
    :cond_8
    new-instance v8, Lcom/android/dialer/PhoneCallDetails;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/android/dialer/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/dialer/calllog/ContactInfo;->geocode:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v13

    move-object/from16 v0, v25

    iget-wide v14, v0, Lcom/android/dialer/calllog/ContactInfo;->date:J

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/dialer/calllog/ContactInfo;->duration:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->subscription:I

    move/from16 v18, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->durationType:I

    move/from16 v19, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    move/from16 v21, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-direct/range {v8 .. v24}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v8    # "details":Lcom/android/dialer/PhoneCallDetails;
    goto/16 :goto_2

    .line 767
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 771
    .restart local v29    # "isHighlighted":Z
    .restart local v30    # "isVoiceMailNumber":Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_4
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 864
    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCursor(), cursor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 868
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    .line 873
    :cond_0
    invoke-super {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 874
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 652
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4, "immediate"    # Z

    .prologue
    .line 355
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V

    .line 356
    .local v0, "request":Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 361
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 363
    :cond_1
    return-void

    .line 361
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getContactInfo(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "hashKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    check-cast v1, Lcom/android/dialer/calllog/ContactInfo;

    .line 790
    .restart local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    if-nez v1, :cond_0

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    .line 792
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_0
    return-object v1
.end method

.method protected getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 798
    invoke-static {p1}, Lcom/android/dialer/calllog/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v0

    .line 799
    .local v0, "info":Lcom/android/dialer/calllog/ContactInfo;
    return-object v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 656
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .local v0, "numberCountryIso":Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newCallListItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 477
    new-instance v0, Lcom/android/dialer/calllog/CallListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/dialer/calllog/CallListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 479
    .local v0, "view":Lcom/android/dialer/calllog/CallListItemView;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    return-object v0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newCallListItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newCallListItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newCallListItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 278
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 220
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 224
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 465
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 469
    if-nez p2, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    goto :goto_0
.end method

.method setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    .line 282
    return-void
.end method
