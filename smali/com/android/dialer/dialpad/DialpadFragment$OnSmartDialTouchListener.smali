.class Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialTouchListener;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSmartDialTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 2213
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialTouchListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p2, "x1"    # Lcom/android/dialer/dialpad/DialpadFragment$1;

    .prologue
    .line 2213
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialTouchListener;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 2217
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialTouchListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    .line 2218
    return v1
.end method
