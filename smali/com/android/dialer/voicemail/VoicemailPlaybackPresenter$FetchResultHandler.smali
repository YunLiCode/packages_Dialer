.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;
.super Landroid/database/ContentObserver;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchResultHandler"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 250
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 251
    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mHandler:Landroid/os/Handler;

    .line 252
    return-void
.end method

.method static synthetic access$400(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 269
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    :cond_0
    return-void
.end method

.method public getTimeoutRunnable()Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 255
    return-object p0
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$500(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 262
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    # getter for: Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setFetchContentTimeout()V

    .line 264
    :cond_0
    return-void
.end method
