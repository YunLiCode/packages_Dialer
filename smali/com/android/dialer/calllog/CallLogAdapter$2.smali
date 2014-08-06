.class Lcom/android/dialer/calllog/CallLogAdapter$2;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/IntentProvider;

    .line 207
    .local v0, "intentProvider":Lcom/android/dialer/calllog/IntentProvider;
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter$2;->this$0:Lcom/android/dialer/calllog/CallLogAdapter;

    # getter for: Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogAdapter;->access$000(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    :cond_0
    return-void
.end method
