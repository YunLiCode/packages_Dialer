.class Lcom/android/dialer/DialtactsActivity$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactListFilterController$ContactListFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactListFilterChanged()V
    .locals 3

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "doInvalidateOptionsMenu":Z
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;
    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->access$600(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;
    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->access$600(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/dialer/list/PhoneFavoriteFragment;
    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->access$600(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/PhoneFavoriteFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$700(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 319
    const/4 v0, 0x1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/common/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->access$700(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactListFilterController;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    .line 324
    const/4 v0, 0x1

    .line 329
    :goto_0
    if-eqz v0, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$1;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity;->invalidateOptionsMenu()V

    .line 332
    :cond_1
    return-void

    .line 326
    :cond_2
    const-string v1, "DialtactsActivity"

    const-string v2, "Search Fragment isn\'t available when ContactListFilter is changed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
