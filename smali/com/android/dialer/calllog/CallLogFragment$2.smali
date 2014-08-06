.class Lcom/android/dialer/calllog/CallLogFragment$2;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    add-int/lit8 v1, p3, -0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$402(Lcom/android/dialer/calllog/CallLogFragment;I)I

    .line 171
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$400(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    .line 174
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$2;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 175
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "CallLogFragment"

    const-string v1, "no card selected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method
