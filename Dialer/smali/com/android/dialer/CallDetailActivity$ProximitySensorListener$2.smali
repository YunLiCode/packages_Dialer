.class Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;->this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;->this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "blankView":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$2;->this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v1}, Lcom/android/dialer/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 180
    return-void
.end method
