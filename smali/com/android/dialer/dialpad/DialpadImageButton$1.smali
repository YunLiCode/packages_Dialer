.class Lcom/android/dialer/dialpad/DialpadImageButton$1;
.super Ljava/lang/Object;
.source "DialpadImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadImageButton;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadImageButton;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadImageButton$1;->this$0:Lcom/android/dialer/dialpad/DialpadImageButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton$1;->this$0:Lcom/android/dialer/dialpad/DialpadImageButton;

    const/4 v1, 0x1

    # setter for: Lcom/android/dialer/dialpad/DialpadImageButton;->isLongClicked:Z
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadImageButton;->access$002(Lcom/android/dialer/dialpad/DialpadImageButton;Z)Z

    .line 74
    const-string v0, "DialpadImageButton"

    const-string v1, "isLongClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
