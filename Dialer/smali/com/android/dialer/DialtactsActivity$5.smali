.class Lcom/android/dialer/DialtactsActivity$5;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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
    .line 428
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->enterSearchUi()V
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1300(Lcom/android/dialer/DialtactsActivity;)V

    .line 432
    const/4 v0, 0x1

    return v0
.end method
