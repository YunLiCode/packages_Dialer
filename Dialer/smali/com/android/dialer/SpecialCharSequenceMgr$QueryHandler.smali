.class Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field private mCanceled:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 770
    invoke-direct {p0, p1}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 771
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z

    .line 818
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V

    .line 819
    return-void
.end method

.method protected onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 779
    const/4 v5, 0x0

    # setter for: Lcom/android/dialer/SpecialCharSequenceMgr;->sPreviousAdnQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    invoke-static {v5}, Lcom/android/dialer/SpecialCharSequenceMgr;->access$002(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;)Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 780
    iget-boolean v5, p0, Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;->mCanceled:Z

    if-eqz v5, :cond_0

    .line 812
    :goto_0
    return-void

    :cond_0
    move-object v3, p2

    .line 784
    check-cast v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    .line 787
    .local v3, "sc":Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;
    iget-object v5, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 790
    invoke-virtual {v3}, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->getTextField()Landroid/widget/EditText;

    move-result-object v4

    .line 792
    .local v4, "text":Landroid/widget/EditText;
    iget-object v5, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 796
    .local v0, "context":Landroid/content/Context;
    if-eqz p3, :cond_1

    if-eqz v4, :cond_1

    iget v5, v3, Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 797
    const-string v5, "name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "name":Ljava/lang/String;
    const-string v5, "number"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v7, v7, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 804
    const v5, 0x7f080161

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 809
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    const v5, 0x7f080187

    invoke-static {v0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
