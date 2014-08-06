.class Lcom/android/dialer/DialtactsActivity$7;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 465
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 479
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$800(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 482
    :cond_0
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 469
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/android/dialer/DialtactsActivity;->access$1500(Lcom/android/dialer/DialtactsActivity;Landroid/view/View;)V

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 473
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
