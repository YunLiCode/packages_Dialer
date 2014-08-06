.class Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;
.super Ljava/lang/Thread;
.source "MultiPickCallsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/multichoice/MultiPickCallsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteCallsThread"
.end annotation


# instance fields
.field mCanceled:Z

.field target:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)V
    .locals 1

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    .line 298
    const-string v0, "DeleteCallsThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->mCanceled:Z

    .line 299
    invoke-virtual {p1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    .line 300
    invoke-direct {p0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->initProgressDialog()V

    .line 301
    return-void
.end method

.method private initProgressDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 304
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    const v2, 0x7f080175

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$002(Lcom/android/dialer/multichoice/MultiPickCallsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 306
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    const v3, 0x7f08017a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 309
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 313
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 314
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$100(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 315
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 316
    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 317
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->mCanceled:Z

    .line 338
    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteCallsThread onCancel, progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 342
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->mCanceled:Z

    .line 344
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown button event has come: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 321
    iget-object v5, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 323
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mCheckedItems:Landroid/os/Bundle;
    invoke-static {v5}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$100(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 324
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 325
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    iget-boolean v5, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->mCanceled:Z

    if-nez v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    .local v0, "id":Ljava/lang/String;
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 328
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v4, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 329
    iget-object v5, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto :goto_0

    .line 331
    .end local v0    # "id":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteCallsThread run, progress:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v5, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$000(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    iget-object v5, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;->target:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 334
    :cond_1
    return-void
.end method
