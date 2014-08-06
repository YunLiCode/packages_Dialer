.class public Lcom/android/dialer/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;,
        Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;
    }
.end annotation


# instance fields
.field private allCallTypeBut:Landroid/widget/RadioButton;

.field private callItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private callTypeListener:Landroid/view/View$OnClickListener;

.field private cardItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private inCallTypeBut:Landroid/widget/RadioButton;

.field private mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCallSubFilter:I

.field private mCallTypeFilter:I

.field private mCallTypeList:Landroid/widget/Spinner;

.field private mCardTypeList:Landroid/widget/Spinner;

.field private mChangeEnabled:Z

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mDateAndSubNameObserver:Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

.field private mEmptyLoaderRunning:Z

.field private mFilterStatusView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMenuVisible:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRefreshDataRequired:Z

.field private mScrollToTop:Z

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

.field private missCallTypeBut:Landroid/widget/RadioButton;

.field private outCallTypeBut:Landroid/widget/RadioButton;

.field private slotList:Landroid/widget/ImageView;

.field private slotListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 130
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 131
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    .line 137
    iput v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    .line 142
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->callItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 161
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$2;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->cardItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 178
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$3;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->callTypeListener:Landroid/view/View$OnClickListener;

    .line 378
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$6;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$6;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->slotListener:Landroid/content/DialogInterface$OnClickListener;

    .line 498
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/dialer/calllog/CallLogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/calllog/CallLogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/dialer/calllog/CallLogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->registerPhoneCallReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->unregisterPhoneCallReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateSubImage()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mChangeEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/dialer/calllog/CallLogFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallLogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 298
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 299
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 301
    :cond_0
    return-void
.end method

.method private onDelCallLog()V
    .locals 2

    .prologue
    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.MULTI_DELETE_CALLLOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 599
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startCallsQuery()V

    .line 656
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    .line 657
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnEntry()V

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 660
    :cond_0
    return-void
.end method

.method private registerPhoneCallReceiver()V
    .locals 3

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 739
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 720
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$8;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$8;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 738
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private removeMissedCallNotifications()V
    .locals 4

    .prologue
    .line 665
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 667
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 668
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 676
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 670
    .restart local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "CallLogFragment"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 673
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CallLogFragment"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAudioButtonChecked(I)V
    .locals 2
    .param p1, "calltype"    # I

    .prologue
    const/4 v1, 0x1

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 221
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->allCallTypeBut:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 224
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->inCallTypeBut:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->outCallTypeBut:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->missCallTypeBut:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setVoicemailSourcesAvailable(Z)V
    .locals 2
    .param p1, "voicemailSourcesAvailable"    # Z

    .prologue
    .line 305
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-ne v1, p1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 308
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 309
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private showFilterStatus(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 619
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    return-void
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 552
    return-void
.end method

.method private unregisterPhoneCallReceiver()V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 749
    :cond_0
    return-void
.end method

.method private updateFilterTypeAndHeader(I)V
    .locals 4
    .param p1, "filterType"    # I

    .prologue
    const/4 v3, 0x0

    .line 602
    iput p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 603
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "save_calltype"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 604
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "calltype"

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeList:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 606
    invoke-direct {p0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->setAudioButtonChecked(I)V

    .line 607
    sparse-switch p1, :sswitch_data_0

    .line 615
    :goto_0
    return-void

    .line 609
    :sswitch_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 612
    :sswitch_1
    const v1, 0x7f08011d

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->showFilterStatus(I)V

    goto :goto_0

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateOnEntry()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 686
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 681
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .param p1, "onEntry"    # Z

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 697
    if-nez p1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 700
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 701
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 703
    :cond_1
    return-void
.end method

.method private updateSubImage()V
    .locals 3

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "subscription"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    .line 397
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCardTypeList:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 398
    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    packed-switch v0, :pswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 400
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->slotList:Landroid/widget/ImageView;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->slotList:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->slotList:Landroid/widget/ImageView;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 706
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 707
    const-string v1, "com.android.dialer.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 709
    return-void
.end method

.method private updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 468
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v2, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 469
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 474
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    .line 475
    .local v0, "message":Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 478
    :cond_1
    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 479
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 481
    :cond_2
    iget-object v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 482
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/dialer/calllog/CallLogFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/calllog/CallLogFragment$7;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 434
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    .line 435
    return-void
.end method

.method public fetchCalls()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(II)V

    .line 542
    return-void
.end method

.method getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 250
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 258
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 259
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/dialer/calllog/CallLogFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/android/dialer/calllog/CallLogFragment$4;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    .line 275
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 276
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 228
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 231
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 233
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    invoke-virtual {p0, v3}, Lcom/android/dialer/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 238
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 556
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 557
    const v0, 0x7f0e0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 558
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 317
    const v5, 0x7f040006

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 318
    .local v4, "view":Landroid/view/View;
    new-instance v5, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v5}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    .line 319
    const v5, 0x7f0a001b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    .line 320
    const v5, 0x7f0a0049

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    .line 321
    const v5, 0x7f0a004a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    .line 322
    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFilterStatusView:Landroid/widget/TextView;

    .line 324
    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->allCallTypeBut:Landroid/widget/RadioButton;

    .line 325
    const v5, 0x7f0a0039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->inCallTypeBut:Landroid/widget/RadioButton;

    .line 326
    const v5, 0x7f0a003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->outCallTypeBut:Landroid/widget/RadioButton;

    .line 327
    const v5, 0x7f0a003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->missCallTypeBut:Landroid/widget/RadioButton;

    .line 328
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->allCallTypeBut:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->callTypeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->inCallTypeBut:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->callTypeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->outCallTypeBut:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->callTypeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->missCallTypeBut:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->callTypeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v5, 0x7f0a003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeList:Landroid/widget/Spinner;

    .line 334
    const v5, 0x7f0a003d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCardTypeList:Landroid/widget/Spinner;

    .line 335
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeList:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->callItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 336
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCardTypeList:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->cardItemListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 338
    const v5, 0x7f0a0037

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->slotList:Landroid/widget/ImageView;

    .line 339
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 340
    const v5, 0x7f0a0036

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCardTypeList:Landroid/widget/Spinner;

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 357
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateSubImage()V

    .line 358
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "save_calltype"

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 359
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "calltype"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 360
    iget v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v5}, Lcom/android/dialer/calllog/CallLogFragment;->setAudioButtonChecked(I)V

    .line 361
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeList:Landroid/widget/Spinner;

    iget v6, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 363
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->slotList:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/dialer/calllog/CallLogFragment$5;

    invoke-direct {v6, p0}, Lcom/android/dialer/calllog/CallLogFragment$5;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    return-object v4

    .line 345
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCardTypeList:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPhoneCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v0, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 353
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 354
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCardTypeList:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 527
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateAndSubNameObserver:Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateAndSubNameObserver:Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 529
    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateAndSubNameObserver:Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 536
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->unregisterPhoneCallReceiver()V

    .line 537
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 628
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", position->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/IntentProvider;

    .line 630
    .local v0, "intentProvider":Lcom/android/dialer/calllog/IntentProvider;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    .line 633
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 579
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 592
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 582
    :pswitch_0
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->onDelCallLog()V

    goto :goto_0

    .line 586
    :pswitch_1
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->registerPhoneCallReceiver()V

    .line 587
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 588
    invoke-direct {p0, v2}, Lcom/android/dialer/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00b3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 512
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 515
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v4, 0x7f0a00b3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 562
    const v1, 0x7f0a00b4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 565
    .local v0, "itemDeleteAll":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 568
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-nez v1, :cond_0

    .line 572
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 575
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 566
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 459
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mChangeEnabled:Z

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mChangeEnabled:Z

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    .line 465
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 441
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 443
    iput-boolean v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 445
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateAndSubNameObserver:Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateAndSubNameObserver:Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateAndSubNameObserver:Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 453
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 520
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    .line 521
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 414
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "currentCountryIso":Ljava/lang/String;
    new-instance v1, Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0, v3}, Lcom/android/dialer/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    .line 418
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 421
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 284
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V

    .line 289
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    .line 290
    .local v0, "activeSources":I
    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setVoicemailSourcesAvailable(Z)V

    .line 291
    invoke-static {p1}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 292
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    .line 293
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    .line 290
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setMenuVisibility(Z)V

    .line 638
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 639
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    .line 640
    if-nez p1, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    goto :goto_0
.end method

.method protected showSlotChangeDialog()V
    .locals 4

    .prologue
    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/dialer/calllog/MultiSlotAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/calllog/MultiSlotAdapter;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->slotListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08018a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 376
    return-void
.end method

.method public startCallsQuery()V
    .locals 3

    .prologue
    .line 545
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 547
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(II)V

    .line 548
    return-void
.end method
