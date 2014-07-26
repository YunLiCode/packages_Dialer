.class public Lcom/android/dialer/dialpad/DialpadImageButton;
.super Landroid/widget/ImageButton;
.source "DialpadImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;
    }
.end annotation


# instance fields
.field private volatile isLongClicked:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mHoverBounds:Landroid/graphics/Rect;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mOnPressedListener:Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->isLongClicked:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->isLongClicked:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/android/dialer/dialpad/DialpadImageButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dialer/dialpad/DialpadImageButton;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->isLongClicked:Z

    return p1
.end method

.method private initForAccessibility(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v0, Lcom/android/dialer/dialpad/DialpadImageButton$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/dialpad/DialpadImageButton$1;-><init>(Lcom/android/dialer/dialpad/DialpadImageButton;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 78
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 80
    return-void
.end method

.method private simulateClickForAccessibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadImageButton;->setPressed(Z)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/dialer/dialpad/DialpadImageButton;->sendAccessibilityEvent(I)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadImageButton;->setPressed(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/dialer/dialpad/DialpadImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 141
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadImageButton;->setClickable(Z)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->simulateClickForAccessibility()V

    .line 147
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DialpadImageButton;->setClickable(Z)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 116
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 117
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 118
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 119
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 120
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DialpadImageButton;->simulateClickForAccessibility()V

    .line 126
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPressedListener(Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;)V
    .locals 0
    .param p1, "onPressedListener"    # Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;

    .line 54
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 98
    const-string v0, "DialpadImageButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPressed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 101
    if-nez p1, :cond_0

    .line 102
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->isLongClicked:Z

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->isLongClicked:Z

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "DialpadImageButton"

    const-string v1, "press complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;

    invoke-interface {v0, p0}, Lcom/android/dialer/dialpad/DialpadImageButton$OnPressedListener;->onPressComplete(Landroid/view/View;)V

    goto :goto_0
.end method
