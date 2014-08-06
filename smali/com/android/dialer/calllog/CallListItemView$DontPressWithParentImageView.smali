.class Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;
.super Landroid/widget/ImageView;
.source "CallListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DontPressWithParentImageView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method
