.class public Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "UnicodeDialerKeyListener.java"


# static fields
.field public static final INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;->INSTANCE:Lcom/android/dialer/dialpad/UnicodeDialerKeyListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "converted":Ljava/lang/String;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 38
    invoke-super/range {v0 .. v6}, Landroid/text/method/DialerKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 39
    .local v7, "result":Ljava/lang/CharSequence;
    if-nez v7, :cond_0

    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v7, 0x0

    .line 52
    .end local v7    # "result":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v7

    .line 49
    .restart local v7    # "result":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v1, p2, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_0
.end method
