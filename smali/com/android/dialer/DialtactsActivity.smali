.class public Lcom/android/dialer/DialtactsActivity;
.super Lcom/android/contacts/common/activity/TransactionSafeActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/DialtactsActivity$PageChangeListener;,
        Lcom/android/dialer/DialtactsActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static show4TabsPhone:Z


# instance fields
.field private mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

.field private final mContactListFilterListener:Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

.field private mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field mDuringSwipe:Z

.field private mEmptyContactsFragment:Landroid/app/Fragment;

.field private final mFilterOptionClickListener:Landroid/view/View$OnClickListener;

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private final mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private mMenuButton:Landroid/view/View;

.field private final mPageChangeListener:Lcom/android/dialer/DialtactsActivity$PageChangeListener;

.field private mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

.field private final mPhoneFavoriteListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchButton:Landroid/view/View;

.field private mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

.field private mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field mUserTabClick:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;-><init>()V

    .line 169
    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    .line 302
    new-instance v0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/dialer/DialtactsActivity;Lcom/android/dialer/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPageChangeListener:Lcom/android/dialer/DialtactsActivity$PageChangeListener;

    .line 311
    new-instance v0, Lcom/android/dialer/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$1;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    .line 335
    new-instance v0, Lcom/android/dialer/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$2;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 394
    new-instance v0, Lcom/android/dialer/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$3;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    .line 416
    new-instance v0, Lcom/android/dialer/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$4;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 427
    new-instance v0, Lcom/android/dialer/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$5;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 440
    new-instance v0, Lcom/android/dialer/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$6;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    .line 464
    new-instance v0, Lcom/android/dialer/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$7;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 493
    new-instance v0, Lcom/android/dialer/DialtactsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$8;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 504
    new-instance v0, Lcom/android/dialer/DialtactsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$9;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 969
    new-instance v0, Lcom/android/dialer/DialtactsActivity$11;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$11;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/dialpad/DialpadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/dialer/DialtactsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/dialer/DialtactsActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->evaluateSavedTab(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->addSearchFragment()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/dialer/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/DialtactsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/DialtactsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/DialtactsActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/PhoneFavoriteFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->startTabContacts()V

    return-void
.end method

.method private addSearchFragment()V
    .locals 3

    .prologue
    .line 654
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 663
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 657
    .local v0, "ft":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;-><init>()V

    .line 659
    .local v1, "searchFragment":Landroid/app/Fragment;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 660
    const v2, 0x7f0a0084

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 661
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 662
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private enterSearchUi()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1134
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-nez v4, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v4, :cond_1

    .line 1144
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->prepareSearchView()V

    .line 1147
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1149
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 1152
    .local v2, "tab":Landroid/app/ActionBar$Tab;
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1153
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/dialer/DialtactsActivity;->evaluateSavedTab(I)I

    move-result v4

    iput v4, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1156
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1158
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1159
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1160
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1161
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1163
    invoke-direct {p0, v7}, Lcom/android/dialer/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 1165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 1166
    invoke-direct {p0, v1, v7}, Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1170
    :cond_3
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v4, v6}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1172
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1173
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1174
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1178
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1179
    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mInSearchUi:Z

    goto :goto_0
.end method

.method private evaluateSavedTab(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 293
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 294
    :cond_0
    const/4 p1, 0x0

    .line 295
    .end local p1    # "position":I
    :cond_1
    return p1
.end method

.method private exitSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1203
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1206
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-eqz v3, :cond_0

    .line 1207
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 1209
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1210
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1211
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1215
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1216
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1217
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 1220
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1220
    goto :goto_1

    .line 1224
    :cond_2
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    .line 1225
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    .line 1227
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1229
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/dialer/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 1232
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->invalidateOptionsMenu()V

    .line 1235
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 1236
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mInSearchUi:Z

    .line 1237
    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 761
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 764
    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 766
    :cond_0
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1305
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MSimCallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    :goto_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1313
    return-object v0

    .line 1308
    :cond_0
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 1240
    packed-switch p1, :pswitch_data_0

    .line 1251
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    .line 1249
    :goto_0
    return-object v0

    .line 1244
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    goto :goto_0

    .line 1246
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    goto :goto_0

    .line 1248
    :pswitch_3
    sget-boolean v0, Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mEmptyContactsFragment:Landroid/app/Fragment;

    goto :goto_0

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1192
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1193
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1196
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 899
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 909
    :cond_0
    :goto_0
    return v2

    .line 903
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 904
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 905
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 909
    .end local v1    # "data":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recentCallsRequest"    # Z

    .prologue
    const/4 v3, 0x0

    .line 811
    if-eqz p2, :cond_0

    .line 812
    const-string v4, "call_key"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 815
    .local v0, "callKey":Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 816
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    const/4 v3, 0x1

    .line 824
    .end local v0    # "callKey":Z
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 819
    .restart local v0    # "callKey":Z
    :catch_0
    move-exception v1

    .line 820
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "DialtactsActivity"

    const-string v5, "Failed to handle send while in call"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareOptionsMenuForCallLogTab(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1082
    const v0, 0x7f0a00bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1083
    const v1, 0x7f0a00bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1084
    const v2, 0x7f0a00c0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1085
    const v3, 0x7f0a00be

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1086
    const v4, 0x7f0a00c1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1089
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1090
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1092
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1093
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1094
    return-void
.end method

.method private prepareOptionsMenuForDialerTab(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1064
    const v0, 0x7f0a00bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1065
    const v1, 0x7f0a00bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1066
    const v2, 0x7f0a00c0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1067
    const v3, 0x7f0a00be

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1068
    const v4, 0x7f0a00c1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1071
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1072
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1074
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1075
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1076
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1078
    return-void
.end method

.method private prepareOptionsMenuForFavoritesTab(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1098
    const v0, 0x7f0a00bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1099
    const v1, 0x7f0a00bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1100
    const v2, 0x7f0a00c0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1101
    const v3, 0x7f0a00be

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1102
    const v4, 0x7f0a00c1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1105
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1106
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1107
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1108
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1109
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1110
    return-void
.end method

.method private prepareOptionsMenuInSearchMode(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1043
    const v0, 0x7f0a00bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1044
    const v1, 0x7f0a00bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1045
    const v2, 0x7f0a00c0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1046
    const v3, 0x7f0a00be

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1047
    const v4, 0x7f0a00c1

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1050
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1051
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1052
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1053
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1054
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1055
    return-void
.end method

.method private prepareSearchView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 668
    .local v1, "searchViewLayout":Landroid/view/View;
    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 669
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 670
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 677
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 678
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0800ce

    invoke-virtual {p0, v3}, Lcom/android/dialer/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 680
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/dialer/DialtactsActivity$10;

    invoke-direct {v3, p0}, Lcom/android/dialer/DialtactsActivity$10;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 689
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 692
    .local v0, "filterOptionView":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 696
    .end local v0    # "filterOptionView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 698
    return-void
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 1261
    if-ltz p1, :cond_0

    .line 1262
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1263
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1265
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1268
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 834
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 836
    .local v1, "recentCallsRequest":Z
    invoke-direct {p0, p1, v1}, Lcom/android/dialer/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->finish()V

    .line 866
    :goto_0
    return-void

    .line 843
    :cond_0
    iget v2, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 846
    .local v2, "savedTabIndex":I
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 847
    :cond_1
    const/4 v3, 0x0

    .line 854
    .local v3, "tabIndex":I
    :goto_1
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 855
    .local v0, "previousItemIndex":I
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 856
    if-eq v0, v3, :cond_2

    .line 857
    invoke-direct {p0, v0, v6}, Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 859
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mPageChangeListener:Lcom/android/dialer/DialtactsActivity$PageChangeListener;

    invoke-virtual {v4, v3}, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 860
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 863
    iput v2, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 864
    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    .line 865
    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    goto :goto_0

    .line 848
    .end local v0    # "previousItemIndex":I
    .end local v3    # "tabIndex":I
    :cond_3
    if-eqz v1, :cond_4

    .line 849
    const/4 v3, 0x1

    .restart local v3    # "tabIndex":I
    goto :goto_1

    .line 851
    .end local v3    # "tabIndex":I
    :cond_4
    iget v3, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    .restart local v3    # "tabIndex":I
    goto :goto_1
.end method

.method private setupCallLog()V
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 779
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 780
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 781
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 782
    return-void
.end method

.method private setupContacts()V
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 795
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 796
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 797
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 798
    return-void
.end method

.method private setupDialer()V
    .locals 2

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 771
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 772
    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 773
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 774
    return-void
.end method

.method private setupFavorites()V
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 787
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f020096

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 788
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 789
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 790
    return-void
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 944
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "filter":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 949
    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1183
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1184
    if-eqz v0, :cond_0

    .line 1185
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    const-string v0, "DialtactsActivity"

    const-string v1, "Failed to show soft input method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_0
    return-void
.end method

.method private startTabContacts()V
    .locals 4

    .prologue
    .line 280
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.FROM_DIALER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->finish()V

    .line 290
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0800f5

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->finish()V

    throw v2
.end method

.method private updateFakeMenuButtonsVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1283
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1284
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPageChangeListener:Lcom/android/dialer/DialtactsActivity$PageChangeListener;

    invoke-virtual {v2}, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v0

    .line 1285
    .local v0, "currentPosition":I
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPageChangeListener:Lcom/android/dialer/DialtactsActivity$PageChangeListener;

    invoke-virtual {v2}, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->getNextPosition()I

    move-result v1

    .line 1286
    .local v1, "nextPosition":I
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1287
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1292
    .end local v0    # "currentPosition":I
    .end local v1    # "nextPosition":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1293
    if-eqz p1, :cond_3

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1294
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    :cond_1
    :goto_1
    return-void

    .line 1289
    .restart local v0    # "currentPosition":I
    .restart local v1    # "nextPosition":I
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1296
    .end local v0    # "currentPosition":I
    .end local v1    # "nextPosition":I
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCallOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.dialer.DialtactsActivity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1318
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1321
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1323
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 1321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v4, 0x1

    .line 704
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 706
    .local v0, "currentPosition":I
    :goto_0
    instance-of v2, p1, Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v2, :cond_2

    .line 707
    check-cast p1, Lcom/android/dialer/dialpad/DialpadFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    .line 747
    :cond_0
    :goto_1
    return-void

    .line 704
    .end local v0    # "currentPosition":I
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 708
    .restart local v0    # "currentPosition":I
    :cond_2
    instance-of v2, p1, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v2, :cond_3

    .line 709
    check-cast p1, Lcom/android/dialer/calllog/CallLogFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    goto :goto_1

    .line 710
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_3
    instance-of v2, p1, Lcom/android/dialer/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_4

    .line 711
    check-cast p1, Lcom/android/dialer/list/PhoneFavoriteFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    .line 712
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setListener(Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;)V

    .line 713
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_1

    .line 717
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_4
    instance-of v2, p1, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_6

    .line 718
    check-cast p1, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    .line 719
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    .line 720
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 721
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setDarkTheme(Z)V

    .line 722
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-static {v4}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 724
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setUseCallableUri(Z)V

    .line 725
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 727
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 736
    :cond_5
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 739
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 741
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 742
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 744
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_6
    if-eqz p1, :cond_0

    .line 745
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mEmptyContactsFragment:Landroid/app/Fragment;

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 955
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    .line 967
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 965
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 636
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected onClick event from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 621
    :sswitch_0
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 625
    :sswitch_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 627
    .local v0, "popup":Landroid/widget/PopupMenu;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 631
    .end local v0    # "popup":Landroid/widget/PopupMenu;
    :cond_1
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialpadFragment is null during onClick() event for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0075 -> :sswitch_1
        0x7f0a0086 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 516
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 518
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 519
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/android/dialer/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 521
    const v5, 0x7f04001b

    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->setContentView(I)V

    .line 522
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z

    .line 524
    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    .line 525
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/list/ContactListFilterController;->addListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V

    .line 527
    const v5, 0x7f0a0084

    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 529
    const v5, 0x7f0a0085

    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 530
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/dialer/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/dialer/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/dialer/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 531
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mPageChangeListener:Lcom/android/dialer/DialtactsActivity$PageChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 532
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 535
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 536
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 537
    .local v4, "minCellSize":I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v5, v4

    .line 538
    .local v0, "cellCount":I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v2, v5, v0

    .line 542
    .local v2, "fakeMenuItemWidth":I
    const v5, 0x7f0a0075

    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    .line 543
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 544
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 545
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 547
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_0
    :goto_0
    const v5, 0x7f0a0086

    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mSearchButton:Landroid/view/View;

    .line 553
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mSearchButton:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 554
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 555
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setupDialer()V

    .line 560
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setupCallLog()V

    .line 561
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setupFavorites()V

    .line 562
    sget-boolean v5, Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setupContacts()V

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 564
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 565
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 568
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 569
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "DialtactsActivity_last_manually_selected_tab"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 571
    iget v5, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    .line 573
    iput v8, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 576
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/dialer/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 578
    const-string v5, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p1, :cond_4

    .line 580
    invoke-direct {p0, v3}, Lcom/android/dialer/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 582
    :cond_4
    return-void

    .line 549
    :cond_5
    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 987
    .local v2, "inflater":Landroid/view/MenuInflater;
    const v4, 0x7f0e0004

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 990
    const v4, 0x7f0a00be

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 991
    .local v0, "callSettingsMenuItem":Landroid/view/MenuItem;
    const v4, 0x7f0a00bd

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 992
    .local v3, "searchMenuItem":Landroid/view/MenuItem;
    const v4, 0x7f0a00bf

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 994
    .local v1, "filterOptionMenuItem":Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 995
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 996
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 998
    const/4 v4, 0x1

    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 613
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onDestroy()V

    .line 614
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListFilterController;->removeListener(Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;)V

    .line 615
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 870
    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 871
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 872
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 873
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 877
    :cond_0
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInSearchUi:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    .line 881
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_5

    .line 882
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_4

    .line 883
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 894
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->invalidateOptionsMenu()V

    .line 895
    return-void

    .line 885
    :cond_4
    const-string v1, "DialtactsActivity"

    const-string v2, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_5
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 888
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_6

    .line 889
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mCallLogFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 891
    :cond_6
    const-string v1, "DialtactsActivity"

    const-string v2, "CallLogFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1027
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1038
    invoke-super {p0, p1}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1030
    :pswitch_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    const v0, 0x7f080170

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 751
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onPause()V

    .line 753
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DialtactsActivity_last_manually_selected_tab"

    iget v2, p0, Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 755
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1003
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInSearchUi:Z

    if-eqz v1, :cond_1

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->prepareOptionsMenuInSearchMode(Landroid/view/Menu;)V

    .line 1022
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1007
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1008
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1011
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->prepareOptionsMenuForDialerTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1014
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->prepareOptionsMenuForCallLogTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1017
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->prepareOptionsMenuForFavoritesTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 586
    invoke-super {p0}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->onStart()V

    .line 587
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 594
    :cond_1
    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    if-eqz v2, :cond_3

    .line 596
    :cond_2
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    .line 597
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    .line 600
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPageChangeListener:Lcom/android/dialer/DialtactsActivity$PageChangeListener;

    invoke-virtual {v2}, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v0

    .line 605
    .local v0, "currentPosition":I
    if-nez v0, :cond_4

    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mInSearchUi:Z

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/dialer/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 606
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    .line 607
    if-ne v1, v0, :cond_5

    move v2, v3

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_4
    move v2, v4

    .line 605
    goto :goto_0

    .restart local v1    # "i":I
    :cond_5
    move v2, v4

    .line 607
    goto :goto_2

    .line 609
    :cond_6
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 1116
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    .line 1128
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    .line 1123
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 1126
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/activity/TransactionSafeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
