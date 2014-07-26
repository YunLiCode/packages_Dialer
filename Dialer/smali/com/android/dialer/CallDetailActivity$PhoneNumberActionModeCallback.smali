.class Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberActionModeCallback"
.end annotation


# instance fields
.field private final mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

.field private final mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/CallDetailActivity;Landroid/view/View;)V
    .locals 3
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    .line 1001
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    .line 1002
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/dialer/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1003
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1020
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1027
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1022
    :pswitch_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1500(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$1400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1024
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00ae
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$1400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1010
    :goto_0
    return v0

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1010
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/dialer/CallDetailActivity;->access$2302(Lcom/android/dialer/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1035
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->mTargetView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$PhoneNumberActionModeCallback;->mOriginalViewBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1036
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1015
    const/4 v0, 0x1

    return v0
.end method
