.class public Lcom/android/dialer/multichoice/MultiPickCallsFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "MultiPickCallsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionCode:I

.field private mCheckedItems:Landroid/os/Bundle;

.field private mChoiceView:Landroid/view/View;

.field private mEmptyView:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectedItemsFormatter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/dialer/multichoice/MultiPickCallsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/multichoice/MultiPickCallsFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private assembleValues(JI)V
    .locals 5
    .param p1, "uniqueId"    # J
    .param p3, "position"    # I

    .prologue
    .line 281
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v1, "values":Landroid/content/ContentValues;
    iget v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mActionCode:I

    if-nez v2, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/multichoice/CallsListAdapter;

    .line 284
    .local v0, "adapter":Lcom/android/dialer/multichoice/CallsListAdapter;
    sget-object v2, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p3}, Lcom/android/dialer/multichoice/CallsListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v2, "number"

    invoke-virtual {v0, p3}, Lcom/android/dialer/multichoice/CallsListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v0    # "adapter":Lcom/android/dialer/multichoice/CallsListAdapter;
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 289
    return-void
.end method

.method private showConfirmDialog(II)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "msgId"    # I

    .prologue
    .line 353
    new-instance v0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment$1;-><init>(Lcom/android/dialer/multichoice/MultiPickCallsFragment;I)V

    .line 366
    .local v0, "okClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 374
    return-void
.end method

.method private updateListCheckState(Z)V
    .locals 5
    .param p1, "selectAll"    # Z

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 233
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 234
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->assembleValues(JI)V

    .line 234
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->updateSelectedItemsView(I)V

    .line 243
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 146
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 147
    invoke-super {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 148
    invoke-super {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    .line 151
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 153
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 156
    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 157
    invoke-virtual {v0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mChoiceView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 131
    sget-object v1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createListAdapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Lcom/android/dialer/multichoice/CallsListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/multichoice/CallsListAdapter;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, "adapter":Lcom/android/contacts/common/list/ContactEntryListAdapter;
    iget v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mActionCode:I

    if-nez v1, :cond_0

    move-object v1, v0

    .line 134
    check-cast v1, Lcom/android/dialer/multichoice/CallsListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/dialer/multichoice/CallsListAdapter;->setPickUnique(Z)V

    .line 137
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 139
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 140
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 141
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mSelectedItemsFormatter:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->updateSelectedItemsView()V

    .line 68
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 69
    return-void
.end method

.method public onClearSelect()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->updateListCheckState(Z)V

    .line 190
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mChoiceView:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/common/list/LetterListView;

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/LetterListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/LetterListView;->setLetterBarEnabled(Z)V

    .line 90
    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onDetach()V

    .line 57
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 60
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 165
    sget-object v0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onItemClick(2)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
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
    .line 170
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 171
    .local v0, "isChecked":Z
    sget-object v1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick(4): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 173
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 174
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->updateSelectedItemsView(I)V

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p4, p5, p3}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->assembleValues(JI)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .param p2, "data"    # Landroid/database/Cursor;
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 94
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 95
    :cond_0
    iget-object v10, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v10, :cond_1

    .line 96
    iget-object v10, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_1
    iget-object v10, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mChoiceView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->clearChoices()V

    .line 112
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 114
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 115
    .local v1, "checkedCount":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 116
    .local v2, "dataCount":I
    const/4 v7, 0x0

    .local v7, "position":I
    :goto_1
    if-ge v7, v2, :cond_5

    .line 117
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 119
    .local v8, "uniqueId":J
    iget-object v10, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 120
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v7, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 116
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "checkedCount":I
    .end local v2    # "dataCount":I
    .end local v7    # "position":I
    .end local v8    # "uniqueId":J
    :cond_2
    iget-object v10, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v10, :cond_3

    .line 101
    iget-object v10, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_3
    iget-object v10, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mChoiceView:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 105
    .local v3, "list":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060026

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 106
    .local v4, "padding":I
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    .line 107
    .local v5, "paddingLeft":I
    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v6

    .line 108
    .local v6, "paddingRight":I
    invoke-virtual {v3, v5, v4, v6, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_0

    .line 123
    .end local v3    # "list":Landroid/widget/ListView;
    .end local v4    # "padding":I
    .end local v5    # "paddingLeft":I
    .end local v6    # "paddingRight":I
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "checkedCount":I
    .restart local v2    # "dataCount":I
    .restart local v7    # "position":I
    .restart local v8    # "uniqueId":J
    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, v7, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 126
    .end local v8    # "uniqueId":J
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->updateSelectedItemsView(I)V

    .line 127
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionAction()V
    .locals 4

    .prologue
    .line 194
    sget-object v1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionAction("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckedItems.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080179

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 212
    :goto_0
    return-void

    .line 202
    :cond_0
    iget v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mActionCode:I

    if-nez v1, :cond_2

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :cond_2
    iget v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mActionCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 207
    const v1, 0x7f080175

    const v2, 0x7f08017b

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->showConfirmDialog(II)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    const-string v0, "checked_items"

    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 219
    return-void
.end method

.method public onSelectAll()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->updateListCheckState(Z)V

    .line 185
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 224
    if-nez p1, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "checked_items"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setActionCode(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mActionCode:I

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->setRetainInstance(Z)V

    .line 52
    return-void
.end method

.method public updateSelectedItemsView()V
    .locals 8

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 268
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 269
    .local v1, "checkedCount":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 270
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 271
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 272
    .local v4, "uniqueId":J
    iget-object v6, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 270
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    .end local v4    # "uniqueId":J
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->updateSelectedItemsView(I)V

    .line 278
    return-void
.end method

.method public updateSelectedItemsView(I)V
    .locals 5
    .param p1, "checkedCount"    # I

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    .local v0, "selectedItemsView":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 253
    sget-object v1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Load view resource error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mSelectedItemsFormatter:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 257
    sget-object v1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Load string resource error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mSelectedItemsFormatter:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
