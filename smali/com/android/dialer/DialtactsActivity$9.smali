.class Lcom/android/dialer/DialtactsActivity$9;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    .line 505
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$9;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 509
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 510
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$9;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->addSearchFragment()V
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1700(Lcom/android/dialer/DialtactsActivity;)V

    .line 511
    return-void
.end method
