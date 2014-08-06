.class Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsPreferenceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # invokes: Lcom/android/dialer/list/PhoneFavoriteFragment;->loadContactsPreferences()Z
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1300(Lcom/android/dialer/list/PhoneFavoriteFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # invokes: Lcom/android/dialer/list/PhoneFavoriteFragment;->requestReloadAllContacts()V
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1400(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    .line 191
    :cond_0
    return-void
.end method
