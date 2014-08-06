.class public Lcom/android/dialer/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;,
        Lcom/android/dialer/CallDetailActivity$ViewEntry;,
        Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/dialer/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field private mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasRemoveFromCallLogOption:Z

.field private mHasTrashOption:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private final mThirdActionListener:Landroid/view/View$OnClickListener;

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 213
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subscription"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/dialer/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    .line 233
    new-instance v0, Lcom/android/dialer/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$1;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 243
    new-instance v0, Lcom/android/dialer/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$2;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Lcom/android/dialer/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$3;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mThirdActionListener:Landroid/view/View$OnClickListener;

    .line 264
    new-instance v0, Lcom/android/dialer/CallDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$4;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 993
    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/dialer/CallDetailActivity;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$ViewEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Lcom/android/dialer/CallDetailActivity$ViewEntry;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/dialer/CallDetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/CallDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/dialer/CallDetailActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallTypeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;Lcom/android/dialer/PhoneCallDetails;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/dialer/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/CallDetailActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 991
    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 933
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 934
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 936
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/dialer/CallDetailActivity;->updateTitle(Ljava/lang/String;)V

    .line 937
    return-void
.end method

.method private configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V
    .locals 11
    .param p1, "entry"    # Lcom/android/dialer/CallDetailActivity$ViewEntry;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 759
    const v8, 0x7f0a0024

    invoke-virtual {p0, v8}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, "convertView":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 762
    const v8, 0x7f0a0029

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 763
    .local v3, "icon":Landroid/widget/ImageView;
    const v8, 0x7f0a0028

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 764
    .local v1, "divider":Landroid/view/View;
    const v8, 0x7f0a0026

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 765
    .local v7, "text":Landroid/widget/TextView;
    const v8, 0x7f0a002b

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 766
    .local v4, "icon_third":Landroid/widget/ImageView;
    const v8, 0x7f0a002a

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 768
    .local v2, "divider_third":Landroid/view/View;
    const v8, 0x7f0a0025

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 769
    .local v6, "mainAction":Landroid/view/View;
    iget-object v8, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    invoke-virtual {v6, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 771
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v8, p0, Lcom/android/dialer/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 774
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v8, :cond_0

    .line 775
    iget-object v8, p0, Lcom/android/dialer/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIcon:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 777
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 779
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 780
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 786
    :goto_0
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    if-eqz v8, :cond_1

    .line 787
    iget-object v8, p0, Lcom/android/dialer/CallDetailActivity;->mThirdActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIcon:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 790
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 791
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdDescription:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 792
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 798
    :goto_1
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    const v8, 0x7f0a0027

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 801
    .local v5, "label":Landroid/widget/TextView;
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 802
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    :goto_2
    return-void

    .line 782
    .end local v5    # "label":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 783
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 804
    .restart local v5    # "label":Landroid/widget/TextView;
    :cond_2
    iget-object v8, p1, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private disableCallButton()V
    .locals 2

    .prologue
    .line 754
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    return-void
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 982
    :goto_0
    return v0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 982
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1042
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x202a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1043
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1044
    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 7

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 380
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 382
    const/4 v4, 0x1

    new-array v3, v4, [Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 389
    :cond_0
    return-object v3

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 385
    .local v0, "ids":[J
    array-length v4, v0

    new-array v3, v4, [Landroid/net/Uri;

    .line 386
    .local v3, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 387
    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    aget-wide v5, v0, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    .locals 23
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 631
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/dialer/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 633
    .local v19, "callCursor":Landroid/database/Cursor;
    if-eqz v19, :cond_0

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 634
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot find content: "

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_1

    .line 685
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 684
    :cond_1
    throw v2

    .line 638
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "number":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 640
    .local v8, "date":J
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 641
    .local v10, "duration":J
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 642
    .local v20, "callType":I
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, "countryIso":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 644
    .local v6, "geocode":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 645
    .local v12, "subscription":I
    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 647
    .local v13, "durationType":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 648
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 660
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v2, v3, v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v21

    .line 665
    .local v21, "info":Lcom/android/dialer/calllog/ContactInfo;
    :goto_0
    if-nez v21, :cond_6

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 667
    .local v4, "formattedNumber":Ljava/lang/CharSequence;
    const-string v14, ""

    .line 668
    .local v14, "nameText":Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .line 669
    .local v15, "numberType":I
    const-string v16, ""

    .line 670
    .local v16, "numberLabel":Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .line 671
    .local v18, "photoUri":Landroid/net/Uri;
    const/16 v17, 0x0

    .line 680
    .local v17, "lookupUri":Landroid/net/Uri;
    :goto_1
    new-instance v2, Lcom/android/dialer/PhoneCallDetails;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v22, 0x0

    aput v20, v7, v22

    invoke-direct/range {v2 .. v18}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    if-eqz v19, :cond_4

    .line 685
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 680
    :cond_4
    return-object v2

    .line 660
    .end local v4    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v14    # "nameText":Ljava/lang/CharSequence;
    .end local v15    # "numberType":I
    .end local v16    # "numberLabel":Ljava/lang/CharSequence;
    .end local v17    # "lookupUri":Landroid/net/Uri;
    .end local v18    # "photoUri":Landroid/net/Uri;
    .end local v21    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_5
    const/16 v21, 0x0

    goto :goto_0

    .line 673
    .restart local v21    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_6
    :try_start_2
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 674
    .restart local v4    # "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 675
    .restart local v14    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, v21

    iget v15, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    .line 676
    .restart local v15    # "numberType":I
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 677
    .restart local v16    # "numberLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 678
    .restart local v18    # "photoUri":Landroid/net/Uri;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v17    # "lookupUri":Landroid/net/Uri;
    goto :goto_1
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 839
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 840
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 841
    const/4 v1, 0x0

    .line 849
    :goto_0
    return-object v1

    .line 845
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 846
    const-string v1, "CallDetail"

    const-string v2, "Expected 1, found (%d) num of status messages. Will use the first one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private hasVoicemail()Z
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 8
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 692
    const-string v4, "CallDetail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadContactPhotos("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-nez p1, :cond_2

    .line 694
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/dialer/calllog/HotlineHelper;->getHotlineByNumber(Ljava/lang/String;)Lcom/android/dialer/calllog/HotlineHelper$Hotline;

    move-result-object v1

    .line 695
    .local v1, "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->photoResId:I

    if-lez v4, :cond_0

    .line 696
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    iget v5, v1, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->photoResId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 710
    .end local v1    # "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    :goto_0
    return-void

    .line 699
    .restart local v1    # "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ColorfulPhotoUtils;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ColorfulPhotoUtils;

    move-result-object v0

    .line 700
    .local v0, "colorfulPhotoUtils":Lcom/android/internal/util/ColorfulPhotoUtils;
    iget-object v4, p2, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    iget-object v3, p2, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 702
    .local v3, "uri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/internal/util/ColorfulPhotoUtils;->getAvatarResId(Landroid/net/Uri;)I

    move-result v2

    .line 703
    .local v2, "photoResId":I
    if-lez v2, :cond_2

    .line 704
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 700
    .end local v2    # "photoResId":I
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v4, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v4}, Lcom/android/contacts/common/util/UriUtils;->getUriForNumber(Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    .line 708
    .end local v0    # "colorfulPhotoUtils":Lcom/android/internal/util/ColorfulPhotoUtils;
    .end local v1    # "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$5;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 368
    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 7

    .prologue
    const v6, 0x7f0a0023

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 325
    invoke-virtual {p0, v6}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 326
    .local v2, "voicemailContainer":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;-><init>()V

    .line 331
    .local v1, "playbackFragment":Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v0, "fragmentArguments":Landroid/os/Bundle;
    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 340
    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dialer/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    .line 341
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/dialer/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 347
    .end local v0    # "fragmentArguments":Landroid/os/Bundle;
    .end local v1    # "playbackFragment":Lcom/android/dialer/voicemail/VoicemailPlaybackFragment;
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 986
    new-instance v0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 987
    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .param p1, "callUris"    # [Landroid/net/Uri;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 626
    return-void
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 940
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 941
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 942
    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 943
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 944
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v2

    .end local p1    # "location":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 946
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/dialer/ProximitySensorManager;->disable(Z)V

    .line 973
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/dialer/ProximitySensorManager;->enable()V

    .line 968
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->setContentView(I)V

    .line 282
    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 283
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 284
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 285
    invoke-static {p0}, Lcom/android/dialer/calllog/HotlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/HotlineHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

    .line 287
    new-instance v0, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    .line 288
    new-instance v0, Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    .line 289
    new-instance v0, Lcom/android/dialer/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    .line 291
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    .line 292
    new-instance v0, Lcom/android/dialer/CallDetailActivityQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivityQueryHandler;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/dialer/CallDetailActivityQueryHandler;

    .line 293
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 294
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 295
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    .line 296
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    .line 299
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 300
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 301
    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 302
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 303
    new-instance v0, Lcom/android/dialer/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/dialer/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorManager:Lcom/android/dialer/ProximitySensorManager;

    .line 304
    new-instance v0, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 305
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->configureActionBar()V

    .line 306
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->optionallyHandleVoicemail()V

    .line 307
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FROM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->closeSystemDialogs()V

    .line 310
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 855
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 394
    packed-switch p1, :pswitch_data_0

    .line 407
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 397
    :pswitch_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 399
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    .line 400
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 402
    const/4 v1, 0x1

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuCallViaIP(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/contacts/common/CallUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 913
    return-void
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 908
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 909
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 871
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 873
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 874
    const/4 v0, 0x1

    return v0

    .line 871
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v1, "callIds":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 886
    .local v2, "callUri":Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 887
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 885
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 891
    .end local v2    # "callUri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/dialer/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/dialer/CallDetailActivity$7;

    invoke-direct {v7, p0, v1}, Lcom/android/dialer/CallDetailActivity$7;-><init>(Lcom/android/dialer/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 905
    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    .line 917
    .local v0, "voicemailUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/dialer/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/dialer/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/dialer/CallDetailActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/CallDetailActivity$8;-><init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 929
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/CallDetailActivity;->disableProximitySensor(Z)V

    .line 961
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity;->mProximitySensorListener:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 962
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 963
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 862
    const v0, 0x7f0a00b0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 863
    const v0, 0x7f0a00b1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 864
    const v0, 0x7f0a00b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 865
    const v0, 0x7f0a00af

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 866
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 315
    invoke-direct {p0}, Lcom/android/dialer/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 316
    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 810
    if-nez p1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    .line 815
    .local v0, "message":Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 820
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 822
    iget v1, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 823
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 825
    :cond_3
    iget-object v1, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 826
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 827
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/dialer/CallDetailActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/android/dialer/CallDetailActivity$6;-><init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 834
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method
