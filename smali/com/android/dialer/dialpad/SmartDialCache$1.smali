.class Lcom/android/dialer/dialpad/SmartDialCache$1;
.super Ljava/lang/Object;
.source "SmartDialCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/SmartDialCache;->startCachingThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/SmartDialCache;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/SmartDialCache;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialCache$1;->this$0:Lcom/android/dialer/dialpad/SmartDialCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache$1;->this$0:Lcom/android/dialer/dialpad/SmartDialCache;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCache$1;->this$0:Lcom/android/dialer/dialpad/SmartDialCache;

    # getter for: Lcom/android/dialer/dialpad/SmartDialCache;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/dialpad/SmartDialCache;->access$000(Lcom/android/dialer/dialpad/SmartDialCache;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/dialer/dialpad/SmartDialCache;->cacheContacts(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/SmartDialCache;->access$100(Lcom/android/dialer/dialpad/SmartDialCache;Landroid/content/Context;)V

    .line 397
    return-void
.end method
