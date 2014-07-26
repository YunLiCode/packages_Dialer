.class public Lcom/android/dialer/multichoice/MultiPickCallsActivity;
.super Landroid/app/Activity;
.source "MultiPickCallsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showActionBar()V
    .locals 6

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 123
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040023

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "customActionBarView":Landroid/view/View;
    const v4, 0x7f0a0090

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 127
    .local v2, "doneMenuItem":Landroid/widget/ImageButton;
    new-instance v4, Lcom/android/dialer/multichoice/MultiPickCallsActivity$1;

    invoke-direct {v4, p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity$1;-><init>(Lcom/android/dialer/multichoice/MultiPickCallsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 140
    return-void
.end method


# virtual methods
.method public configureListFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    sget-object v0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureListFragment mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-direct {v0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    iget v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->setActionCode(I)V

    .line 149
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-virtual {v0, v3}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->setLegacyCompatibilityMode(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->setVisibleScrollbarEnabled(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a004b

    iget-object v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 155
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 36
    instance-of v0, p1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    .line 39
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->setResult(I)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    const-string v1, "calls_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 50
    const-string v1, "com.android.contacts.action.MULTI_PICK_CALL"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    .line 57
    :cond_1
    :goto_0
    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->configureListFragment()V

    .line 60
    invoke-direct {p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->showActionBar()V

    .line 61
    return-void

    .line 52
    :cond_2
    const-string v1, "com.android.contacts.action.MULTI_DELETE_CALLLOGS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 66
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 67
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0e0006

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    const v2, 0x7f0a00c4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 70
    .local v1, "optionItem":Landroid/view/MenuItem;
    iget v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 80
    sget-object v2, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 72
    :pswitch_0
    const v2, 0x7f02007d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 73
    const v2, 0x7f080107

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 76
    :pswitch_1
    const v2, 0x7f0200a7

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 77
    const v2, 0x7f080175

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->onSelectAll()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->onClearSelect()V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mFragment:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->onOptionAction()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->onBackPressed()V

    .line 107
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 166
    if-eqz p1, :cond_0

    .line 167
    const-string v0, "calls_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    .line 169
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string v0, "calls_mode"

    iget v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    return-void
.end method
