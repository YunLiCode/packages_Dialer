.class Lcom/android/dialer/calllog/CallLogFragment$1;
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
    .line 142
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 150
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I
    invoke-static {v1, p3}, Lcom/android/dialer/calllog/CallLogFragment;->access$202(Lcom/android/dialer/calllog/CallLogFragment;I)I

    .line 153
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "save_calltype"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "calltype"

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$200(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    .line 157
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$1;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 158
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
    .line 145
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "CallLogFragment"

    const-string v1, "no type selected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
