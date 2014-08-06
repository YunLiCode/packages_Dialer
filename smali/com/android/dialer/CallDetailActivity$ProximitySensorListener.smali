.class Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field private final mBlankRunnable:Ljava/lang/Runnable;

.field private final mUnblankRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;-><init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;-><init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/CallDetailActivity;Lcom/android/dialer/CallDetailActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/CallDetailActivity;
    .param p2, "x1"    # Lcom/android/dialer/CallDetailActivity$1;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/dialer/CallDetailActivity;)V

    return-void
.end method

.method private declared-synchronized postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "blankView":Landroid/view/View;
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 208
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clearPendingRequests()V
    .locals 3

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "blankView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 199
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 197
    .end local v0    # "blankView":Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onFar()V
    .locals 3

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 192
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mUnblankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 3

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 186
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->mBlankRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
