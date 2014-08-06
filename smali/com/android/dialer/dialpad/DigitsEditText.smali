.class public Lcom/android/dialer/dialpad/DigitsEditText;
.super Landroid/widget/EditText;
.source "DigitsEditText.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDefaultTextSize:F

.field private mDefaultTextWidth:F

.field private mMinTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/dialer/dialpad/DigitsEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/DigitsEditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DigitsEditText;->setInputType(I)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DigitsEditText;->setShowSoftInputOnFocus(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mDefaultTextSize:F

    .line 53
    iget v0, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mDefaultTextSize:F

    const/high16 v1, 0x3fc00000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mMinTextSize:F

    .line 54
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mDefaultTextWidth:F

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DigitsEditText;->setSingleLine(Z)V

    .line 57
    invoke-direct {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->addMaxLengthFilter()V

    .line 58
    return-void
.end method

.method private addMaxLengthFilter()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    .line 62
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 63
    .local v1, "orgFilters":[Landroid/text/InputFilter;
    if-eqz v1, :cond_0

    .line 64
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    .line 65
    .local v0, "newFilters":[Landroid/text/InputFilter;
    array-length v2, v1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/DigitsEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 70
    return-void

    .line 67
    .end local v0    # "newFilters":[Landroid/text/InputFilter;
    :cond_0
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .restart local v0    # "newFilters":[Landroid/text/InputFilter;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lcom/android/dialer/dialpad/DigitsEditText;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 77
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 80
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 97
    const-string v0, "size changed"

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/DigitsEditText;->log(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/dialer/dialpad/DigitsEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 99
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    .line 103
    const-string v4, "text changed"

    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DigitsEditText;->log(Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 108
    .local v1, "textLength":I
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 109
    .local v3, "textWidth":F
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mDefaultTextWidth:F

    div-float v0, v4, v5

    .line 110
    .local v0, "maxTextCount":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mDefaultTextSize:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DigitsEditText;->log(Ljava/lang/String;)V

    .line 111
    int-to-float v4, v1

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_3

    .line 112
    iget v4, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mDefaultTextSize:F

    invoke-virtual {p0, v6, v4}, Lcom/android/dialer/dialpad/DigitsEditText;->setTextSize(IF)V

    goto :goto_0

    .line 120
    .local v2, "textSize":F
    :cond_2
    invoke-virtual {p0, v6, v2}, Lcom/android/dialer/dialpad/DigitsEditText;->setTextSize(IF)V

    .line 121
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 114
    .end local v2    # "textSize":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getTextSize()F

    move-result v4

    add-float v2, v4, v7

    .line 116
    .restart local v2    # "textSize":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "textSize(1):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DigitsEditText;->log(Ljava/lang/String;)V

    .line 117
    iget v4, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mDefaultTextSize:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 123
    .end local v2    # "textSize":F
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getTextSize()F

    move-result v4

    sub-float v2, v4, v7

    .line 125
    .restart local v2    # "textSize":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "textSize(2):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/dialer/dialpad/DigitsEditText;->log(Ljava/lang/String;)V

    .line 126
    iget v4, p0, Lcom/android/dialer/dialpad/DigitsEditText;->mMinTextSize:F

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_0

    .line 129
    invoke-virtual {p0, v6, v2}, Lcom/android/dialer/dialpad/DigitsEditText;->setTextSize(IF)V

    .line 130
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 131
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 86
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    :cond_0
    return v1
.end method
