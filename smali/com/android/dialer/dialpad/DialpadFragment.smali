.class public Lcom/android/dialer/dialpad/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;
.implements Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;,
        Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialTouchListener;,
        Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;,
        Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;,
        Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;,
        Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallLog:Lcom/android/phone/common/CallLogAsync;

.field private mClearDigitsOnStop:Z

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mCreateContactContainer:Landroid/view/View;

.field private mCreateContactView:Landroid/widget/TextView;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDTMFObserver:Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDialButton:Landroid/widget/ImageButton;

.field private mDialButton1:Landroid/widget/ImageButton;

.field private mDialButton2:Landroid/widget/ImageButton;

.field private mDialButtonContainer:Landroid/view/View;

.field private mDialpad:Landroid/view/View;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

.field private mDialpadPressCount:I

.field private mDigits:Landroid/widget/EditText;

.field private mDigitsContainer:Landroid/view/View;

.field private mDigitsFilledByIntent:Z

.field private mFirstLaunch:Z

.field private final mHaptic:Lcom/android/phone/common/HapticFeedback;

.field private mLastDigitsForSmartDial:Ljava/lang/String;

.field private mLastNumberDialed:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProhibitedPhoneNumberRegexp:Ljava/lang/String;

.field private mSMSButton:Landroid/view/View;

.field private mShowOrHideButton:Landroid/widget/ImageView;

.field private mSmartDialAdapter:Lcom/android/dialer/dialpad/SmartDialAdapter;

.field private mSmartDialCache:Lcom/android/dialer/dialpad/SmartDialCache;

.field private mSmartDialContainer:Landroid/widget/LinearLayout;

.field private mSmartDialLoadTask:Lcom/android/dialer/dialpad/SmartDialLoaderTask;

.field private mStartedFromNewIntent:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private mWasEmptyBeforeTextChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    .line 188
    new-instance v0, Lcom/android/phone/common/CallLogAsync;

    invoke-direct {v0}, Lcom/android/phone/common/CallLogAsync;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/android/phone/common/HapticFeedback;

    invoke-direct {v0}, Lcom/android/phone/common/HapticFeedback;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    .line 215
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$1;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 247
    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 699
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$2;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/dialpad/DialpadFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/dialer/dialpad/DialpadFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/dialer/dialpad/DialpadFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method private callSpeedNumber(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1244
    new-instance v2, Lcom/android/dialer/SpeedDialUtils;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/dialer/SpeedDialUtils;-><init>(Landroid/content/Context;)V

    .line 1247
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1273
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/dialer/SpeedDialUtils;->getContactDataId(I)J

    move-result-wide v3

    .line 1274
    sget-object v5, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/dialer/SpeedDialUtils;->getSpeedDialInfo(JI)Ljava/lang/String;

    move-result-object v1

    .line 1276
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    if-nez v1, :cond_0

    .line 1278
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->showNoSpeedNumberDialog(I)V

    .line 1286
    :goto_1
    return-void

    :pswitch_0
    move v0, v1

    .line 1250
    goto :goto_0

    .line 1252
    :pswitch_1
    const/4 v0, 0x1

    .line 1253
    goto :goto_0

    .line 1255
    :pswitch_2
    const/4 v0, 0x2

    .line 1256
    goto :goto_0

    .line 1258
    :pswitch_3
    const/4 v0, 0x3

    .line 1259
    goto :goto_0

    .line 1261
    :pswitch_4
    const/4 v0, 0x4

    .line 1262
    goto :goto_0

    .line 1264
    :pswitch_5
    const/4 v0, 0x5

    .line 1265
    goto :goto_0

    .line 1267
    :pswitch_6
    const/4 v0, 0x6

    .line 1268
    goto :goto_0

    .line 1270
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 1280
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1282
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1283
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1284
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1247
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0063
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static canAddDigit(Ljava/lang/CharSequence;IIC)Z
    .locals 3

    .prologue
    const/16 v2, 0x3b

    const/4 v0, 0x0

    .line 2044
    if-eq p3, v2, :cond_1

    const/16 v1, 0x2c

    if-eq p3, v1, :cond_1

    .line 2045
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not be called for anything other than PAUSE & WAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_0
    :goto_0
    return v0

    .line 2050
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-lt p2, p1, :cond_0

    .line 2055
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 2058
    if-eqz p1, :cond_0

    .line 2060
    if-ne p3, v2, :cond_2

    .line 2062
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2065
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p2, :cond_2

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2068
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeActionButtonStatus(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 1915
    if-eqz p1, :cond_0

    .line 1916
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change action status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 1918
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 1919
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1921
    :cond_0
    return-void

    .line 1919
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 507
    sget-object v4, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v5, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_0
    return-void

    .line 512
    :cond_0
    const/4 v3, 0x0

    .line 516
    .local v3, "needToShowDialpadChooser":Z
    invoke-static {p1}, Lcom/android/dialer/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v2

    .line 517
    .local v2, "isAddCallMode":Z
    if-nez v2, :cond_3

    .line 522
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    move-result v1

    .line 523
    .local v1, "digitsFilled":Z
    iget-boolean v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    if-eqz v4, :cond_1

    if-nez v1, :cond_3

    .line 525
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.DIAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 530
    :cond_2
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 531
    const/4 v3, 0x1

    .line 538
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "digitsFilled":Z
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillDigitsIfNecessary(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    .line 437
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 440
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 441
    const-string v0, "tel"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {v11}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "data":Ljava/lang/String;
    iput-boolean v12, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 446
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, "converted":Ljava/lang/String;
    invoke-direct {p0, v8, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 478
    .end local v8    # "converted":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :goto_0
    return v0

    .line 452
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    .line 453
    .local v10, "type":Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 456
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v13

    const-string v4, "number_key"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 459
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 461
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 464
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 467
    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_4
    move v0, v13

    .line 478
    goto :goto_0
.end method

.method private static getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 839
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 840
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 841
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    return-object v0
.end method

.method private getSendSmsIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    const-string v1, "smsto"

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 849
    return-object v0
.end method

.method private static getVoicemailIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    return-object v0
.end method

.method private handleDialButtonClickWithEmptyDigits(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1434
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->newFlashIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1459
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 1456
    :cond_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(I)V

    goto :goto_0
.end method

.method private initializeSmartDialingState()V
    .locals 2

    .prologue
    .line 2182
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/SmartDialCache;->getInstance(Landroid/content/Context;I)Lcom/android/dialer/dialpad/SmartDialCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialCache:Lcom/android/dialer/dialpad/SmartDialCache;

    .line 2185
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    if-nez v0, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialCache:Lcom/android/dialer/dialpad/SmartDialCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/SmartDialCache;->cacheIfNeeded(Z)V

    .line 2193
    :cond_0
    return-void
.end method

.method private static isAddCallMode(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    :cond_0
    const-string v2, "add_call_mode"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 493
    :cond_1
    return v1
.end method

.method private isDigitsEmpty()Z
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutReady()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoicemailAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2026
    :try_start_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2032
    :cond_0
    :goto_0
    return v0

    .line 2028
    :catch_0
    move-exception v1

    .line 2030
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "SecurityException is thrown. Maybe privilege isn\'t sufficient."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, -0x1

    .line 853
    packed-switch p1, :pswitch_data_0

    .line 894
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 895
    return-void

    .line 855
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 858
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 861
    :pswitch_2
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 864
    :pswitch_3
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 867
    :pswitch_4
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 870
    :pswitch_5
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 873
    :pswitch_6
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 876
    :pswitch_7
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 879
    :pswitch_8
    const/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 882
    :pswitch_9
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 885
    :pswitch_a
    const/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 888
    :pswitch_b
    const/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private loadSmartDialEntries()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2130
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialAdapter:Lcom/android/dialer/dialpad/SmartDialAdapter;

    if-nez v0, :cond_1

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialCache:Lcom/android/dialer/dialpad/SmartDialCache;

    if-nez v0, :cond_2

    .line 2136
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Trying to load smart dialing entries from a null cache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2141
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2142
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastDigitsForSmartDial:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2145
    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastDigitsForSmartDial:Ljava/lang/String;

    .line 2147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 2148
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialAdapter:Lcom/android/dialer/dialpad/SmartDialAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/SmartDialAdapter;->clear()V

    .line 2149
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2150
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2153
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialLoadTask:Lcom/android/dialer/dialpad/SmartDialLoaderTask;

    if-eqz v1, :cond_4

    .line 2154
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialLoadTask:Lcom/android/dialer/dialpad/SmartDialLoaderTask;

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->cancel(Z)Z

    .line 2155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialLoadTask:Lcom/android/dialer/dialpad/SmartDialLoaderTask;

    .line 2157
    :cond_4
    new-instance v1, Lcom/android/dialer/dialpad/SmartDialLoaderTask;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialCache:Lcom/android/dialer/dialpad/SmartDialCache;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/dialer/dialpad/SmartDialLoaderTask;-><init>(Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialCache;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialLoadTask:Lcom/android/dialer/dialpad/SmartDialLoaderTask;

    .line 2158
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialLoadTask:Lcom/android/dialer/dialpad/SmartDialLoaderTask;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private newFlashIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2109
    const-string v0, ""

    invoke-static {v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2110
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2111
    return-object v0
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1790
    .line 1792
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1793
    if-eqz v1, :cond_0

    .line 1794
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1799
    :cond_0
    :goto_0
    return v0

    .line 1796
    :catch_0
    move-exception v1

    .line 1797
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.getActivePhoneType() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1778
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1779
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1783
    :cond_0
    :goto_0
    return v0

    .line 1780
    :catch_0
    move-exception v1

    .line 1781
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isIdle() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 1806
    const/4 v0, 0x0

    .line 1808
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1809
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1813
    :cond_0
    :goto_0
    return v0

    .line 1810
    :catch_0
    move-exception v1

    .line 1811
    sget-object v2, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private playTone(I)V
    .locals 1
    .param p1, "tone"    # I

    .prologue
    .line 1465
    const/16 v0, 0x96

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->playTone(II)V

    .line 1466
    return-void
.end method

.method private playTone(II)V
    .locals 4

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1494
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1495
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 1502
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    monitor-exit v1

    goto :goto_0

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1507
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1508
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private queryLastOutgoingCall()V
    .locals 3

    .prologue
    .line 2085
    const-string v1, ""

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 2086
    new-instance v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/dialer/dialpad/DialpadFragment$4;

    invoke-direct {v2, p0}, Lcom/android/dialer/dialpad/DialpadFragment$4;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;-><init>(Landroid/content/Context;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V

    .line 2105
    .local v0, "lastCallArgs":Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    invoke-virtual {v1, v0}, Lcom/android/phone/common/CallLogAsync;->getLastOutgoingCall(Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;

    .line 2106
    return-void
.end method

.method private returnToInCallScreen(Z)V
    .locals 3

    .prologue
    .line 1754
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1755
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1768
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1769
    return-void

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendKeyPressedEvent(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 1050
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1051
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1054
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 1055
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 1058
    :cond_0
    return-void
.end method

.method private setDialButtonVisibility(ZZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1924
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 1926
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1928
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1929
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 1932
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1934
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1935
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1952
    :cond_2
    :goto_0
    return-void

    .line 1938
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 1939
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1941
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 1942
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1943
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1944
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1946
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 1947
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    if-eqz p2, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1948
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1949
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1942
    goto :goto_1

    :cond_7
    move v1, v2

    .line 1947
    goto :goto_2
.end method

.method private setFormattedDigits(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "dialString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v0, p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 555
    .local v1, "digits":Landroid/text/Editable;
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 558
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 560
    .end local v1    # "digits":Landroid/text/Editable;
    :cond_0
    return-void
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 8
    .param p1, "fragmentView"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0a006c

    const v6, 0x7f0a0062

    .line 563
    const/16 v5, 0xc

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 565
    .local v1, "buttonIds":[I
    move-object v0, v1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v3, v0, v2

    .line 566
    .local v3, "id":I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpad/DialpadImageButton;

    invoke-virtual {v5, p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->setOnPressedListener(Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;)V

    .line 567
    if-eq v3, v6, :cond_0

    if-eq v3, v7, :cond_0

    .line 568
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpad/DialpadImageButton;

    invoke-virtual {v5, p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 565
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v3    # "id":I
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 576
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 578
    return-void

    .line 563
    :array_0
    .array-data 4
        0x7f0a0062
        0x7f0a0063
        0x7f0a0064
        0x7f0a0065
        0x7f0a0066
        0x7f0a0067
        0x7f0a0068
        0x7f0a0069
        0x7f0a006a
        0x7f0a006c
        0x7f0a006b
        0x7f0a006d
    .end array-data
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 798
    const v0, 0x7f0a00bc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 799
    const v1, 0x7f0a00b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 800
    const v2, 0x7f0a00b8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 801
    const v3, 0x7f0a00b9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 802
    const v4, 0x7f0a00ba

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 806
    if-nez v0, :cond_0

    .line 836
    :goto_0
    return-void

    .line 810
    :cond_0
    const v5, 0x7f0a00b6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 811
    const v5, 0x7f0a00b7

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 813
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 814
    if-eqz v5, :cond_2

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 816
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 822
    :goto_1
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v0

    .line 823
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 827
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 828
    :cond_1
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 829
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 830
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 818
    :cond_2
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 819
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 832
    :cond_3
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 833
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 834
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showDialpad(Z)V
    .locals 4

    .prologue
    const v2, 0x7f090019

    .line 1529
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mShowOrHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1530
    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "showDialpad error, fragment not attached to activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    :goto_0
    return-void

    .line 1533
    :cond_1
    if-eqz p1, :cond_2

    .line 1534
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1535
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1536
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1537
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mShowOrHideButton:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1538
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1540
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1541
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1543
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1544
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mShowOrHideButton:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1545
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDialpadChooser(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1567
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1571
    :cond_0
    if-eqz p1, :cond_6

    .line 1573
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1574
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1579
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1580
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1581
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1582
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    if-nez v0, :cond_4

    .line 1587
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    .line 1589
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooserAdapter:Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1577
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 1592
    :cond_6
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1593
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    :goto_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    :cond_7
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    :cond_8
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1600
    :cond_9
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1601
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V

    goto :goto_0

    .line 1595
    :cond_a
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method private showNoSpeedNumberDialog(I)V
    .locals 4

    .prologue
    .line 1289
    add-int/lit8 v0, p1, 0x2

    .line 1290
    const v1, 0x7f08017d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1291
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1292
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/dialer/dialpad/DialpadFragment$3;

    invoke-direct {v3, p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment$3;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1304
    return-void
.end method

.method private stopTone()V
    .locals 3

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    if-nez v0, :cond_0

    .line 1526
    :goto_0
    return-void

    .line 1519
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1520
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 1521
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    monitor-exit v1

    goto :goto_0

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1524
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1525
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateDialAndDeleteButtonEnabledState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1958
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move v1, v5

    .line 1960
    .local v1, "digitsNotEmpty":Z
    :goto_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    if-eqz v7, :cond_5

    .line 1964
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsCdma()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsOffhook()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1965
    iget-object v6, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2008
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2009
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSMSButton:Landroid/view/View;

    invoke-direct {p0, v5, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->changeActionButtonStatus(Landroid/view/View;Z)V

    .line 2010
    return-void

    .end local v1    # "digitsNotEmpty":Z
    :cond_1
    move v1, v6

    .line 1958
    goto :goto_0

    .line 1971
    .restart local v1    # "digitsNotEmpty":Z
    :cond_2
    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_3

    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    move v6, v5

    :cond_4
    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1975
    :cond_5
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1976
    invoke-static {v6}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v3

    .line 1977
    .local v3, "hasCard1":Z
    invoke-static {v5}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v4

    .line 1978
    .local v4, "hasCard2":Z
    invoke-direct {p0, v3, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->setDialButtonVisibility(ZZ)V

    .line 1980
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1981
    invoke-direct {p0, v6, v6}, Lcom/android/dialer/dialpad/DialpadFragment;->setDialButtonVisibility(ZZ)V

    .line 1982
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v5, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->changeActionButtonStatus(Landroid/view/View;Z)V

    goto :goto_1

    .line 1984
    :cond_6
    if-eqz v1, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    .line 1985
    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v5, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->changeActionButtonStatus(Landroid/view/View;Z)V

    goto :goto_1

    .line 1988
    :cond_7
    const/4 v0, 0x1

    .line 1989
    .local v0, "cdmaIdle":Z
    const/4 v2, 0x1

    .line 1990
    .local v2, "gsmIdle":Z
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2003
    :cond_8
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    move v7, v5

    :goto_2
    invoke-direct {p0, v8, v7}, Lcom/android/dialer/dialpad/DialpadFragment;->changeActionButtonStatus(Landroid/view/View;Z)V

    .line 2004
    iget-object v7, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    if-eqz v4, :cond_a

    if-eqz v0, :cond_a

    :goto_3
    invoke-direct {p0, v7, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->changeActionButtonStatus(Landroid/view/View;Z)V

    goto :goto_1

    :cond_9
    move v7, v6

    .line 2003
    goto :goto_2

    :cond_a
    move v5, v6

    .line 2004
    goto :goto_3
.end method

.method private updateDialString(C)V
    .locals 4

    .prologue
    .line 1883
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    .line 1884
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "Not expected for anything other than PAUSE & WAIT"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1892
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 1893
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1895
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1896
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1898
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1899
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    move v1, v0

    .line 1902
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1904
    invoke-static {v2, v1, v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->canAddDigit(Ljava/lang/CharSequence;IIC)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1905
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1907
    if-eq v1, v0, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iput-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 293
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 294
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V

    .line 297
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 298
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->loadSmartDialEntries()V

    .line 299
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    .line 265
    return-void
.end method

.method public callVoicemail()V
    .locals 1

    .prologue
    .line 1307
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->getVoicemailIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1310
    return-void
.end method

.method public constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1110
    if-nez v1, :cond_0

    .line 1111
    const/4 v0, 0x0

    .line 1118
    :goto_0
    return-object v0

    .line 1113
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1114
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1115
    const v2, 0x7f0e0003

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1116
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1117
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public dialButtonPressed(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1379
    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1383
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits(I)V

    goto :goto_0

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1388
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasAnyEnabledIccCard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1389
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1390
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080171

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1392
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080172

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1399
    :cond_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "persist.radio.otaspdial"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 1403
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v1, "The phone number is prohibited explicitly by a rule."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1405
    const v0, 0x7f080168

    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    .line 1407
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "phone_prohibited_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1411
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto/16 :goto_0

    .line 1413
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/dialer/DialtactsActivity;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1416
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1417
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1418
    iput-boolean v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 1419
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1413
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x43

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1062
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1102
    :pswitch_0
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onClick() event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1064
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1065
    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->sendKeyPressedEvent(I)V

    goto :goto_0

    .line 1070
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1071
    invoke-virtual {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed(I)V

    goto :goto_0

    .line 1075
    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->vibrate()V

    .line 1076
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed(I)V

    goto :goto_0

    .line 1081
    :pswitch_4
    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getSendSmsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1088
    :pswitch_5
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V

    goto :goto_0

    .line 1091
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V

    goto :goto_0

    .line 1096
    :pswitch_6
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 1062
    :pswitch_data_0
    .packed-switch 0x7f0a0074
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 303
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 304
    iput-boolean v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 305
    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 306
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCurrentCountryIso:Ljava/lang/String;

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/common/HapticFeedback;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/dialer/dialpad/DialpadFragment;->setHasOptionsMenu(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mProhibitedPhoneNumberRegexp:Ljava/lang/String;

    .line 319
    if-eqz p1, :cond_0

    .line 320
    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    .line 322
    :cond_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "Vibrate control bool missing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 777
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 780
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 783
    :cond_0
    const v0, 0x7f0e0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 785
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    const v8, 0x7f040019

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 329
    .local v4, "fragmentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 331
    .local v7, "r":Landroid/content/res/Resources;
    const v8, 0x7f0a0073

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsContainer:Landroid/view/View;

    .line 332
    const v8, 0x7f0a0074

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    .line 333
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    sget-object v9, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 334
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 337
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 343
    const v8, 0x7f0a0062

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 344
    .local v6, "oneButton":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 345
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 349
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/high16 v8, 0x42600000

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v5, v8

    .line 350
    .local v5, "minCellSize":I
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v8, v5

    .line 351
    .local v0, "cellCount":I
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v3, 0x0

    .line 353
    .local v3, "fakeMenuItemWidth":I
    :goto_0
    const v8, 0x7f0a0077

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    .line 356
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 357
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButtonContainer:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v8, v9, v10, v3, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 361
    :cond_1
    const v8, 0x7f0a0079

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    .line 362
    const v8, 0x7f0a007a

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    .line 363
    const v8, 0x7f0a007b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    .line 364
    const v8, 0x7f0a007c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSMSButton:Landroid/view/View;

    .line 365
    const v8, 0x7f0a0078

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mShowOrHideButton:Landroid/widget/ImageView;

    .line 366
    const v8, 0x7f070016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 367
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    .line 368
    .local v2, "dualCard":Z
    invoke-direct {p0, v2, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->setDialButtonVisibility(ZZ)V

    .line 369
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSMSButton:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mShowOrHideButton:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .end local v2    # "dualCard":Z
    :goto_1
    const v8, 0x7f0a0076

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    .line 385
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    if-eqz v8, :cond_2

    .line 386
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 390
    :cond_2
    const v8, 0x7f0a0061

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    .line 393
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpad:Landroid/view/View;

    if-nez v8, :cond_6

    .line 394
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 400
    :goto_2
    const v8, 0x7f0a007d

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    .line 401
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 405
    const v8, 0x7f0a0070

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    .line 406
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    .line 407
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V

    .line 410
    const v8, 0x102000a

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    .line 411
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 412
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    new-instance v9, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 413
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    new-instance v9, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialTouchListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialTouchListener;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    const v8, 0x7f0a0071

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactContainer:Landroid/view/View;

    .line 415
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactContainer:Landroid/view/View;

    new-instance v9, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    new-instance v8, Lcom/android/dialer/dialpad/SmartDialAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/dialer/dialpad/SmartDialAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialAdapter:Lcom/android/dialer/dialpad/SmartDialAdapter;

    .line 418
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialAdapter:Lcom/android/dialer/dialpad/SmartDialAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 421
    :cond_3
    const v8, 0x7f0a0072

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactView:Landroid/widget/TextView;

    .line 422
    return-object v4

    .line 351
    .end local v3    # "fakeMenuItemWidth":I
    :cond_4
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v3, v8, v0

    goto/16 :goto_0

    .line 372
    .restart local v3    # "fakeMenuItemWidth":I
    :cond_5
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 373
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton:Landroid/widget/ImageButton;

    .line 374
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 375
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton1:Landroid/widget/ImageButton;

    .line 376
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 377
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialButton2:Landroid/widget/ImageButton;

    .line 378
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSMSButton:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSMSButton:Landroid/view/View;

    .line 380
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mShowOrHideButton:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mShowOrHideButton:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 396
    :cond_6
    iget-object v8, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto/16 :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1716
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 1718
    iget v0, v0, Lcom/android/dialer/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 1719
    packed-switch v0, :pswitch_data_0

    .line 1742
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick: unexpected itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :goto_0
    return-void

    .line 1724
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1731
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 1738
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_0

    .line 1719
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 899
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 907
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 901
    :pswitch_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 902
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPreferredSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed(I)V

    .line 903
    const/4 v0, 0x1

    goto :goto_0

    .line 899
    :pswitch_data_0
    .packed-switch 0x7f0a0074
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/16 v4, 0x51

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1123
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 1125
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1228
    :cond_0
    :goto_0
    return v0

    .line 1127
    :pswitch_1
    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 1131
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDelete:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1137
    :pswitch_2
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1141
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isVoicemailAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1142
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->callVoicemail()V

    goto :goto_0

    .line 1143
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 1147
    if-eqz v1, :cond_3

    .line 1148
    const v1, 0x7f08016a

    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v1

    .line 1150
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voicemail_request_during_airplane_mode"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1153
    :cond_3
    const v1, 0x7f080169

    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;->newInstance(I)Lcom/android/dialer/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v1

    .line 1155
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "voicemail_not_ready"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1160
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->onPressComplete(Landroid/view/View;)V

    move v0, v1

    .line 1161
    goto :goto_0

    .line 1165
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->sendKeyPressedEvent(I)V

    .line 1166
    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    .line 1172
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 1173
    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    goto :goto_0

    .line 1181
    :pswitch_4
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    move v0, v1

    .line 1182
    goto :goto_0

    .line 1186
    :pswitch_5
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1187
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits(I)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1192
    goto/16 :goto_0

    .line 1196
    :pswitch_6
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1197
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->handleDialButtonClickWithEmptyDigits(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1202
    goto/16 :goto_0

    .line 1213
    :pswitch_7
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1214
    invoke-direct {p0, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->callSpeedNumber(I)V

    goto/16 :goto_0

    .line 1217
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->onPressComplete(Landroid/view/View;)V

    move v0, v1

    .line 1218
    goto/16 :goto_0

    .line 1222
    :pswitch_8
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto/16 :goto_0

    .line 1225
    :pswitch_9
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto/16 :goto_0

    .line 1125
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0062
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1875
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1822
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1869
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1824
    :pswitch_0
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    .line 1827
    :pswitch_1
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialString(C)V

    goto :goto_0

    .line 1830
    :pswitch_2
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1832
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1833
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1837
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/dialer/SpeedDialListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1838
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1842
    :pswitch_4
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1843
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1844
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1845
    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    goto :goto_0

    .line 1849
    :pswitch_5
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1850
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getVTCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1852
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    :goto_1
    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    goto :goto_0

    .line 1853
    :catch_0
    move-exception v1

    .line 1854
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "video call app not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1860
    :pswitch_6
    invoke-static {}, Lcom/android/contacts/common/CallUtil;->getVTCallSettingsIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1862
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1863
    :catch_1
    move-exception v1

    .line 1864
    sget-object v1, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const-string v2, "video call setting not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1822
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00b5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 730
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 732
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 736
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 738
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFObserver:Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

    if-eqz v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFObserver:Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 740
    iput-object v4, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFObserver:Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

    .line 743
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 745
    iput v3, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 747
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_1

    .line 749
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 750
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 752
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    const-string v1, ""

    iput-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;

    .line 757
    invoke-static {}, Lcom/android/dialer/SpecialCharSequenceMgr;->cleanup()V

    .line 758
    return-void

    .line 752
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadChooser:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 795
    :cond_1
    return-void
.end method

.method public onPressComplete(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1046
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->sendKeyPressedEvent(I)V

    .line 1047
    return-void

    .line 998
    :pswitch_0
    const/16 v0, 0x8

    .line 999
    goto :goto_0

    .line 1002
    :pswitch_1
    const/16 v0, 0x9

    .line 1003
    goto :goto_0

    .line 1006
    :pswitch_2
    const/16 v0, 0xa

    .line 1007
    goto :goto_0

    .line 1010
    :pswitch_3
    const/16 v0, 0xb

    .line 1011
    goto :goto_0

    .line 1014
    :pswitch_4
    const/16 v0, 0xc

    .line 1015
    goto :goto_0

    .line 1018
    :pswitch_5
    const/16 v0, 0xd

    .line 1019
    goto :goto_0

    .line 1022
    :pswitch_6
    const/16 v0, 0xe

    .line 1023
    goto :goto_0

    .line 1026
    :pswitch_7
    const/16 v0, 0xf

    .line 1027
    goto :goto_0

    .line 1030
    :pswitch_8
    const/16 v0, 0x10

    .line 1031
    goto :goto_0

    .line 1034
    :pswitch_9
    const/4 v0, 0x7

    .line 1035
    goto :goto_0

    .line 1038
    :pswitch_a
    const/16 v0, 0x12

    .line 1039
    goto :goto_0

    .line 1042
    :pswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0062
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onPressed(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 919
    if-eqz p2, :cond_1

    .line 920
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 970
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :goto_0
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 991
    :cond_0
    :goto_1
    return-void

    .line 922
    :pswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 926
    :pswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 930
    :pswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 934
    :pswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 938
    :pswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 942
    :pswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 946
    :pswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 950
    :pswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 954
    :pswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 958
    :pswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 962
    :pswitch_a
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 966
    :pswitch_b
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->keyPressed(I)V

    goto :goto_0

    .line 976
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 977
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 978
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-gez v0, :cond_2

    .line 985
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    .line 986
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    goto :goto_1

    .line 987
    :cond_2
    iget v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    if-nez v0, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->stopTone()V

    goto :goto_1

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0062
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 594
    const-string v0, "Dialpad.onResume"

    invoke-static {v0}, Lcom/android/contacts/common/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v3

    .line 598
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V

    .line 600
    const-string v0, "qloc"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
    const-string v4, "dtmf_tone"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z

    .line 608
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFObserver:Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFObserver:Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dtmf_tone"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFObserver:Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 615
    const-string v0, "dtwd"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mHaptic:Lcom/android/phone/common/HapticFeedback;

    invoke-virtual {v0}, Lcom/android/phone/common/HapticFeedback;->checkSystemSetting()V

    .line 620
    const-string v0, "hptc"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 627
    :try_start_1
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    const/16 v5, 0x50

    invoke-direct {v0, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    const-string v0, "tg"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 636
    iput v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDialpadPressCount:I

    .line 640
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->initializeSmartDialingState()V

    .line 642
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 643
    instance-of v1, v0, Lcom/android/dialer/DialtactsActivity;

    if-eqz v1, :cond_2

    .line 646
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->fillDigitsIfNecessary(Landroid/content/Intent;)Z

    .line 649
    :cond_2
    const-string v0, "fdin"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 656
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 658
    const-string v0, "tm"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 669
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f080166

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 672
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f4ccccd

    invoke-direct {v1, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 673
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 683
    :goto_2
    iput-boolean v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mFirstLaunch:Z

    .line 685
    const-string v0, "hnt"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V

    .line 689
    const-string v0, "bes"

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 691
    sget-object v0, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    const/16 v1, 0x32

    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 693
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 694
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 697
    return-void

    :cond_3
    move v0, v2

    .line 605
    goto/16 :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 629
    :try_start_3
    sget-object v4, Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while creating local tone generator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_1

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 676
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 680
    invoke-direct {p0, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialpadChooser(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 771
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 772
    const-string v0, "pref_digits_filled_by_intent"

    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigitsFilledByIntent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 773
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 582
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 583
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactView:Landroid/widget/TextView;

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 588
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 762
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 763
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mClearDigitsOnStop:Z

    .line 765
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 767
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 269
    iget-boolean v1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mWasEmptyBeforeTextChange:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 278
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public setSmartDialAdapterEntries(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/dialpad/SmartDialEntry;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2166
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2167
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2168
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mLastDigitsForSmartDial:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2174
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialAdapter:Lcom/android/dialer/dialpad/SmartDialAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/SmartDialAdapter;->clear()V

    .line 2178
    :goto_1
    return-void

    .line 2170
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2171
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mCreateContactContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2176
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialAdapter:Lcom/android/dialer/dialpad/SmartDialAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialpad/SmartDialAdapter;->setEntries(Ljava/util/List;)V

    goto :goto_1
.end method

.method public setStartedFromNewIntent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mStartedFromNewIntent:Z

    .line 543
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 2116
    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 2117
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialCache:Lcom/android/dialer/dialpad/SmartDialCache;

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment;->mSmartDialCache:Lcom/android/dialer/dialpad/SmartDialCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/SmartDialCache;->cacheIfNeeded(Z)V

    .line 2124
    :cond_0
    return-void
.end method
