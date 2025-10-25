.class public final synthetic Lcom/android/billingclient/api/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/e;

.field public final synthetic b:Lc2/j;

.field public final synthetic c:Lc2/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/e;Lc2/j;Lc2/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/e;

    iput-object p2, p0, Lcom/android/billingclient/api/q;->b:Lc2/j;

    iput-object p3, p0, Lcom/android/billingclient/api/q;->c:Lc2/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/q;->a:Lcom/android/billingclient/api/e;

    iget-object v1, p0, Lcom/android/billingclient/api/q;->b:Lc2/j;

    iget-object v2, p0, Lcom/android/billingclient/api/q;->c:Lc2/i;

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/e;->M(Lc2/j;Lc2/i;)V

    return-void
.end method
