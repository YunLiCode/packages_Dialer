.class Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->updateData([Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateContactDetailsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/dialer/PhoneCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;

.field final synthetic val$callUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 416
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->doInBackground([Ljava/lang/Void;)[Lcom/android/dialer/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)[Lcom/android/dialer/PhoneCallDetails;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 421
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    array-length v3, v4

    .line 422
    .local v3, "numCalls":I
    new-array v0, v3, [Lcom/android/dialer/PhoneCallDetails;

    .line 424
    .local v0, "details":[Lcom/android/dialer/PhoneCallDetails;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 425
    :try_start_0
    iget-object v4, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v5, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->val$callUris:[Landroid/net/Uri;

    aget-object v5, v5, v2

    # invokes: Lcom/android/dialer/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;
    invoke-static {v4, v5}, Lcom/android/dialer/CallDetailActivity;->access$300(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)Lcom/android/dialer/PhoneCallDetails;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CallDetail"

    const-string v5, "invalid URI starting call details"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    const/4 v0, 0x0

    .end local v0    # "details":[Lcom/android/dialer/PhoneCallDetails;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 416
    check-cast p1, [Lcom/android/dialer/PhoneCallDetails;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/dialer/PhoneCallDetails;)V

    return-void
.end method

.method public onPostExecute([Lcom/android/dialer/PhoneCallDetails;)V
    .locals 22
    .param p1, "details"    # [Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f08014d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 623
    :goto_0
    return-void

    .line 447
    :cond_0
    const/4 v2, 0x0

    aget-object v13, p1, v2

    .line 448
    .local v13, "firstDetails":Lcom/android/dialer/PhoneCallDetails;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v13, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$402(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    iget-object v10, v13, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 450
    .local v10, "contactUri":Landroid/net/Uri;
    iget-object v0, v13, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    .line 452
    .local v21, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v13, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    # invokes: Lcom/android/dialer/CallDetailActivity;->updateTitle(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$500(Lcom/android/dialer/CallDetailActivity;Ljava/lang/String;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$700(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/PhoneCallDetailsHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/android/dialer/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetails;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 458
    .local v8, "canPlaceCallsTo":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v16

    .line 459
    .local v16, "isVoicemailNumber":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 468
    .local v15, "isSipNumber":Z
    iget-object v2, v13, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 469
    iget-object v0, v13, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 474
    .local v20, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v10, :cond_4

    .line 475
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 478
    .local v19, "mainActionIntent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    const v18, 0x7f02005d

    .line 481
    .local v18, "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f08015c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 514
    .local v17, "mainActionDescription":Ljava/lang/String;
    :goto_2
    if-nez v19, :cond_8

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :goto_3
    if-eqz v8, :cond_a

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    iget-object v3, v13, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v4, v13, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 540
    .local v11, "displayNumber":Ljava/lang/CharSequence;
    new-instance v12, Lcom/android/dialer/CallDetailActivity$ViewEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f080161

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    # invokes: Lcom/android/dialer/CallDetailActivity;->forceLeftToRight(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v11}, Lcom/android/dialer/CallDetailActivity;->access$1200(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v5, 0x7f08015d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v2, v3, v4}, Lcom/android/dialer/CallDetailActivity$ViewEntry;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    .line 547
    .local v12, "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    iget-object v2, v13, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v13, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v13, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v2, v2, Lcom/android/dialer/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget v3, v13, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    iget-object v4, v13, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v12, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 556
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$800(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canSendSmsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    const v2, 0x7f0200a5

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v5, 0x7f08015e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 564
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/util/FeatureQuery;->isVTSupported()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 565
    const v2, 0x7f02004d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/CallUtil;->getVTCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v5, 0x7f0800f3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setThirdAction(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 575
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->configureCallButton(Lcom/android/dialer/CallDetailActivity$ViewEntry;)V
    invoke-static {v2, v12}, Lcom/android/dialer/CallDetailActivity;->access$1300(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$ViewEntry;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v11}, Lcom/android/dialer/CallDetailActivity;->access$1402(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v3, v12, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1502(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 584
    .end local v11    # "displayNumber":Ljava/lang/CharSequence;
    .end local v12    # "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    if-eqz v8, :cond_b

    if-nez v15, :cond_b

    if-nez v16, :cond_b

    const/4 v2, 0x1

    :goto_6
    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z
    invoke-static {v3, v2}, Lcom/android/dialer/CallDetailActivity;->access$1702(Lcom/android/dialer/CallDetailActivity;Z)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v3

    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasTrashOption:Z
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1802(Lcom/android/dialer/CallDetailActivity;Z)Z

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :goto_7
    # setter for: Lcom/android/dialer/CallDetailActivity;->mHasRemoveFromCallLogOption:Z
    invoke-static {v3, v2}, Lcom/android/dialer/CallDetailActivity;->access$2002(Lcom/android/dialer/CallDetailActivity;Z)Z

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v2}, Lcom/android/dialer/CallDetailActivity;->invalidateOptionsMenu()V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a0019

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    .line 591
    .local v14, "historyList":Landroid/widget/ListView;
    new-instance v2, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    iget-object v4, v4, Lcom/android/dialer/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;
    invoke-static {v5}, Lcom/android/dialer/CallDetailActivity;->access$2100(Lcom/android/dialer/CallDetailActivity;)Lcom/android/dialer/calllog/CallTypeHelper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->hasVoicemail()Z
    invoke-static {v6}, Lcom/android/dialer/CallDetailActivity;->access$1900(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v9, 0x7f0a001a

    invoke-virtual {v6, v9}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/dialer/calllog/CallTypeHelper;[Lcom/android/dialer/PhoneCallDetails;ZZLandroid/view/View;)V

    invoke-virtual {v14, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 595
    new-instance v2, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;-><init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;)V

    invoke-static {v2, v14}, Lcom/android/dialer/BackScrollManager;->bind(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    move-object/from16 v0, v21

    # invokes: Lcom/android/dialer/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;Lcom/android/dialer/PhoneCallDetails;)V
    invoke-static {v2, v0, v13}, Lcom/android/dialer/CallDetailActivity;->access$2200(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;Lcom/android/dialer/PhoneCallDetails;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 471
    .end local v14    # "historyList":Landroid/widget/ListView;
    .end local v17    # "mainActionDescription":Ljava/lang/String;
    .end local v18    # "mainActionIcon":I
    .end local v19    # "mainActionIntent":Landroid/content/Intent;
    .end local v20    # "nameOrNumber":Ljava/lang/CharSequence;
    :cond_3
    iget-object v0, v13, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .restart local v20    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 483
    :cond_4
    if-eqz v16, :cond_5

    .line 484
    const/16 v19, 0x0

    .line 485
    .restart local v19    # "mainActionIntent":Landroid/content/Intent;
    const/16 v18, 0x0

    .line 486
    .restart local v18    # "mainActionIcon":I
    const/16 v17, 0x0

    .restart local v17    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 487
    .end local v17    # "mainActionDescription":Ljava/lang/String;
    .end local v18    # "mainActionIcon":I
    .end local v19    # "mainActionIntent":Landroid/content/Intent;
    :cond_5
    if-eqz v15, :cond_6

    .line 497
    const/16 v19, 0x0

    .line 498
    .restart local v19    # "mainActionIntent":Landroid/content/Intent;
    const/16 v18, 0x0

    .line 499
    .restart local v18    # "mainActionIcon":I
    const/16 v17, 0x0

    .restart local v17    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 500
    .end local v17    # "mainActionDescription":Ljava/lang/String;
    .end local v18    # "mainActionIcon":I
    .end local v19    # "mainActionIntent":Landroid/content/Intent;
    :cond_6
    if-eqz v8, :cond_7

    .line 501
    new-instance v19, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .restart local v19    # "mainActionIntent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v2, "phone"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const v18, 0x7f020046

    .line 505
    .restart local v18    # "mainActionIcon":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v3, 0x7f08015b

    invoke-virtual {v2, v3}, Lcom/android/dialer/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 509
    .end local v17    # "mainActionDescription":Ljava/lang/String;
    .end local v18    # "mainActionIcon":I
    .end local v19    # "mainActionIntent":Landroid/content/Intent;
    :cond_7
    const/16 v19, 0x0

    .line 510
    .restart local v19    # "mainActionIntent":Landroid/content/Intent;
    const/16 v18, 0x0

    .line 511
    .restart local v18    # "mainActionIcon":I
    const/16 v17, 0x0

    .restart local v17    # "mainActionDescription":Ljava/lang/String;
    goto/16 :goto_2

    .line 520
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$900(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageView;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    new-instance v3, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$1;-><init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1000(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$600(Lcom/android/dialer/CallDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1100(Lcom/android/dialer/CallDetailActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 570
    .restart local v11    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v12    # "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    :cond_9
    const v2, 0x7f020078

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # getter for: Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/dialer/CallDetailActivity;->access$400(Lcom/android/dialer/CallDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/CallUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v5, 0x7f0800f4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/dialer/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v3, v4}, Lcom/android/dialer/CallDetailActivity$ViewEntry;->setThirdAction(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 579
    .end local v11    # "displayNumber":Ljava/lang/CharSequence;
    .end local v12    # "entry":Lcom/android/dialer/CallDetailActivity$ViewEntry;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->disableCallButton()V
    invoke-static {v2}, Lcom/android/dialer/CallDetailActivity;->access$1600(Lcom/android/dialer/CallDetailActivity;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v3, 0x0

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1402(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const/4 v3, 0x0

    # setter for: Lcom/android/dialer/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Lcom/android/dialer/CallDetailActivity;->access$1502(Lcom/android/dialer/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 584
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 587
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_7
.end method
