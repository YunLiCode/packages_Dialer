.class public Lcom/android/dialer/list/PhoneFavoriteFragment;
.super Landroid/app/Fragment;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$AllContactsLoaderListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;,
        Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;
    }
.end annotation


# static fields
.field private static LOADER_ID_ALL_CONTACTS:I

.field private static LOADER_ID_CONTACT_TILE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

.field private mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

.field private mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

.field private mAllContactsForceReload:Z

.field private final mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mAllContactsLoaderStarted:Z

.field private mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsPreferenceChangeListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private final mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

.field private mLoadingView:Landroid/view/View;

.field private mOptionsMenuHasFrequents:Z

.field private final mScrollListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    sput v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    .line 79
    const/4 v0, 0x2

    sput v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 216
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteFragment$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    .line 260
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 262
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 264
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$AllContactsLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$AllContactsLoaderListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 266
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 267
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    .line 269
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/dialer/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/list/PhoneFavoriteFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/contacts/common/list/PhoneNumberListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dialer/list/PhoneFavoriteFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/dialer/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private hasFrequents()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getNumFrequents()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 386
    :cond_0
    return-void
.end method

.method private isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactsPreferences()Z
    .locals 4

    .prologue
    .line 497
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    if-nez v3, :cond_2

    .line 498
    :cond_0
    const/4 v0, 0x0

    .line 514
    :cond_1
    :goto_0
    return v0

    .line 501
    :cond_2
    const/4 v0, 0x0

    .line 502
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    .line 503
    .local v1, "currentDisplayOrder":I
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 504
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setContactNameDisplayOrder(I)V

    .line 505
    const/4 v0, 0x1

    .line 508
    :cond_3
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    .line 509
    .local v2, "currentSortOrder":I
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 510
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setSortOrder(I)V

    .line 511
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestReloadAllContacts()V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    if-nez v0, :cond_1

    .line 531
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->onDataReload()V

    .line 539
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 3

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 544
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 486
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    sget-object v0, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 278
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 284
    new-instance v0, Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-object v3, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    .line 287
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 290
    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-direct {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    .line 291
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setQuickContactEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setSearchMode(Z)V

    .line 294
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setIncludeProfile(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setSelectionVisible(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDarkTheme(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 299
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setHasHeader(IZ)V

    .line 301
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-static {v5}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 311
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setContactNameDisplayOrder(I)V

    .line 314
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setSortOrder(I)V

    .line 315
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 321
    if-eqz p1, :cond_0

    .line 322
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 324
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 328
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setHasOptionsMenu(Z)V

    .line 329
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 390
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 391
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 392
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 340
    const v0, 0x7f040024

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 343
    .local v6, "listLayout":Landroid/view/View;
    const v0, 0x7f0a0092

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    .line 344
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 348
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 351
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    .line 352
    const v0, 0x7f040001

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 354
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 357
    const v0, 0x7f040026

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    .line 359
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/common/list/ContactEntryListAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    .line 363
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 369
    const v0, 0x7f0a0093

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    .line 370
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0800d0

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 373
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    .line 375
    return-object v6
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 472
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 473
    .local v0, "contactTileAdapterCount":I
    if-gt p3, v0, :cond_1

    .line 474
    sget-object v2, Lcom/android/dialer/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick() event for unexpected position. The position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is before \"all\" section. Ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v2

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    .line 478
    .local v1, "localPosition":I
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 410
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 431
    :goto_0
    return v0

    .line 416
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/dialer/DialtactsActivity;

    invoke-static {v1, v0, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;)V

    goto :goto_0

    .line 420
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    const-string v3, "authorities"

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "com.android.contacts"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const/high16 v1, 0x80000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v2}, Lcom/android/dialer/list/PhoneFavoriteFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 428
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x7f0a00c5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 396
    const v1, 0x7f0a00c6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 397
    .local v0, "clearFrequents":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    .line 399
    if-eqz v0, :cond_0

    .line 400
    iget-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 335
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 436
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 438
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    .line 442
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iput-boolean v4, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/dialer/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 454
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 456
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 460
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 461
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 462
    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    :cond_1
    :goto_0
    return-void

    .line 564
    :cond_2
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 566
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 568
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    .line 569
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    .line 575
    return-void
.end method
