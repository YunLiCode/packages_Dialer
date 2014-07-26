.class Lcom/android/dialer/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "phoneCallDetailsHelper"    # Lcom/android/dialer/PhoneCallDetailsHelper;
    .param p2, "phoneNumberHelper"    # Lcom/android/dialer/calllog/PhoneNumberHelper;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/dialer/PhoneCallDetailsHelper;

    .line 49
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    .line 50
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 51
    return-void
.end method
